import 'package:flutter/material.dart';
import 'package:one_uikit/one_uikit.dart';

part 'data/empty_hierarchy.dart';
part 'data/empty_type.dart';
part 'data/empty_view_model.dart';

class OneEmpty extends StatelessWidget {
  const OneEmpty({
    super.key,
    this.viewModel = const EmptyViewModel(),
  });

  final EmptyViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(32),
        constraints: const BoxConstraints(maxWidth: 500),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            OneFeaturedIcon(
              viewModel: OneFeaturedIconViewModel(
                icon: viewModel.icon,
                type: OneFeaturedIconType.modern,
                size: OneFeaturedIconSize.lg,
                color: OneFeaturedIconColor.gray,
              ),
            ),
            gapH(viewModel.hierarchy.iconAndTitleSpacing),
            Text(
              viewModel.title,
              textAlign: TextAlign.center,
              style: viewModel.hierarchy.titleStyle(context),
            ),
            gapH(viewModel.hierarchy.titleAndSubtitleSpacing),
            Text(
              viewModel.subtitle,
              textAlign: TextAlign.center,
              style: viewModel.hierarchy.subtitleStyle(context),
            ),
            if (viewModel.buttons != null && viewModel.buttons!.isNotEmpty)
              Column(
                children: [
                  gapH(viewModel.hierarchy.subtitleAndButtonSpacing),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      OneButton(
                        viewModel: viewModel.buttons!.first,
                      ),
                      if (viewModel.buttons!.length > 1)
                        Padding(
                          padding: const EdgeInsets.only(left: 12),
                          child: OneButton(
                            viewModel: viewModel.buttons!.last,
                          ),
                        ),
                    ],
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
