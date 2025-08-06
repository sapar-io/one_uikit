part of '../one_badge.dart';

class BadgeViewModel {
  final BadgeSize size;
  final BadgeType type;
  final BadgeIcon icon;
  final BadgeColor color;
  final dynamic iconData;
  final String? text;
  final Function()? onTap;

  BadgeViewModel({
    required this.size,
    required this.type,
    required this.icon,
    required this.color,
    this.iconData,
    this.text,
    this.onTap,
  });
}
