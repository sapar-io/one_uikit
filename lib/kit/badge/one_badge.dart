import 'package:flutter/material.dart';
import 'package:one_uikit/one_uikit.dart';

part 'data/badge_color.dart';
part 'data/badge_icon.dart';
part 'data/badge_size.dart';
part 'data/badge_type.dart';
part 'data/badge_view_model.dart';

class OneBadge extends StatelessWidget {
  const OneBadge({
    super.key,
    required this.viewModel,
  });

  final BadgeViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: viewModel.onTap,
      child: Container(
        padding: viewModel.size.padding(context),
        decoration: BoxDecoration(
          color: viewModel.color.fillColor(context),
          border: Border.all(color: viewModel.color.borderColor(context)),
          borderRadius: BorderRadius.circular(viewModel.type.radius),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (viewModel.icon == BadgeIcon.iconLeading &&
                viewModel.iconData != null)
              Padding(
                padding: const EdgeInsets.only(right: OneSpace.s4),
                child: OneIcons.get(
                  viewModel.iconData,
                  context: context,
                  size: viewModel.size.iconSize,
                ),
              ),
            if (viewModel.text != null)
              Text(
                viewModel.text!,
                style: viewModel.size.textStyle(context),
              ),
            if (viewModel.icon == BadgeIcon.iconTrailing &&
                viewModel.iconData != null)
              Padding(
                padding: const EdgeInsets.only(left: OneSpace.s4),
                child: OneIcons.get(
                  viewModel.iconData,
                  context: context,
                  size: viewModel.size.iconSize,
                ),
              ),
          ],
        ),
      ),
    );
  }
}

extension BadgeSizeX on BadgeSize {
  TextStyle textStyle(BuildContext context) {
    switch (this) {
      case BadgeSize.sm:
        return context.typography.textXsMedium;
      case BadgeSize.md:
        return context.typography.textXsMedium;
      case BadgeSize.lg:
        return context.typography.textXsMedium;
    }
  }

  double get iconSize {
    switch (this) {
      case BadgeSize.sm:
        return 16;
      case BadgeSize.md:
        return 16;
      case BadgeSize.lg:
        return 24;
    }
  }

  EdgeInsets padding(BuildContext context) {
    switch (this) {
      case BadgeSize.sm:
        return const EdgeInsets.symmetric(horizontal: 8, vertical: 2);
      case BadgeSize.md:
        return const EdgeInsets.symmetric(horizontal: 10, vertical: 2);
      case BadgeSize.lg:
        return const EdgeInsets.symmetric(horizontal: 12, vertical: 4);
    }
  }
}

extension BadgeColorX on BadgeColor {
  Color fillColor(BuildContext context) {
    switch (this) {
      case BadgeColor.gray:
        return context.color.utility(UtilityColorType.gray50);
      case BadgeColor.brand:
        return context.color.utility(UtilityColorType.brand50);
      case BadgeColor.error:
        return context.color.utility(UtilityColorType.error50);
      case BadgeColor.warning:
        return context.color.utility(UtilityColorType.warning50);
      case BadgeColor.success:
        return context.color.utility(UtilityColorType.success50);
      case BadgeColor.blueLight:
        return context.color.utility(UtilityColorType.blueLight50);
      case BadgeColor.blue:
        return context.color.utility(UtilityColorType.blue50);
      case BadgeColor.indigo:
        return context.color.utility(UtilityColorType.indigo50);
      case BadgeColor.purple:
        return context.color.utility(UtilityColorType.purple50);
      case BadgeColor.pink:
        return context.color.utility(UtilityColorType.pink50);
      case BadgeColor.orange:
        return context.color.utility(UtilityColorType.orange50);
      case BadgeColor.blueGray:
        return context.color.utility(UtilityColorType.grayBlue50);
      case BadgeColor.grayBlue:
        return context.color.utility(UtilityColorType.grayBlue50);
    }
  }

  Color borderColor(BuildContext context) {
    switch (this) {
      case BadgeColor.gray:
        return context.color.utility(UtilityColorType.gray200);
      case BadgeColor.brand:
        return context.color.utility(UtilityColorType.brand200);
      case BadgeColor.error:
        return context.color.utility(UtilityColorType.error200);
      case BadgeColor.warning:
        return context.color.utility(UtilityColorType.warning200);
      case BadgeColor.success:
        return context.color.utility(UtilityColorType.success200);
      case BadgeColor.blueLight:
        return context.color.utility(UtilityColorType.blueLight200);
      case BadgeColor.blue:
        return context.color.utility(UtilityColorType.blue200);
      case BadgeColor.indigo:
        return context.color.utility(UtilityColorType.indigo200);
      case BadgeColor.purple:
        return context.color.utility(UtilityColorType.purple200);
      case BadgeColor.pink:
        return context.color.utility(UtilityColorType.pink200);
      case BadgeColor.orange:
        return context.color.utility(UtilityColorType.orange200);
      case BadgeColor.blueGray:
        return context.color.utility(UtilityColorType.grayBlue200);
      case BadgeColor.grayBlue:
        return context.color.utility(UtilityColorType.grayBlue200);
    }
  }
}

extension BadgeTypeX on BadgeType {
  double get radius {
    switch (this) {
      case BadgeType.pillColor:
      case BadgeType.pillOutline:
        return OneRadius.full;
      case BadgeType.badgeColor:
      case BadgeType.badgeModern:
        return OneRadius.sm;
    }
  }
}
