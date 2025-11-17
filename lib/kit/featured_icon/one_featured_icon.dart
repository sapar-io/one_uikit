import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:one_uikit/one_uikit.dart';

part 'data/one_featured_icon_color.dart';
part 'data/one_featured_icon_size.dart';
part 'data/one_featured_icon_type.dart';
part 'data/one_featured_icon_view_model.dart';

/// Featured Icon component based on Untitled UI Figma Kit
///
/// Supports 6 types: light, modern, dark, outline, gradient, glass
/// 4 sizes: sm (32px), md (40px), lg (48px), xl (56px)
/// 5 colors: brand, gray, error, warning, success
class OneFeaturedIcon extends StatelessWidget {
  const OneFeaturedIcon({super.key, required this.viewModel});

  final OneFeaturedIconViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    switch (viewModel.type) {
      case OneFeaturedIconType.light:
        return _buildLight(context);
      case OneFeaturedIconType.modern:
        return _buildModern(context);
      case OneFeaturedIconType.dark:
        return _buildDark(context);
      case OneFeaturedIconType.outline:
        return _buildOutline(context);
      case OneFeaturedIconType.gradient:
        return _buildGradient(context);
      case OneFeaturedIconType.glass:
        return _buildGlass(context);
    }
  }

  /// Light type: circular background with colored icon
  Widget _buildLight(BuildContext context) {
    return Container(
      width: viewModel.size.size,
      height: viewModel.size.size,
      decoration: BoxDecoration(
        color: viewModel.color.lightBackground(context),
        shape: BoxShape.circle,
      ),
      child: Center(
        child: OneIcons.get(
          viewModel.icon,
          color: viewModel.color.iconColor(viewModel.type, context),
          size: viewModel.size.iconSize(viewModel.type),
        ),
      ),
    );
  }

  /// Modern type: square with shadows, borders, and gray icon
  Widget _buildModern(BuildContext context) {
    return Container(
      width: viewModel.size.size,
      height: viewModel.size.size,
      decoration: BoxDecoration(
        color: context.color.background(BackgroundColorType.primary),
        borderRadius: BorderRadius.circular(viewModel.size.borderRadius),
        border: Border.all(
          color: context.color.border(BorderColorType.primary),
          width: 1,
        ),
        boxShadow: context.shadow.get(OneShadowSize.xs),
      ),
      child: Center(
        child: OneIcons.get(
          viewModel.icon,
          color: viewModel.color.iconColor(viewModel.type, context),
          size: viewModel.size.iconSize(viewModel.type),
        ),
      ),
    );
  }

  /// Dark type: square solid background with white icon
  Widget _buildDark(BuildContext context) {
    return Container(
      width: viewModel.size.size,
      height: viewModel.size.size,
      decoration: BoxDecoration(
        color: viewModel.color.darkBackground(context),
        borderRadius: BorderRadius.circular(viewModel.size.borderRadius),
        border: Border.all(
          color: Colors.white.withValues(alpha: 0.1),
          width: 2,
        ),
        boxShadow: context.shadow.get(OneShadowSize.xs),
      ),
      child: Center(
        child: OneIcons.get(
          viewModel.icon,
          color: OneColors.white,
          size: viewModel.size.iconSize(viewModel.type),
        ),
      ),
    );
  }

  /// Outline type: icon with concentric circles
  Widget _buildOutline(BuildContext context) {
    final iconColor = viewModel.color.outlineColor(context);
    final size = viewModel.size.size;

    return SizedBox(
      width: size,
      height: size,
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Outer ring (10% opacity, larger)
          Container(
            width: size + 18,
            height: size + 18,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: iconColor.withValues(alpha: 0.1),
                width: 2,
              ),
            ),
          ),
          // Middle ring (30% opacity)
          Container(
            width: size + 8,
            height: size + 8,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: iconColor.withValues(alpha: 0.3),
                width: 2,
              ),
            ),
          ),
          // Icon
          Center(
            child: OneIcons.get(
              viewModel.icon,
              color: iconColor,
              size: viewModel.size.iconSize(viewModel.type),
            ),
          ),
        ],
      ),
    );
  }

  /// Gradient type: double circle with gradient background
  Widget _buildGradient(BuildContext context) {
    final size = viewModel.size.size;
    final innerSize = viewModel.size.gradientInnerCircleSize;

    return SizedBox(
      width: size,
      height: size,
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Colored circle background with border
          Container(
            width: size,
            height: size,
            decoration: BoxDecoration(
              color: viewModel.color.gradientOuterBackground(),
              shape: BoxShape.circle,
              border: Border.all(
                color: viewModel.color.gradientBorder(),
                width: 1,
              ),
            ),
          ),
          // Black gradient overlay
          Container(
            width: size,
            height: size,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black.withValues(alpha: 0.15),
                  Colors.transparent,
                ],
              ),
            ),
          ),
          // Inner solid circle
          Container(
            width: innerSize,
            height: innerSize,
            decoration: BoxDecoration(
              color: viewModel.color.darkBackground(context),
              shape: BoxShape.circle,
            ),
            child: Center(
              child: OneIcons.get(
                viewModel.icon,
                color: OneColors.white,
                size: viewModel.size.iconSize(viewModel.type),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Glass type: frosted glass effect with white icon
  Widget _buildGlass(BuildContext context) {
    final size = viewModel.size.size;

    return SizedBox(
      width: size,
      height: size,
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Background rotated square (for depth effect)
          Align(
            child: Transform.rotate(
              angle: 0.2617993878, // 15 degrees in radians
              child: Container(
                width: size,
                height: size,
                decoration: BoxDecoration(
                  color: viewModel.color.darkBackground(context),
                  borderRadius: BorderRadius.circular(
                    viewModel.size.borderRadius,
                  ),
                ),
              ),
            ),
          ),
          // Frosted glass foreground
          ClipRRect(
            borderRadius: BorderRadius.circular(viewModel.size.borderRadius),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 12, sigmaY: 12),
              child: Container(
                width: size,
                height: size,
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.6),
                  borderRadius: BorderRadius.circular(
                    viewModel.size.borderRadius,
                  ),
                  border: Border.all(
                    color: Colors.white.withValues(alpha: 0.6),
                    width: 1,
                  ),
                ),
                child: Center(
                  child: OneIcons.get(
                    viewModel.icon,
                    color: OneColors.white,
                    size: viewModel.size.iconSize(viewModel.type),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
