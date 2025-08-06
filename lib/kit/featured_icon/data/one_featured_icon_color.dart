part of '../one_featured_icon.dart';

enum OneFeaturedIconColor {
  brand,
  gray,
  error,
  warning,
  success,
}

extension OneFeaturedIconColorExtension on OneFeaturedIconColor {
  Color color(OneFeaturedIconType type, BuildContext context) {
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
}
