part of '../one_nav_icon.dart';

/// Navigation icon colors
enum OneNavIconColor {
  brand,
  gray,
  success,
}

extension OneNavIconColorExtension on OneNavIconColor {
  /// Get light background color
  Color lightBackground(BuildContext context) {
    switch (this) {
      case OneNavIconColor.brand:
        return context.color.background(BackgroundColorType.brandPrimary);
      case OneNavIconColor.gray:
        return context.color.background(BackgroundColorType.tertiary);
      case OneNavIconColor.success:
        return context.color.background(BackgroundColorType.successSecondary);
    }
  }

  /// Get dark background color
  Color darkBackground(BuildContext context) {
    switch (this) {
      case OneNavIconColor.brand:
        return context.color.background(BackgroundColorType.brandSolid);
      case OneNavIconColor.gray:
        return context.color.background(BackgroundColorType.secondarySolid);
      case OneNavIconColor.success:
        return context.color.background(BackgroundColorType.successSolid);
    }
  }

  /// Get icon color for light type
  Color lightIconColor(BuildContext context) {
    switch (this) {
      case OneNavIconColor.brand:
        return context.color.foreground(ForegroundColorType.brandPrimary);
      case OneNavIconColor.gray:
        return context.color.foreground(ForegroundColorType.tertiary);
      case OneNavIconColor.success:
        return context.color.foreground(ForegroundColorType.successPrimary);
    }
  }

  /// Get outline color
  Color outlineColor(BuildContext context) {
    switch (this) {
      case OneNavIconColor.brand:
        return context.color.utility(UtilityColorType.brand600);
      case OneNavIconColor.gray:
        return context.color.utility(UtilityColorType.gray500);
      case OneNavIconColor.success:
        return context.color.utility(UtilityColorType.success600);
    }
  }
}
