part of '../one_nav_icon.dart';

/// View model for OneNavIcon component
class OneNavIconViewModel {
  final Enum icon;
  final OneNavIconType type;
  final OneNavIconSize size;
  final OneNavIconColor color;

  const OneNavIconViewModel({
    required this.icon,
    required this.type,
    required this.size,
    required this.color,
  });
}
