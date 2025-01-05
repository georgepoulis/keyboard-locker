//
//  KeyboardLockerApp.swift
//  KeyboardLocker
//
//  Created by George Poulis on 5/1/25.
//
//
import SwiftUI
import Carbon

@main
struct KeyboardLockerApp: App {
    @NSApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    var body: some Scene {
        MenuBarExtra("KeyboardLocker", systemImage: "lock.fill") {
            Button("Lock Keyboard") {
                appDelegate.lockKeyboard()
            }
            Button("Unlock Keyboard") {
                appDelegate.unlockKeyboard()
            }
            Divider()
            Button("Quit") {
                NSApplication.shared.terminate(nil)
            }
        }
    }
}

class AppDelegate: NSObject, NSApplicationDelegate {
    var eventTap: CFMachPort?

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // set to accessory so it doesn't appear on the Dock
        NSApp.setActivationPolicy(.accessory)
    }

    func lockKeyboard() {
        if eventTap == nil {
            let eventMask = CGEventMask(1 << CGEventType.keyDown.rawValue | 1 << CGEventType.flagsChanged.rawValue | 1 << CGEventType.keyUp.rawValue)
            eventTap = CGEvent.tapCreate(tap: .cghidEventTap,
                                         place: .headInsertEventTap,
                                         options: .defaultTap,
                                         eventsOfInterest: eventMask,
                                         callback: { _, _, _,_  in return nil },
                                         userInfo: nil)
            if let eventTap = eventTap {
                let runLoopSource = CFMachPortCreateRunLoopSource(kCFAllocatorDefault, eventTap, 0)!
                CFRunLoopAddSource(CFRunLoopGetCurrent(), runLoopSource, .commonModes)
                CGEvent.tapEnable(tap: eventTap, enable: true)
            }
        }
    }

    func unlockKeyboard() {
        if let eventTap = eventTap {
            CGEvent.tapEnable(tap: eventTap, enable: false)
            CFMachPortInvalidate(eventTap)
            self.eventTap = nil
        }
    }
}

