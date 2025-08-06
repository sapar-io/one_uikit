# One UI Kit

A comprehensive Flutter UI Kit with reusable components, icons, and utilities for 1APP project.

## Features

- 🎨 **Rich Icon Collection** - 1000+ SVG icons organized by categories
- 🧩 **Reusable Components** - Custom widgets for common UI patterns
- 🔧 **Utility Extensions** - Helper methods for common tasks
- �� **Error Handling** - Built-in error display widgets
- �� **SnackBar Helpers** - Easy-to-use notification system

## Getting started

Add this to your package's `pubspec.yaml` file:

```yaml
dependencies:
  one_uikit: ^0.0.1
```

## Usage

### Import the package

```dart
import 'package:one_uikit/one_uikit.dart';
```

### Show SnackBar notifications

```dart
// Success message
context.showSnackBar(message: 'Operation completed successfully!');

// Error message
context.showSnackBar(
  message: 'Something went wrong!', 
  isError: true
);
```

### Display errors

```dart
OneError(
  error: exception,
  stackTrace: stackTrace,
);
```

### Use icons

```dart
// Icons are available in assets/icons/ directory
// You can use them with SvgPicture.asset()
SvgPicture.asset('packages/one_uikit/assets/icons/general/activity.svg')
```

## Available Components

- **OneError** - Error display widget with logging
- **SnackBar Helper** - Extension methods for showing notifications

## Available Icons

The package includes 1000+ SVG icons organized in categories:

- �� **Alerts** - Error, warning, and notification icons
- ➡️ **Arrows** - Directional and navigation icons  
- 📊 **Charts** - Data visualization icons
- 💬 **Communication** - Message and phone icons
- 💻 **Development** - Code and technical icons
- ✏️ **Editor** - Text editing and formatting icons
- 🎓 **Education** - Learning and academic icons
- 📁 **Files** - Document and file management icons
- 💰 **Finance** - Banking and financial icons
- 🌐 **General** - Common and utility icons
- 🖼️ **Images** - Photo and media icons
- 📐 **Layout** - Design and layout icons
- 🗺️ **Maps** - Location and transportation icons
- 🎵 **Media** - Audio and video icons
- 🔒 **Security** - Authentication and security icons
- 🔷 **Shapes** - Geometric and design icons
- 🌍 **Social** - Social media and networking icons
- ⏰ **Time** - Clock and schedule icons
- 👥 **Users** - User and profile icons
- 🌤️ **Weather** - Weather and climate icons

## Additional information

- **GitHub**: https://github.com/yourusername/one_uikit
- **Issues**: https://github.com/yourusername/one_uikit/issues
- **Documentation**: https://github.com/yourusername/one_uikit#readme

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.