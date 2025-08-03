# 📱 How to Run UN Design App on Your Phone

## 🚀 Quick Start Options

### Option 1: Web Version (Easiest - No Installation Required)
```bash
./run_web.sh
```
Then open your phone's browser and go to the URL shown in the terminal.

### Option 2: Build Android APK
```bash
./build_app.sh
```
Then transfer the APK to your phone and install it.

### Option 3: Direct Flutter Run
```bash
flutter pub get
flutter run
```

## 📋 Detailed Instructions

### 🌐 Web Version (Recommended for Testing)

1. **Run the web script**:
   ```bash
   ./run_web.sh
   ```

2. **Look for the IP address** in the terminal output (e.g., `http://192.168.1.100:8080`)

3. **On your phone**:
   - Make sure your phone and computer are on the same WiFi network
   - Open your phone's browser (Chrome, Safari, etc.)
   - Go to the URL shown in the terminal
   - The app will load and work just like a native app!

### 📱 Android APK Version

1. **Build the APK**:
   ```bash
   ./build_app.sh
   ```

2. **Transfer to phone**:
   - Copy `build/app/outputs/flutter-apk/app-release.apk` to your phone
   - Or use ADB: `adb install build/app/outputs/flutter-apk/app-release.apk`

3. **Install on phone**:
   - Enable "Install from unknown sources" in Android settings
   - Open the APK file and install

### 🔧 Prerequisites

#### Install Flutter (if not already installed):
1. **Download Flutter**: https://flutter.dev/docs/get-started/install
2. **Add to PATH**: Follow the installation guide for your OS
3. **Verify installation**: `flutter doctor`

#### For Android Development:
1. **Install Android Studio**
2. **Set up Android SDK**
3. **Enable USB debugging** on your phone

#### For iOS Development (Mac only):
1. **Install Xcode**
2. **Set up iOS Simulator** or connect iPhone

## 🎯 What You'll Get

Once running, you'll have access to:

- ✅ **Splash Screen** with animated UN Design logo
- ✅ **Home Screen** with welcome message and CTA
- ✅ **Services Screen** with web design services
- ✅ **Portfolio Screen** with swipeable project gallery
- ✅ **Contact Screen** with form and QR code
- ✅ **Language Toggle** (English/Serbian)
- ✅ **QR Code Generator** (accessible from app header)

## 🆘 Troubleshooting

### "Flutter not found"
- Install Flutter: https://flutter.dev/docs/get-started/install

### "Cannot connect to web version"
- Check that phone and computer are on same WiFi
- Try using computer's IP address instead of localhost

### "APK won't install"
- Enable "Install from unknown sources" in Android settings
- Make sure the APK file is complete and not corrupted

### "App crashes on startup"
- Check Flutter doctor: `flutter doctor`
- Try cleaning and rebuilding: `flutter clean && flutter pub get`

## 📞 Need Help?

If you're still having issues:
1. Check Flutter installation: `flutter doctor`
2. Try the web version first (easiest)
3. Make sure all dependencies are installed: `flutter pub get`

The web version should work immediately and give you the full app experience on your phone! 🎨✨ 