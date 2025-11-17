part of '../one_nav_icon.dart';

/// Navigation icon sizes
enum OneNavIconSize {
  sm, // 20px
  md, // 24px
  lg, // 28px
  xl, // 32px
}

extension OneNavIconSizeExtension on OneNavIconSize {
  /// Container size
  double get size {
    switch (this) {
      case OneNavIconSize.sm:
        return 20;
      case OneNavIconSize.md:
        return 24;
      case OneNavIconSize.lg:
        return 28;
      case OneNavIconSize.xl:
        return 32;
    }
  }

  /// Icon size
  double get iconSize {
    switch (this) {
      case OneNavIconSize.sm:
        return 10;
      case OneNavIconSize.md:
        return 12;
      case OneNavIconSize.lg:
        return 14;
      case OneNavIconSize.xl:
        return 16;
    }
  }

  /// Border width for outline type
  double get outlineBorderWidth {
    switch (this) {
      case OneNavIconSize.sm:
        return 1.67;
      case OneNavIconSize.md:
        return 2;
      case OneNavIconSize.lg:
        return 2.33;
      case OneNavIconSize.xl:
        return 2.67;
    }
  }
}
