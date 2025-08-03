# UN Design Mobile App

A modern, minimalist Flutter mobile app for UN Design agency, inspired by the elegant design of surgedesign.co. This app showcases web design services with a luxury dark theme and smooth animations.

## Features

- **Modern Dark Theme**: Elegant dark design with cyan accent colors
- **Smooth Animations**: Beautiful transitions and micro-interactions throughout the app
- **Multi-language Support**: English and Serbian localization
- **Responsive Design**: Optimized for various screen sizes
- **Portfolio Gallery**: Swipeable image carousel with project details
- **Contact Form**: Functional contact form with validation
- **Service Showcase**: Comprehensive list of web design services

## Screens

1. **Splash Screen**: Animated logo and loading screen
2. **Home Screen**: Welcome message and call-to-action
3. **Services Screen**: List of web design services
4. **Portfolio Screen**: Swipeable project gallery
5. **Contact Screen**: Contact form and company information

## Tech Stack

- **Framework**: Flutter 3.0+
- **State Management**: Provider
- **Localization**: Flutter Localizations
- **UI Components**: Custom widgets with Material Design 3
- **Animations**: Flutter Animation Controller
- **Storage**: Shared Preferences for language settings

## Getting Started

### Prerequisites

- Flutter SDK (3.0.0 or higher)
- Dart SDK (3.0.0 or higher)
- Android Studio / VS Code
- Android Emulator or iOS Simulator

### Installation

1. Clone the repository:
```bash
git clone <repository-url>
cd un_design_app
```

2. Install dependencies:
```bash
flutter pub get
```

3. Run the app:
```bash
flutter run
```

### Project Structure

```
lib/
├── main.dart                 # App entry point
├── providers/
│   └── language_provider.dart # Language state management
├── screens/
│   ├── splash_screen.dart    # Splash screen
│   ├── main_screen.dart      # Main navigation screen
│   ├── home_screen.dart      # Home screen
│   ├── services_screen.dart  # Services screen
│   ├── portfolio_screen.dart # Portfolio screen
│   └── contact_screen.dart   # Contact screen
├── utils/
│   ├── app_theme.dart        # Theme configuration
│   └── app_localizations.dart # Localization strings
└── widgets/
    └── language_selector.dart # Language switcher widget
```

## Customization

### Colors
The app uses a custom color palette defined in `lib/utils/app_theme.dart`:
- Primary: Dark gray (#1A1A1A)
- Secondary: Lighter gray (#2A2A2A)
- Accent: Cyan (#00D4FF)
- Text: White and gray variations

### Fonts
The app uses Inter font family for a modern, clean look. Font weights and sizes are configured in the theme.

### Localization
Add new languages by:
1. Adding translations to `lib/utils/app_localizations.dart`
2. Updating the language provider
3. Adding locale support in `main.dart`

## Dependencies

```yaml
dependencies:
  flutter:
    sdk: flutter
  flutter_localizations:
    sdk: flutter
  google_fonts: ^6.1.0
  provider: ^6.1.1
  shared_preferences: ^2.2.2
  smooth_page_indicator: ^1.1.0
  url_launcher: ^6.2.1
```

## Features in Detail

### Language Toggle
- Switch between English and Serbian
- Persistent language selection
- Real-time UI updates

### Portfolio Gallery
- Swipeable image carousel
- Project details with technology tags
- Modal view for all projects

### Contact Form
- Form validation
- Loading states
- Success feedback
- Placeholder email functionality

### Smooth Animations
- Page transitions
- Fade and slide animations
- Loading indicators
- Micro-interactions

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Add tests if applicable
5. Submit a pull request

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Contact

For questions or support, please contact:
- Email: hello@undesign.com
- Phone: +1 (555) 123-4567
- Location: Belgrade, Serbia

---

Built with ❤️ by UN Design Team 