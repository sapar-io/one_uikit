## 0.2.2

* 🔧 **BREAKING**: Aligned typography system with Untitled UI Figma Kit specifications
* Removed non-standard font weights: Light (w300) and Black (w900)
* Now supports only Figma-specified weights: Regular (400), Medium (500), Semibold (600), Bold (700)
* Removed textXxs style (13px) - not part of Figma specification
* Added comprehensive documentation comments for all 12 text styles
* All typography styles now include font size, line height, and letter spacing from Figma
* Set fontFamily to 'Inter' to match Figma typography system
* Typography now includes 6 Display styles (2xl to xs) and 5 Text styles (xl to xs)

## 0.2.1

* 📝 **IMPROVED**: Enhanced color variables with comprehensive Figma documentation comments
* Added detailed usage descriptions for all Text color variables (20+ variables)
* Added detailed usage descriptions for all Border color variables (including success/warning variants)
* Added detailed usage descriptions for all Foreground color variables (30+ variables)
* Added detailed usage descriptions for all Background color variables (40+ variables)
* Organized Utility colors with clear section headers (Gray, Error, Warning, Success, Secondary colors)
* All color variables now include Light/Dark mode values in comments
* Removed duplicate border variable definitions
* Improved code documentation for better developer experience

## 0.2.0

* ✨ **NEW**: Added complete gradient system with 112 gradients from Untitled UI Figma Kit
* Added 14 Gray gradients for neutral backgrounds
* Added 7 Brand gradients for primary color themes
* Added 91 Linear gradients for colorful backgrounds and accents
* Added OneGradientType enum for type-safe gradient usage
* Added GradientExtension for convenient context-based access
* Fixed gradients to use OneColors references instead of hardcoded HEX values
* Changed Gray and Brand gradients from static const to static final for runtime color access
* Created comprehensive GRADIENTS.md documentation with examples
* Updated README with gradient usage examples

## 0.1.6

* 🎨 **BREAKING**: Updated color system to match Untitled UI Figma Kit specifications
* Fixed Gray (light mode) color values to match Figma exactly
* Fixed Gray (dark mode) color values to match Figma exactly
* Added all missing secondary colors to OneColorsVariables (yellow, rose, violet, teal, cyan, moss, greenLight, green)
* Added comprehensive color documentation in COLORS.md
* Updated README with link to color documentation
* All colors now have exact WCAG contrast ratios from Figma
* Improved dark mode color support with proper semantic mappings

## 0.1.2

* Fix icon asset paths to work correctly with packages
* Icons now use 'packages/one_uikit/assets/icons/' path format
* Resolves "Unable to load asset" errors in external projects

## 0.1.1

* Add comprehensive icons usage documentation (ICONS_USAGE.md)
* Fix assets configuration in pubspec.yaml
* Improve package structure for better asset management

## 0.1.0

* Initial release with comprehensive UI components
* Icon system with 1000+ SVG icons organized by categories
* Color system with theme support
* Typography system
* Button components with multiple variants
* Badge, Card, Empty state components
* Field components (text, phone, dropdown, multi-dropdown)
* Featured icon component
* Various utility widgets
