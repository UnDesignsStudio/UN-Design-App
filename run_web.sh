#!/bin/bash

echo "🌐 Starting UN Design App on Web..."

# Check if Flutter is installed
if ! command -v flutter &> /dev/null; then
    echo "❌ Flutter is not installed. Please install Flutter first:"
    echo "   https://flutter.dev/docs/get-started/install"
    exit 1
fi

# Get dependencies
echo "📦 Getting dependencies..."
flutter pub get

# Get local IP address
LOCAL_IP=$(ifconfig | grep "inet " | grep -v 127.0.0.1 | awk '{print $2}' | head -n 1)

echo "🚀 Starting Flutter web server..."
echo "📱 Access the app on your phone at: http://$LOCAL_IP:8080"
echo "💻 Or on your computer at: http://localhost:8080"
echo ""
echo "📋 Instructions:"
echo "   1. Make sure your phone and computer are on the same WiFi network"
echo "   2. Open your phone's browser and go to: http://$LOCAL_IP:8080"
echo "   3. The app will load and you can use it on your phone!"
echo ""
echo "⏹️  Press Ctrl+C to stop the server"

# Run Flutter web
flutter run -d web-server --web-port 8080 --web-hostname 0.0.0.0 