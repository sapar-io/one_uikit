part of '../one_tab_button.dart';

class TabButtonViewModel {
  final String text;
  final TabButtonSize size;
  final TabButtonType type;
  final TabButtonOrientation orientation;
  final bool isActive;
  final bool isDisabled;
  final VoidCallback? onTap;
  final BadgeViewModel? badge;

  TabButtonViewModel({
    required this.text,
    required this.size,
    required this.type,
    required this.orientation,
    this.isActive = false,
    this.isDisabled = false,
    this.onTap,
    this.badge,
  });
}
