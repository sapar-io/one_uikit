import 'package:flutter/material.dart';
import 'package:one_uikit/one_uikit.dart';

part 'data/one_featured_icon_color.dart';
part 'data/one_featured_icon_size.dart';
part 'data/one_featured_icon_type.dart';
part 'data/one_featured_icon_view_model.dart';

class OneFeaturedIcon extends StatelessWidget {
  const OneFeaturedIcon({
    super.key,
    required this.viewModel,
  });

  final OneFeaturedIconViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: viewModel.size.size,
      height: viewModel.size.size,
      decoration: BoxDecoration(
        color: context.color.background(BackgroundColorType.primary),
        borderRadius: BorderRadius.circular(
          viewModel.size.borderRadius(viewModel.type),
        ),
        border: Border.all(
          color: context.color.border(BorderColorType.primary),
          width: 1,
        ),
        boxShadow: context.shadow.get(OneShadowSize.skeumorphic),
      ),
      child: Center(
        child: OneIcons.get(
          viewModel.icon,
          color: viewModel.color.color(viewModel.type, context),
          size: viewModel.size.iconSize(viewModel.type),
        ),
      ),
    );
  }
}
