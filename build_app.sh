#!/bin/bash

echo "🚀 Building UN Design App for Android..."

# Check if Flutter is installed
if ! command -v flutter &> /dev/null; then
    echo "❌ Flutter is not installed. Please install Flutter first:"
    echo "   https://flutter.dev/docs/get-started/install"
    exit 1
fi

# Get dependencies
echo "📦 Getting dependencies..."
flutter pub get

# Build APK
echo "🔨 Building APK..."
flutter build apk --release

# Check if build was successful
if [ -f "build/app/outputs/flutter-apk/app-release.apk" ]; then
    echo "✅ Build successful!"
    echo "📱 APK location: build/app/outputs/flutter-apk/app-release.apk"
    echo ""
    echo "📋 To install on your phone:"
    echo "   1. Transfer the APK to your phone"
    echo "   2. Enable 'Install from unknown sources' in settings"
    echo "   3. Open the APK file and install"
    echo ""
    echo "🔗 Or use ADB to install directly:"
    echo "   adb install build/app/outputs/flutter-apk/app-release.apk"
else
    echo "❌ Build failed. Please check the error messages above."
fi 