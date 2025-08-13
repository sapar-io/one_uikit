import 'package:flutter/material.dart';
import 'package:one_uikit/one_uikit.dart';

class OneCard extends StatelessWidget {
  const OneCard({
    super.key,
    required this.child,
    this.onTap,
    this.onDoubleTap,
    this.onLongPress,
    this.withShadow = false,
    this.padding,
    this.isSelected = false,
    this.borderColor,
    this.borderRadius,
  });

  final Widget child;
  final VoidCallback? onTap;
  final VoidCallback? onDoubleTap;
  final VoidCallback? onLongPress;
  final bool withShadow;
  final EdgeInsets? padding;
  final bool isSelected;
  final Color? borderColor;
  final double? borderRadius;

  @override
  Widget build(BuildContext context) {
    return OneAdaptive(
      desktop: (_) => _buildCard(
        context: context,
        padding: padding ?? const EdgeInsets.all(OneGrid.desktopPadding),
      ),
      tablet: (_) => _buildCard(
        context: context,
        padding: padding ??
            const EdgeInsets.symmetric(
              vertical: OneGrid.mobileVerticalPadding,
              horizontal: OneGrid.mobilePadding,
            ),
      ),
      mobile: (_) => _buildCard(
        context: context,
        padding: padding ??
            const EdgeInsets.symmetric(
              vertical: OneGrid.mobileVerticalPadding,
              horizontal: OneGrid.mobilePadding,
            ),
      ),
    );
  }

  Widget _buildCard({
    required BuildContext context,
    required EdgeInsets padding,
  }) {
    final radius = borderRadius ?? OneRadius.xl;

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        boxShadow: withShadow ? context.shadow.get(OneShadowSize.xs) : null,
        border: isSelected
            ? Border.all(
                color: borderColor ??
                    context.color.background(BackgroundColorType.brandSolid),
                width: 2,
              )
            : null,
      ),
      clipBehavior: Clip.hardEdge,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          onDoubleTap: onDoubleTap,
          onLongPress: onLongPress,
          borderRadius: BorderRadius.circular(radius),
          child: Ink(
            decoration: BoxDecoration(
              border: isSelected
                  ? null
                  : Border.all(
                      color: context.color.border(BorderColorType.secondary),
                      width: 1,
                    ),
              color: context.color.background(BackgroundColorType.primaryAlt),
              borderRadius: BorderRadius.circular(radius),
            ),
            child: Container(
              padding: padding,
              child: child,
            ),
          ),
        ),
      ),
    );
  }
}
