part of '../one_empty.dart';

enum EmptyHierarchy {
  sm,
  md,
  lg,
}

extension EmptyHierarchyExtension on EmptyHierarchy {
  TextStyle titleStyle(BuildContext context) {
    switch (this) {
      case EmptyHierarchy.sm:
        return context.typography.textMdSemibold.copyWith(
            color: context.color.foreground(ForegroundColorType.primary));
      case EmptyHierarchy.md:
        return context.typography.textLgSemibold.copyWith(
            color: context.color.foreground(ForegroundColorType.primary));
      case EmptyHierarchy.lg:
        return context.typography.textXlSemibold.copyWith(
            color: context.color.foreground(ForegroundColorType.primary));
    }
  }

  TextStyle subtitleStyle(BuildContext context) {
    switch (this) {
      case EmptyHierarchy.sm:
        return context.typography.textSmRegular.copyWith(
            color: context.color.foreground(ForegroundColorType.tertiary));
      case EmptyHierarchy.md:
        return context.typography.textSmRegular.copyWith(
            color: context.color.foreground(ForegroundColorType.tertiary));
      case EmptyHierarchy.lg:
        return context.typography.textMdRegular.copyWith(
            color: context.color.foreground(ForegroundColorType.tertiary));
    }
  }

  double get iconAndTitleSpacing {
    switch (this) {
      case EmptyHierarchy.sm:
        return OneSpace.s16;
      case EmptyHierarchy.md:
        return OneSpace.s20;
      case EmptyHierarchy.lg:
        return OneSpace.s20;
    }
  }

  double get titleAndSubtitleSpacing {
    switch (this) {
      case EmptyHierarchy.sm:
        return OneSpace.s4;
      case EmptyHierarchy.md:
        return OneSpace.s4;
      case EmptyHierarchy.lg:
        return OneSpace.s8;
    }
  }

  double get subtitleAndButtonSpacing {
    switch (this) {
      case EmptyHierarchy.sm:
        return OneSpace.s24;
      case EmptyHierarchy.md:
        return OneSpace.s32;
      case EmptyHierarchy.lg:
        return OneSpace.s32;
    }
  }
}
