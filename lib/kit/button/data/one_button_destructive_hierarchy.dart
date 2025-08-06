part of '../one_button.dart';

enum OneButtonDestructiveHierarchy {
  primary,
  secondary,
  tertiary,
  link,
}

extension OneButtonDestructiveHierarchyExtension
    on OneButtonDestructiveHierarchy {
  Color background({
    required BuildContext context,
    required bool isFocused,
    required bool isPressed,
    required bool isDisabled,
  }) {
    switch (this) {
      case OneButtonDestructiveHierarchy.primary:
        if (isDisabled) {
          return context.color.background(BackgroundColorType.disabled);
        } else if (isPressed) {
          return context.color.utility(UtilityColorType.brand700);
        } else if (isFocused) {
          return context.color.utility(UtilityColorType.brand300);
        }
        return Theme.of(context).colorScheme.primary;
      case OneButtonDestructiveHierarchy.secondary:
        if (isDisabled) {
          return context.color.background(BackgroundColorType.primary);
        } else if (isPressed) {
          return context.color.background(BackgroundColorType.primary);
        } else if (isFocused) {
          return context.color.utility(UtilityColorType.gray50);
        }
        return context.color.background(BackgroundColorType.primary);
      case OneButtonDestructiveHierarchy.tertiary:
      case OneButtonDestructiveHierarchy.link:
        return context.color.background(BackgroundColorType.secondary);
    }
  }

  Color foreground({
    required BuildContext context,
    required bool isFocused,
    required bool isPressed,
    required bool isDisabled,
  }) {
    switch (this) {
      case OneButtonDestructiveHierarchy.primary:
        return OneColors.white;
      case OneButtonDestructiveHierarchy.secondary:
        return context.color.foreground(ForegroundColorType.brandPrimary);
      case OneButtonDestructiveHierarchy.tertiary:
        return context.color.foreground(ForegroundColorType.tertiary);
      case OneButtonDestructiveHierarchy.link:
        return context.color.foreground(ForegroundColorType.tertiaryHover);
    }
  }

  List<BoxShadow> boxShadow(BuildContext context) {
    switch (this) {
      case OneButtonDestructiveHierarchy.primary:
      case OneButtonDestructiveHierarchy.secondary:
        return context.shadow.get(OneShadowSize.skeumorphic);
      case OneButtonDestructiveHierarchy.tertiary:
      case OneButtonDestructiveHierarchy.link:
        return [];
    }
  }

  bool get withBorder {
    switch (this) {
      case OneButtonDestructiveHierarchy.primary:
        return false;
      case OneButtonDestructiveHierarchy.secondary:
      case OneButtonDestructiveHierarchy.tertiary:
      case OneButtonDestructiveHierarchy.link:
        return true;
    }
  }

  Color borderColor(BuildContext context) {
    switch (this) {
      case OneButtonDestructiveHierarchy.primary:
        return Colors.transparent;
      case OneButtonDestructiveHierarchy.secondary:
        return context.color.utility(UtilityColorType.gray300);
      case OneButtonDestructiveHierarchy.tertiary:
      case OneButtonDestructiveHierarchy.link:
        return Colors.red;
    }
  }
}
