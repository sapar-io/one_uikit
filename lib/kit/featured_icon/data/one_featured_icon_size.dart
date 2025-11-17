part of '../one_featured_icon.dart';

/// Featured icon sizes based on Untitled UI Figma Kit
///
/// sm: 32×32px
/// md: 40×40px
/// lg: 48×48px
/// xl: 56×56px
enum OneFeaturedIconSize {
  sm,
  md,
  lg,
  xl,
}

extension OneFeaturedIconSizeExtension on OneFeaturedIconSize {
  /// Container size
  double get size {
    switch (this) {
      case OneFeaturedIconSize.sm:
        return 32;
      case OneFeaturedIconSize.md:
        return 40;
      case OneFeaturedIconSize.lg:
        return 48;
      case OneFeaturedIconSize.xl:
        return 56;
    }
  }

  /// Icon size based on type
  /// Most types use: sm=16, md=20, lg=24, xl=28
  /// Gradient uses: sm/md=14, lg/xl=20
  double iconSize(OneFeaturedIconType type) {
    switch (type) {
      case OneFeaturedIconType.light:
      case OneFeaturedIconType.dark:
      case OneFeaturedIconType.glass:
      case OneFeaturedIconType.modern:
      case OneFeaturedIconType.outline:
        switch (this) {
          case OneFeaturedIconSize.sm:
            return 16;
          case OneFeaturedIconSize.md:
            return 20;
          case OneFeaturedIconSize.lg:
            return 24;
          case OneFeaturedIconSize.xl:
            return 28;
        }
      case OneFeaturedIconType.gradient:
        switch (this) {
          case OneFeaturedIconSize.sm:
          case OneFeaturedIconSize.md:
            return 14;
          case OneFeaturedIconSize.lg:
          case OneFeaturedIconSize.xl:
            return 20;
        }
    }
  }

  /// Border radius for square types (modern, dark, glass)
  /// sm: 6px, md: 8px, lg: 10px, xl: 12px
  double get borderRadius {
    switch (this) {
      case OneFeaturedIconSize.sm:
        return 6;
      case OneFeaturedIconSize.md:
        return 8;
      case OneFeaturedIconSize.lg:
        return 10;
      case OneFeaturedIconSize.xl:
        return 12;
    }
  }

  /// Inner circle size for gradient type
  /// sm: 24px, md: 32px, lg: 36px, xl: 36px
  double get gradientInnerCircleSize {
    switch (this) {
      case OneFeaturedIconSize.sm:
        return 24;
      case OneFeaturedIconSize.md:
        return 32;
      case OneFeaturedIconSize.lg:
        return 36;
      case OneFeaturedIconSize.xl:
        return 36;
    }
  }
}
