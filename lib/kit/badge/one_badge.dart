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
    final isOutline = viewModel.type == BadgeType.pillOutline;
    final borderColor = isOutline
        ? viewModel.color.outlineBorderColor(context)
        : viewModel.color.borderColor(context);
    final backgroundColor = viewModel.type.hasBackground
        ? viewModel.color.fillColor(context)
        : Colors.transparent;

    return GestureDetector(
      onTap: viewModel.onTap,
      child: Container(
        padding: viewModel.size.padding(context),
        decoration: BoxDecoration(
          color: backgroundColor,
          border: Border.all(
            color: borderColor,
            width: viewModel.type.borderWidth,
          ),
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
                  color: viewModel.color.textColor(context),
                ),
              ),
            if (viewModel.text != null)
              Text(
                viewModel.text!,
                style: viewModel.size
                    .textStyle(context)
                    .copyWith(color: viewModel.color.textColor(context)),
              ),
            if (viewModel.icon == BadgeIcon.iconTrailing &&
                viewModel.iconData != null)
              Padding(
                padding: const EdgeInsets.only(left: OneSpace.s4),
                child: OneIcons.get(
                  viewModel.iconData,
                  context: context,
                  size: viewModel.size.iconSize,
                  color: viewModel.color.textColor(context),
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

  Color textColor(BuildContext context) {
    switch (this) {
      case BadgeColor.gray:
        return context.color.utility(UtilityColorType.gray700);
      case BadgeColor.brand:
        return context.color.utility(UtilityColorType.brand700);
      case BadgeColor.error:
        return context.color.utility(UtilityColorType.error700);
      case BadgeColor.warning:
        return context.color.utility(UtilityColorType.warning700);
      case BadgeColor.success:
        return context.color.utility(UtilityColorType.success700);
      case BadgeColor.blueLight:
        return context.color.utility(UtilityColorType.blueLight700);
      case BadgeColor.blue:
        return context.color.utility(UtilityColorType.blue700);
      case BadgeColor.indigo:
        return context.color.utility(UtilityColorType.indigo700);
      case BadgeColor.purple:
        return context.color.utility(UtilityColorType.purple700);
      case BadgeColor.pink:
        return context.color.utility(UtilityColorType.pink700);
      case BadgeColor.orange:
        return context.color.utility(UtilityColorType.orange700);
      case BadgeColor.blueGray:
        return context.color.utility(UtilityColorType.grayBlue700);
      case BadgeColor.grayBlue:
        return context.color.utility(UtilityColorType.grayBlue700);
    }
  }

  Color outlineBorderColor(BuildContext context) {
    switch (this) {
      case BadgeColor.gray:
        return context.color.utility(UtilityColorType.gray300);
      case BadgeColor.brand:
        return context.color.utility(UtilityColorType.brand600);
      case BadgeColor.error:
        return context.color.utility(UtilityColorType.error600);
      case BadgeColor.warning:
        return context.color.utility(UtilityColorType.warning600);
      case BadgeColor.success:
        return context.color.utility(UtilityColorType.success600);
      case BadgeColor.blueLight:
        return context.color.utility(UtilityColorType.blueLight600);
      case BadgeColor.blue:
        return context.color.utility(UtilityColorType.blue600);
      case BadgeColor.indigo:
        return context.color.utility(UtilityColorType.indigo600);
      case BadgeColor.purple:
        return context.color.utility(UtilityColorType.purple600);
      case BadgeColor.pink:
        return context.color.utility(UtilityColorType.pink600);
      case BadgeColor.orange:
        return context.color.utility(UtilityColorType.orange600);
      case BadgeColor.blueGray:
        return context.color.utility(UtilityColorType.grayBlue600);
      case BadgeColor.grayBlue:
        return context.color.utility(UtilityColorType.grayBlue600);
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

  double get borderWidth {
    switch (this) {
      case BadgeType.pillColor:
      case BadgeType.badgeColor:
      case BadgeType.badgeModern:
        return 1.0;
      case BadgeType.pillOutline:
        return 1.5;
    }
  }

  bool get hasBackground {
    switch (this) {
      case BadgeType.pillColor:
      case BadgeType.badgeColor:
      case BadgeType.badgeModern:
        return true;
      case BadgeType.pillOutline:
        return false;
    }
  }
}
