import 'package:flutter/material.dart';
import 'package:one_uikit/one_uikit.dart';

/// Card focus ring type matching Untitled UI focus-ring styles
enum OneCardFocusRing {
  /// No focus ring
  none,

  /// Brand colored focus ring (brand-500)
  brand,

  /// Error colored focus ring (error-500)
  error,
}

/// Card component matching Untitled UI design system
///
/// Features:
/// - Proper border as outline (1px inside)
/// - Focus ring with white separator
/// - Shadow support (xs, sm sizes)
/// - Responsive padding
class OneCard extends StatelessWidget {
  const OneCard({
    super.key,
    required this.child,
    this.onTap,
    this.onDoubleTap,
    this.onLongPress,
    this.shadow = OneShadowSize.xs,
    this.padding,
    this.focusRing = OneCardFocusRing.none,
    this.backgroundColor,
    this.borderColor,
    this.borderRadius,
  });

  final Widget child;
  final VoidCallback? onTap;
  final VoidCallback? onDoubleTap;
  final VoidCallback? onLongPress;

  /// Shadow size (xs, sm, none)
  final OneShadowSize? shadow;

  final EdgeInsets? padding;

  /// Focus ring style (none, brand, error)
  final OneCardFocusRing focusRing;

  final Color? backgroundColor;
  final Color? borderColor;
  final double? borderRadius;

  @override
  Widget build(BuildContext context) {
    return OneAdaptive(
      desktop:
          (_) => _buildCard(
            context: context,
            padding: padding ?? const EdgeInsets.all(OneGrid.desktopPadding),
          ),
      tablet:
          (_) => _buildCard(
            context: context,
            padding:
                padding ??
                const EdgeInsets.symmetric(
                  vertical: OneGrid.mobileVerticalPadding,
                  horizontal: OneGrid.mobilePadding,
                ),
          ),
      mobile:
          (_) => _buildCard(
            context: context,
            padding:
                padding ??
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
    final hasFocusRing = focusRing != OneCardFocusRing.none;

    // Focus ring colors
    final focusRingColor = switch (focusRing) {
      OneCardFocusRing.brand => context.color.utility(
        UtilityColorType.brand500,
      ),
      OneCardFocusRing.error => context.color.utility(
        UtilityColorType.error500,
      ),
      OneCardFocusRing.none => null,
    };

    // Build box shadow with focus ring
    List<BoxShadow> boxShadows = [];

    // Add focus ring shadows (outer to inner)
    if (hasFocusRing && focusRingColor != null) {
      // Outer focus ring (4px)
      boxShadows.add(
        BoxShadow(color: focusRingColor, spreadRadius: 4, blurRadius: 0),
      );
      //   // White separator (2px)
      //   boxShadows.add(
      //     BoxShadow(color: Colors.white, spreadRadius: 2, blurRadius: 0),
      //   );
    }

    // Add card shadow
    if (shadow != null) {
      boxShadows.addAll(context.shadow.get(shadow!));
    }

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        boxShadow: boxShadows.isEmpty ? null : boxShadows,
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          onDoubleTap: onDoubleTap,
          onLongPress: onLongPress,
          borderRadius: BorderRadius.circular(radius),
          child: Ink(
            decoration: BoxDecoration(
              color:
                  backgroundColor ??
                  context.color.background(BackgroundColorType.primary),
              borderRadius: BorderRadius.circular(radius),
              // Border as outline (inside)
              border: Border.all(
                color:
                    borderColor ??
                    context.color.border(BorderColorType.secondary),
                width: 1,
              ),
            ),
            child: Container(padding: padding, child: child),
          ),
        ),
      ),
    );
  }
}
