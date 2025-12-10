# Math Tricks Pro

![Math Tricks Pro Banner](video.gif)

Math Games for everyone from kids to adults. Best maths practice game to train your brain & is designed for all ages including kids, girls and boys, adults including parents and grandparents.

Math Tricks Pro is an engaging, offline-first Flutter mobile application that makes learning and practicing mathematics fun and accessible. Whether you're a child mastering multiplication tables or an adult sharpening mental math skills, this app offers a variety of interactive modes to challenge and entertain users of all ages. Built with Flutter for seamless cross-platform performance on Android and iOS.

## Features

- **Test Mode**: Quick quizzes to assess your math knowledge with timed challenges and instant feedback.
- **Train Trick**: Learn and practice clever math shortcuts and tricks to speed up calculations.
- **Table**: Interactive multiplication and division tables with gamified learning for building foundational skills.
- **Puzzle Teasers**: Brain-teasing math puzzles that encourage creative problem-solving and logical thinking.

All features are designed to be offline, ensuring you can practice anywhere, anytime. The app includes vibrant animations, progress tracking, and customizable difficulty levels to keep users motivated.

## Screenshots

*(Add screenshots here showing the home screen, test mode, and puzzle teasers. For now, check out the demo [video.gif](video.gif) for a quick overview!)*

## Technologies Used

- **Flutter**: Cross-platform framework for building natively compiled applications.
- **Dart**: Programming language for clean, efficient code.
- **Offline-First Architecture**: No internet required for core functionality.

## Getting Started

This project is a Flutter application. Follow these steps to get it running on your machine:

### Prerequisites

- Flutter SDK (version 3.0 or higher)
- Dart SDK
- Android Studio or Xcode (for Android/iOS builds)
- Git

### Installation

1. Clone the repository:
   ```
   git clone https://github.com/Ankitkj1999/math_tricks_pro.git
   cd math_tricks_pro
   ```

2. Install dependencies:
   ```
   flutter pub get
   ```

3. Run the app:
   ```
   flutter run
   ```

For building release versions:
- Android: Use the provided `keystore.jks` for signing (see README notes for keytool commands).
- iOS: Ensure Xcode is configured.

### Building for Release

- **Android APK/AAB**:
  ```
  flutter build apk --release
  # Or for App Bundle
  flutter build appbundle --release
  ```

- **iOS IPA**:
  ```
  flutter build ios --release
  ```

## Project Structure

- `lib/`: Core Dart source code (main.dart and feature modules).
- `assets/`: Images, icons, and other static resources.
- `fonts/`: Custom fonts for the app's UI.
- `android/` and `ios/`: Platform-specific configurations.
- `test/`: Unit and widget tests.

## Contributing

Contributions are welcome! Please fork the repo and submit a pull request for any improvements, bug fixes, or new features.

1. Fork the project.
2. Create your feature branch (`git checkout -b feature/AmazingFeature`).
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`).
4. Push to the branch (`git push origin feature/AmazingFeature`).
5. Open a Pull Request.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

*(Note: Add a LICENSE file if not present.)*

## Contact

- **Developer**: Ankit Kumar Jha (@Ankitkj1999 on GitHub)
- **Repository**: [https://github.com/Ankitkj1999/math_tricks_pro](https://github.com/Ankitkj1999/math_tricks_pro)

For support or feedback, open an issue on GitHub or reach out via email.

---

*Happy Math-ing! 🚀*
