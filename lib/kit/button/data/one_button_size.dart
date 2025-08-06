part of '../one_button.dart';

enum OneButtonSize {
  sm,
  md,
  lg,
  xl,
  xxl,
}

extension ButtonSizeExtension on OneButtonSize {
  EdgeInsetsGeometry get padding {
    switch (this) {
      case OneButtonSize.sm:
        return const EdgeInsets.symmetric(horizontal: 12, vertical: 8);
      case OneButtonSize.md:
        return const EdgeInsets.symmetric(horizontal: 14, vertical: 10);
      case OneButtonSize.lg:
        return const EdgeInsets.symmetric(horizontal: 16, vertical: 10);
      case OneButtonSize.xl:
        return const EdgeInsets.symmetric(horizontal: 18, vertical: 12);
      case OneButtonSize.xxl:
        return const EdgeInsets.symmetric(horizontal: 22, vertical: 16);
    }
  }

  TextStyle textStyle(BuildContext context) {
    switch (this) {
      case OneButtonSize.sm:
      case OneButtonSize.md:
        return context.typography.textSmSemibold;
      case OneButtonSize.lg:
      case OneButtonSize.xl:
        return context.typography.textMdSemibold;
      case OneButtonSize.xxl:
        return context.typography.textLgSemibold;
    }
  }

  double get iconSize {
    switch (this) {
      case OneButtonSize.sm:
      case OneButtonSize.md:
      case OneButtonSize.lg:
      case OneButtonSize.xl:
        return 20.0;
      case OneButtonSize.xxl:
        return 24.0;
    }
  }

  double get spaceBetween {
    switch (this) {
      case OneButtonSize.sm:
      case OneButtonSize.md:
        return 4.0;
      case OneButtonSize.lg:
      case OneButtonSize.xl:
        return 6.0;
      case OneButtonSize.xxl:
        return 10.0;
    }
  }

  double get borderRadius {
    switch (this) {
      case OneButtonSize.sm:
      case OneButtonSize.md:
      case OneButtonSize.lg:
      case OneButtonSize.xl:
        return 8.0;
      case OneButtonSize.xxl:
        return 10.0;
    }
  }
}
