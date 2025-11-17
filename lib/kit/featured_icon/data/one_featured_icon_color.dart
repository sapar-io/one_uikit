part of '../one_featured_icon.dart';

/// Featured icon color variants based on Untitled UI Figma Kit
enum OneFeaturedIconColor {
  brand,
  gray,
  error,
  warning,
  success,
}

extension OneFeaturedIconColorExtension on OneFeaturedIconColor {
  /// Get icon foreground color based on type
  Color iconColor(OneFeaturedIconType type, BuildContext context) {
    switch (type) {
      case OneFeaturedIconType.light:
      case OneFeaturedIconType.outline:
        switch (this) {
          case OneFeaturedIconColor.brand:
            return context.color.foreground(ForegroundColorType.brandPrimary);
          case OneFeaturedIconColor.gray:
            return context.color.foreground(ForegroundColorType.tertiary);
          case OneFeaturedIconColor.error:
            return context.color.foreground(ForegroundColorType.errorPrimary);
          case OneFeaturedIconColor.warning:
            return context.color.foreground(ForegroundColorType.warningPrimary);
          case OneFeaturedIconColor.success:
            return context.color.foreground(ForegroundColorType.successPrimary);
        }
      case OneFeaturedIconType.gradient:
      case OneFeaturedIconType.dark:
      case OneFeaturedIconType.glass:
        return OneColors.white;
      case OneFeaturedIconType.modern:
        return context.color.foreground(ForegroundColorType.secondary);
    }
  }

  /// Get background color for light type (circular backgrounds)
  Color lightBackground(BuildContext context) {
    switch (this) {
      case OneFeaturedIconColor.brand:
        return context.color.background(BackgroundColorType.brandSecondary);
      case OneFeaturedIconColor.gray:
        return context.color.background(BackgroundColorType.tertiary);
      case OneFeaturedIconColor.error:
        return context.color.background(BackgroundColorType.errorSecondary);
      case OneFeaturedIconColor.warning:
        return context.color.background(BackgroundColorType.warningSecondary);
      case OneFeaturedIconColor.success:
        return context.color.background(BackgroundColorType.successSecondary);
    }
  }

  /// Get background color for dark type (solid backgrounds)
  Color darkBackground(BuildContext context) {
    switch (this) {
      case OneFeaturedIconColor.brand:
        return context.color.background(BackgroundColorType.brandSolid);
      case OneFeaturedIconColor.gray:
        return context.color.background(BackgroundColorType.secondarySolid);
      case OneFeaturedIconColor.error:
        return context.color.background(BackgroundColorType.errorSolid);
      case OneFeaturedIconColor.warning:
        return context.color.background(BackgroundColorType.warningSolid);
      case OneFeaturedIconColor.success:
        return context.color.background(BackgroundColorType.successSolid);
    }
  }

  /// Get outline/ring color for outline type
  Color outlineColor(BuildContext context) {
    switch (this) {
      case OneFeaturedIconColor.brand:
        return context.color.foreground(ForegroundColorType.brandPrimary);
      case OneFeaturedIconColor.gray:
        return context.color.foreground(ForegroundColorType.tertiary);
      case OneFeaturedIconColor.error:
        return context.color.foreground(ForegroundColorType.errorPrimary);
      case OneFeaturedIconColor.warning:
        return context.color.foreground(ForegroundColorType.warningPrimary);
      case OneFeaturedIconColor.success:
        return context.color.foreground(ForegroundColorType.successPrimary);
    }
  }

  /// Get utility color for gradient outer background (50 shade)
  Color gradientOuterBackground(BuildContext context) {
    switch (this) {
      case OneFeaturedIconColor.brand:
        return context.color.utility(UtilityColorType.brand50);
      case OneFeaturedIconColor.gray:
        return context.color.utility(UtilityColorType.gray50);
      case OneFeaturedIconColor.error:
        return context.color.utility(UtilityColorType.error50);
      case OneFeaturedIconColor.warning:
        return context.color.utility(UtilityColorType.warning50);
      case OneFeaturedIconColor.success:
        return context.color.utility(UtilityColorType.success50);
    }
  }

  /// Get utility color for gradient border (200 shade)
  Color gradientBorder(BuildContext context) {
    switch (this) {
      case OneFeaturedIconColor.brand:
        return context.color.utility(UtilityColorType.brand200);
      case OneFeaturedIconColor.gray:
        return context.color.utility(UtilityColorType.gray200);
      case OneFeaturedIconColor.error:
        return context.color.utility(UtilityColorType.error200);
      case OneFeaturedIconColor.warning:
        return context.color.utility(UtilityColorType.warning200);
      case OneFeaturedIconColor.success:
        return context.color.utility(UtilityColorType.success200);
    }
  }
}
