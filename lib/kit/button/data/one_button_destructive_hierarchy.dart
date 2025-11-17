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
          return context.color.utility(UtilityColorType.error700);
        } else if (isFocused) {
          return context.color.utility(UtilityColorType.error600);
        }
        return context.color.utility(UtilityColorType.error600);
      case OneButtonDestructiveHierarchy.secondary:
        if (isDisabled) {
          return context.color.background(BackgroundColorType.primary);
        } else if (isPressed) {
          return context.color.utility(UtilityColorType.error50);
        } else if (isFocused) {
          return context.color.utility(UtilityColorType.error50);
        }
        return context.color.utility(UtilityColorType.error50);
      case OneButtonDestructiveHierarchy.tertiary:
        if (isDisabled) {
          return Colors.transparent;
        } else if (isPressed) {
          return context.color.utility(UtilityColorType.error50);
        } else if (isFocused) {
          return context.color.utility(UtilityColorType.error50);
        }
        return Colors.transparent;
      case OneButtonDestructiveHierarchy.link:
        return Colors.transparent;
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
        if (isDisabled) {
          return context.color.foreground(ForegroundColorType.disabled);
        }
        return OneColors.white;
      case OneButtonDestructiveHierarchy.secondary:
        if (isDisabled) {
          return context.color.foreground(ForegroundColorType.disabled);
        } else if (isPressed) {
          return context.color.utility(UtilityColorType.error700);
        } else if (isFocused) {
          return context.color.utility(UtilityColorType.error700);
        }
        return context.color.utility(UtilityColorType.error600);
      case OneButtonDestructiveHierarchy.tertiary:
        if (isDisabled) {
          return context.color.foreground(ForegroundColorType.disabled);
        } else if (isPressed) {
          return context.color.utility(UtilityColorType.error700);
        } else if (isFocused) {
          return context.color.utility(UtilityColorType.error700);
        }
        return context.color.utility(UtilityColorType.error600);
      case OneButtonDestructiveHierarchy.link:
        if (isDisabled) {
          return context.color.foreground(ForegroundColorType.disabled);
        }
        return context.color.utility(UtilityColorType.error600);
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
        return context.color.utility(UtilityColorType.error200);
      case OneButtonDestructiveHierarchy.tertiary:
      case OneButtonDestructiveHierarchy.link:
        return Colors.transparent;
    }
  }
}
