# KeyboardLocker

**KeyboardLocker** is an experimental macOS menu bar app that temporarily disables keyboard input. This project started as a personal solution to clean my keyboard without triggering random actions – and became a fun way to learn Swift and macOS development! 🚀

## ✨ Features
- 🔒 **Lock Keyboard:** Disable all keyboard input.
- 🔓 **Unlock Keyboard:** Re-enable keyboard input.
- 🧹 **Menu Bar Integration:** Simple menu bar app to lock/unlock the keyboard.
- 🫥 **Invisible in Dock:** Stays hidden from the Dock – lives in the menu bar only.

## 🛠️ Why I Built This
I often hit random keys while cleaning my keyboard. This app allows me to lock it temporarily and avoid any accidental chaos. Plus, I wanted to dive into macOS app development with SwiftUI. 😄

## 🚀 How to Use
1. Clone this repository:
   ```bash
   git clone https://github.com/georgepoulis/keyboard-locker.git
   ```
2. Open the project in **Xcode**.
3. **Build and Run** the app.
4. A lock 🔒 icon will appear in your **menu bar**. Click to lock/unlock the keyboard.

## 📥 Installation
- **For Developers:** Clone and build from source.
- **For Friends:** Soon will be exported.
- **App Store:** Not yet there. There are other applications already that achieve similar things. If there's interest I will upload it.

## 🧩 Requirements
- **macOS 12+**
- **Xcode 14+**

## ⚠️ Known Limitations
- ⌨️ The app locks keyboard input only (mouse input is unaffected).
- 🛡️ Requires accessibility permissions to intercept keyboard events.

## 🔐 Accessibility Permissions
To allow the app to lock your keyboard, you need to grant accessibility permissions:
1. Open **System Preferences > Security & Privacy > Privacy > Accessibility**.
2. Add the app and allow it to control your computer.

## 🤝 Contributing
I welcome contributions, suggestions, or pull requests. Feel free to fork this project and play around! 😊

## 📜 License
Not existent. 

---

*Built for fun and learning. May not handle all edge cases.*


