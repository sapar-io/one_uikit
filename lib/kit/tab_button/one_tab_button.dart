import 'package:flutter/material.dart';
import 'package:one_uikit/one_uikit.dart';

part 'data/tab_button_orientation.dart';
part 'data/tab_button_size.dart';
part 'data/tab_button_type.dart';
part 'data/tab_button_view_model.dart';

class OneTabButton extends StatefulWidget {
  const OneTabButton({
    super.key,
    required this.viewModel,
  });

  final TabButtonViewModel viewModel;

  @override
  State<OneTabButton> createState() => _OneTabButtonState();
}

class _OneTabButtonState extends State<OneTabButton> {
  bool _isHovered = false;
  bool _isFocused = false;

  @override
  Widget build(BuildContext context) {
    final vm = widget.viewModel;

    // Determine if we need container wrapper (for buttonWhite and buttonMinimal)
    final needsContainer =
        vm.type == TabButtonType.buttonWhite ||
        vm.type == TabButtonType.buttonMinimal;

    Widget tabButton = _buildTabButton(context);

    if (needsContainer) {
      tabButton = _buildContainerWrapper(context, tabButton);
    }

    return tabButton;
  }

  Widget _buildContainerWrapper(BuildContext context, Widget child) {
    final vm = widget.viewModel;
    final isMinimal = vm.type == TabButtonType.buttonMinimal;

    return Container(
      decoration: BoxDecoration(
        color: context.color.background(BackgroundColorType.secondaryAlt),
        borderRadius: BorderRadius.circular(isMinimal ? OneRadius.lg : OneRadius.md),
        border: Border.all(
          color: context.color.border(BorderColorType.primary),
          width: 1,
        ),
      ),
      child: child,
    );
  }

  Widget _buildTabButton(BuildContext context) {
    final vm = widget.viewModel;

    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: Focus(
        onFocusChange: (focused) => setState(() => _isFocused = focused),
        child: GestureDetector(
          onTap: vm.isDisabled ? null : vm.onTap,
          child: AbsorbPointer(
            absorbing: vm.isDisabled,
            child: Container(
              padding: vm.size.padding,
              decoration: _getDecoration(context),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    vm.text,
                    style: vm.size.textStyle(context).copyWith(
                          color: _getTextColor(context),
                        ),
                  ),
                  if (vm.badge != null) ...[
                    SizedBox(width: vm.size.badgeSpacing),
                    OneBadge(viewModel: vm.badge!),
                  ],
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  BoxDecoration _getDecoration(BuildContext context) {
    final vm = widget.viewModel;
    final isActive = vm.isActive;
    final isHovered = _isHovered && !vm.isDisabled;
    final isFocused = _isFocused && !vm.isDisabled;

    // For underline and vertical line types
    if (vm.type == TabButtonType.underline) {
      return BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: isActive
                ? context.color.foreground(ForegroundColorType.brandPrimary)
                : Colors.transparent,
            width: 2,
          ),
        ),
      );
    }

    if (vm.type == TabButtonType.verticalLine) {
      return BoxDecoration(
        border: Border(
          left: BorderSide(
            color: isActive
                ? context.color.foreground(ForegroundColorType.brandPrimary)
                : Colors.transparent,
            width: 2,
          ),
        ),
      );
    }

    // For button types (brand, gray, white, minimal)
    Color? backgroundColor;
    Color? borderColor;
    double borderWidth = 0;

    switch (vm.type) {
      case TabButtonType.buttonBrand:
        if (isActive) {
          backgroundColor = context.color.background(BackgroundColorType.brandPrimaryAlt);
        } else if (isHovered) {
          backgroundColor = context.color.background(BackgroundColorType.brandSecondary);
        }
        break;

      case TabButtonType.buttonGray:
        if (isActive) {
          backgroundColor = context.color.background(BackgroundColorType.active);
        } else if (isHovered) {
          backgroundColor = context.color.background(BackgroundColorType.tertiary);
        }
        break;

      case TabButtonType.buttonWhite:
      case TabButtonType.buttonMinimal:
        if (isActive) {
          backgroundColor = context.color.background(BackgroundColorType.primaryAlt);
        } else if (isHovered) {
          backgroundColor = context.color.background(BackgroundColorType.tertiary);
        }
        break;

      default:
        break;
    }

    // Focus ring
    if (isFocused) {
      borderColor = context.color.utility(UtilityColorType.brand500);
      borderWidth = 2;
    }

    return BoxDecoration(
      color: backgroundColor,
      borderRadius: BorderRadius.circular(OneRadius.md),
      border: borderWidth > 0
          ? Border.all(color: borderColor!, width: borderWidth)
          : null,
    );
  }

  Color _getTextColor(BuildContext context) {
    final vm = widget.viewModel;

    if (vm.isDisabled) {
      return context.color.foreground(ForegroundColorType.disabled);
    }

    // For button brand type
    if (vm.type == TabButtonType.buttonBrand) {
      if (vm.isActive) {
        return context.color.foreground(ForegroundColorType.brandPrimary);
      }
      return context.color.foreground(ForegroundColorType.tertiary);
    }

    // For underline and vertical line types
    if (vm.type == TabButtonType.underline ||
        vm.type == TabButtonType.verticalLine) {
      if (vm.isActive) {
        return context.color.foreground(ForegroundColorType.brandPrimary);
      }
      return context.color.foreground(ForegroundColorType.tertiary);
    }

    // For all other types
    if (vm.isActive) {
      return context.color.foreground(ForegroundColorType.primary);
    }

    return context.color.foreground(ForegroundColorType.tertiary);
  }
}

extension TabButtonSizeX on TabButtonSize {
  EdgeInsets get padding {
    switch (this) {
      case TabButtonSize.sm:
        return const EdgeInsets.symmetric(horizontal: 12, vertical: 8);
      case TabButtonSize.md:
        return const EdgeInsets.symmetric(horizontal: 14, vertical: 10);
    }
  }

  double get badgeSpacing {
    switch (this) {
      case TabButtonSize.sm:
        return 8;
      case TabButtonSize.md:
        return 8;
    }
  }

  TextStyle textStyle(BuildContext context) {
    switch (this) {
      case TabButtonSize.sm:
        return context.typography.textSmMedium;
      case TabButtonSize.md:
        return context.typography.textSmMedium;
    }
  }
}
