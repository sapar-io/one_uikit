part of '../one_empty.dart';

class EmptyViewModel {
  final EmptyType type;
  final EmptyHierarchy hierarchy;
  final dynamic icon;
  final String title;
  final String subtitle;
  final List<OneButtonViewModel>? buttons;

  const EmptyViewModel({
    this.type = EmptyType.featuredIcon,
    this.hierarchy = EmptyHierarchy.md,
    this.icon = GeneralIcon.searchLg,
    this.title = "Упс, тут пусто",
    this.subtitle = "Данные не найдены",
    this.buttons,
  });
}
