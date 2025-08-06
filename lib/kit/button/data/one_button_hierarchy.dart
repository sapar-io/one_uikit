part of '../one_button.dart';

enum OneButtonHierarchy {
  primary,
  secondaryGray,
  secondaryColor,
  tertiaryGray,
  tertiaryColor,
  linkGray,
  linkColor,
}

extension OneButtonHierarchyExtension on OneButtonHierarchy {
  Color background({
    required BuildContext context,
    required bool isFocused,
    required bool isPressed,
    required bool isDisabled,
  }) {
    switch (this) {
      case OneButtonHierarchy.primary:
        if (isDisabled) {
          return context.color.background(BackgroundColorType.disabled);
        } else if (isPressed) {
          return context.color.utility(UtilityColorType.brand700);
        } else if (isFocused) {
          return context.color.utility(UtilityColorType.brand300);
        }
        return Theme.of(context).colorScheme.primary;
      case OneButtonHierarchy.secondaryGray:
        if (isDisabled) {
          return context.color.background(BackgroundColorType.primary);
        } else if (isPressed) {
          return context.color.background(BackgroundColorType.primary);
        } else if (isFocused) {
          return context.color.utility(UtilityColorType.gray50);
        }
        return context.color.background(BackgroundColorType.primary);
      case OneButtonHierarchy.secondaryColor:
        if (isDisabled) {
          return context.color.background(BackgroundColorType.primary);
        } else if (isPressed) {
          return context.color.background(BackgroundColorType.primary);
        } else if (isFocused) {
          return context.color.utility(UtilityColorType.brand50);
        }
        return context.color.background(BackgroundColorType.primary);
      case OneButtonHierarchy.tertiaryGray:
        return context.color.background(BackgroundColorType.secondary);
      case OneButtonHierarchy.tertiaryColor:
        return context.color.background(BackgroundColorType.secondary);
      case OneButtonHierarchy.linkGray:
        return Colors.transparent;
      case OneButtonHierarchy.linkColor:
        return Colors.transparent;
    }
  }

  Color foreground({
    required BuildContext context,
    required bool isFocused,
    required bool isPressed,
    required bool isDisabled,
    required bool isActive,
  }) {
    switch (this) {
      case OneButtonHierarchy.primary:
        return OneColors.white;
      case OneButtonHierarchy.secondaryGray:
        return context.color.foreground(ForegroundColorType.secondaryHover);
      case OneButtonHierarchy.secondaryColor:
        return context.color.foreground(ForegroundColorType.brandPrimary);
      case OneButtonHierarchy.tertiaryGray:
        return context.color.foreground(ForegroundColorType.tertiary);
      case OneButtonHierarchy.tertiaryColor:
        return context.color.foreground(ForegroundColorType.brandPrimary);
      case OneButtonHierarchy.linkGray:
        if (isActive) {
          return context.color.foreground(ForegroundColorType.primary);
        }
        return context.color.foreground(isFocused
            ? ForegroundColorType.primary
            : ForegroundColorType.tertiary);
      case OneButtonHierarchy.linkColor:
        return context.color.foreground(ForegroundColorType.tertiaryHover);
    }
  }

  List<BoxShadow> boxShadow(BuildContext context) {
    switch (this) {
      case OneButtonHierarchy.primary:
      case OneButtonHierarchy.secondaryGray:
      case OneButtonHierarchy.secondaryColor:
        return context.shadow.get(OneShadowSize.skeumorphic);
      case OneButtonHierarchy.tertiaryGray:
      case OneButtonHierarchy.tertiaryColor:
      case OneButtonHierarchy.linkGray:
      case OneButtonHierarchy.linkColor:
        return [];
    }
  }

  bool get withBorder {
    switch (this) {
      case OneButtonHierarchy.primary:
      case OneButtonHierarchy.linkGray:
      case OneButtonHierarchy.linkColor:
        return false;
      case OneButtonHierarchy.secondaryGray:
      case OneButtonHierarchy.secondaryColor:
      case OneButtonHierarchy.tertiaryGray:
      case OneButtonHierarchy.tertiaryColor:
        return true;
    }
  }

  Color borderColor(BuildContext context) {
    switch (this) {
      case OneButtonHierarchy.primary:
        return Colors.transparent;
      case OneButtonHierarchy.secondaryGray:
        return context.color.utility(UtilityColorType.gray300);
      case OneButtonHierarchy.secondaryColor:
        return context.color.utility(UtilityColorType.brand300);
      case OneButtonHierarchy.tertiaryGray:
      case OneButtonHierarchy.tertiaryColor:
      case OneButtonHierarchy.linkGray:
      case OneButtonHierarchy.linkColor:
        return Colors.red;
    }
  }
}
