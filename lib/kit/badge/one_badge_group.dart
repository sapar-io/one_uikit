import 'package:flutter/material.dart';
import 'package:one_uikit/one_uikit.dart';

/// Badge Group component - Badge with accompanying text and optional icon
///
/// This widget combines a badge with descriptive text and an optional trailing icon
/// in a unified container. Commonly used for feature announcements, notifications,
/// and status updates.
///
/// Example:
/// ```dart
/// OneBadgeGroup(
///   badgeText: 'New feature',
///   text: 'We've just released a new feature',
///   badgeColor: BadgeColor.brand,
///   showIcon: true,
/// )
/// ```
class OneBadgeGroup extends StatelessWidget {
  const OneBadgeGroup({
    super.key,
    required this.badgeText,
    required this.text,
    this.badgeSize = BadgeSize.sm,
    this.badgeType = BadgeType.pillColor,
    this.badgeColor = BadgeColor.brand,
    this.showIcon = true,
    this.icon,
    this.onTap,
  });

  /// Text displayed inside the badge
  final String badgeText;

  /// Main descriptive text next to the badge
  final String text;

  /// Size of the badge (default: sm)
  final BadgeSize badgeSize;

  /// Type of the badge (default: pillColor)
  final BadgeType badgeType;

  /// Color scheme of the badge and container (default: brand)
  final BadgeColor badgeColor;

  /// Whether to show the trailing arrow icon (default: true)
  final bool showIcon;

  /// Custom icon to display (default: arrow right)
  final dynamic icon;

  /// Callback when the badge group is tapped
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.only(left: 4, right: 10, top: 4, bottom: 4),
        decoration: BoxDecoration(
          color: badgeColor.groupBackgroundColor(context),
          borderRadius: BorderRadius.circular(OneRadius.full),
          border: Border.all(
            color: badgeColor.borderColor(context),
            width: 1,
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Badge
            Flexible(
              flex: 0,
              child: OneBadge(
                viewModel: BadgeViewModel(
                  size: badgeSize,
                  type: badgeType,
                  icon: BadgeIcon.text,
                  color: badgeColor,
                  text: badgeText,
                ),
              ),
            ),
            const SizedBox(width: OneSpace.s8),
            // Text
            Flexible(
              child: Text(
                text,
                style: context.typography.textXsMedium.copyWith(
                  color: badgeColor.textColor(context),
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
            ),
            // Optional icon
            if (showIcon) ...[
              const SizedBox(width: OneSpace.s4),
              OneIcons.get(
                icon ?? ArrowsIcon.arrowRight,
                context: context,
                size: 16,
                color: badgeColor.iconColorForGroup(context),
              ),
            ],
          ],
        ),
      ),
    );
  }
}

/// Extension to add group-specific colors
extension BadgeColorGroupExtension on BadgeColor {
  /// Background color for the badge group container (lighter than badge fill)
  Color groupBackgroundColor(BuildContext context) {
    switch (this) {
      case BadgeColor.gray:
        return context.color.utility(UtilityColorType.gray50);
      case BadgeColor.brand:
        return context.color.utility(UtilityColorType.brand100);
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

  /// Icon color for the badge group (500 shade)
  Color iconColorForGroup(BuildContext context) {
    switch (this) {
      case BadgeColor.gray:
        return context.color.utility(UtilityColorType.gray500);
      case BadgeColor.brand:
        return context.color.utility(UtilityColorType.brand500);
      case BadgeColor.error:
        return context.color.utility(UtilityColorType.error500);
      case BadgeColor.warning:
        return context.color.utility(UtilityColorType.warning500);
      case BadgeColor.success:
        return context.color.utility(UtilityColorType.success500);
      case BadgeColor.blueLight:
        return context.color.utility(UtilityColorType.blueLight500);
      case BadgeColor.blue:
        return context.color.utility(UtilityColorType.blue500);
      case BadgeColor.indigo:
        return context.color.utility(UtilityColorType.indigo500);
      case BadgeColor.purple:
        return context.color.utility(UtilityColorType.purple500);
      case BadgeColor.pink:
        return context.color.utility(UtilityColorType.pink500);
      case BadgeColor.orange:
        return context.color.utility(UtilityColorType.orange500);
      case BadgeColor.blueGray:
        return context.color.utility(UtilityColorType.grayBlue500);
      case BadgeColor.grayBlue:
        return context.color.utility(UtilityColorType.grayBlue500);
    }
  }
}
