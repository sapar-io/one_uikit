import 'package:flutter/material.dart';
import 'package:one_uikit/one_uikit.dart';

/// A convenience widget for creating text-only badges
/// This is a wrapper around OneBadge that simplifies creating badges with just text
class OneBadgeWithText extends StatelessWidget {
  const OneBadgeWithText({
    super.key,
    required this.text,
    this.size = BadgeSize.md,
    this.type = BadgeType.pillColor,
    this.color = BadgeColor.brand,
    this.onTap,
  });

  final String text;
  final BadgeSize size;
  final BadgeType type;
  final BadgeColor color;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return OneBadge(
      viewModel: BadgeViewModel(
        size: size,
        type: type,
        icon: BadgeIcon.text,
        color: color,
        text: text,
        onTap: onTap,
      ),
    );
  }
}
