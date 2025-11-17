import 'package:flutter/material.dart';
import 'package:one_uikit/one_uikit.dart';

part 'data/one_nav_icon_color.dart';
part 'data/one_nav_icon_size.dart';
part 'data/one_nav_icon_type.dart';
part 'data/one_nav_icon_view_model.dart';

/// Navigation Icon component
///
/// Supports 3 types: light, dark, outline
/// 4 sizes: sm (20px), md (24px), lg (28px), xl (32px)
/// 3 colors: brand, gray, success
class OneNavIcon extends StatelessWidget {
  const OneNavIcon({super.key, required this.viewModel});

  final OneNavIconViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    switch (viewModel.type) {
      case OneNavIconType.light:
        return _buildLight(context);
      case OneNavIconType.dark:
        return _buildDark(context);
      case OneNavIconType.outline:
        return _buildOutline(context);
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
          color: viewModel.color.lightIconColor(context),
          size: viewModel.size.iconSize,
        ),
      ),
    );
  }

  /// Dark type: circular solid background with white icon
  Widget _buildDark(BuildContext context) {
    return Container(
      width: viewModel.size.size,
      height: viewModel.size.size,
      decoration: BoxDecoration(
        color: viewModel.color.darkBackground(context),
        shape: BoxShape.circle,
      ),
      child: Center(
        child: OneIcons.get(
          viewModel.icon,
          color: OneColors.white,
          size: viewModel.size.iconSize,
        ),
      ),
    );
  }

  /// Outline type: icon with circle border outline
  Widget _buildOutline(BuildContext context) {
    final iconColor = viewModel.color.outlineColor(context);
    final size = viewModel.size.size;

    return SizedBox(
      width: size,
      height: size,
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Circle border outline
          Container(
            width: size,
            height: size,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: iconColor,
                width: viewModel.size.outlineBorderWidth,
              ),
            ),
          ),
          // Icon
          Center(
            child: OneIcons.get(
              viewModel.icon,
              color: iconColor,
              size: viewModel.size.iconSize,
            ),
          ),
        ],
      ),
    );
  }
}
