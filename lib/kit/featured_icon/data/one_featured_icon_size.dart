part of '../one_featured_icon.dart';

enum OneFeaturedIconSize {
  sm,
  md,
  lg,
  xl,
}

extension OneFeaturedIconSizeExtension on OneFeaturedIconSize {
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
            return 16;
          case OneFeaturedIconSize.lg:
          case OneFeaturedIconSize.xl:
            return 20;
        }
    }
  }

  double borderRadius(OneFeaturedIconType type) {
    switch (this) {
      case OneFeaturedIconSize.sm:
        return OneRadius.sm;
      case OneFeaturedIconSize.md:
        return OneRadius.md;
      case OneFeaturedIconSize.lg:
        return OneRadius.lg;
      case OneFeaturedIconSize.xl:
        return OneRadius.xl;
    }
  }
}
