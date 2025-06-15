# Bel Home UI

A Flutter mobile application implementing the home screen design from the provided Figma link.

## Prerequisites

- Flutter SDK (latest stable version)
- Android Studio (for Android builds)
- Xcode (for iOS builds)
- Git

## Setup Instructions

1. Clone the repository:
```bash
git clone [https://github.com/Asfemi/bel_home_ui]
cd bel_home_ui
```

2. Install dependencies:
```bash
flutter pub get
```

## Building the App

### For Android (Debug Build)
1. Open the project in Android Studio
2. Select a debug configuration
3. Click on "Run" or press Shift + F10
4. The debug APK will be generated in `build/app/outputs/flutter-apk/app-debug.apk`

### For iOS (Debug Build)
1. Open the project in Xcode
2. Select your development team in signing & capabilities
3. Select a simulator or connected device
4. Click on "Run" or press Cmd + R
5. The debug build will be installed on the selected device/simulator

## Features
- Modern UI implementation based on Figma design
- Smooth animations and transitions
- Responsive layout
- Platform-specific optimizations

## Project Structure
- `lib/` - Contains all the Dart code
  - `core/` - Core utilities and constants
  - `features/` - Feature-specific code
  - `app/` - App-wide widgets and configurations

##debug builds
- 'builds/'
  - 'android/' - contains the android bundle
  - 'ios/' - contains the ios bundle

## Notes
- This is a debug build as per assessment requirements
- Animations have been implemented to enhance user experience
- The app follows Flutter best practices and design patterns
