import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

part 'data/one_icons_enum.dart';
part 'data/social_networks_enum.dart';

class OneIcons {
  /// Приватный конструктор для предотвращения создания экземпляров класса
  OneIcons._();

  // Метод для получения иконки
  static Widget get(
    dynamic icon, {
    Key? key,
    double? size = 24,
    Color? color,
    BuildContext? context,
  }) {
    IconCategory category = _getCategoryFromIcon(icon);
    final iconName = _getIconName(icon);

    return SvgPicture.asset(
      _getIconPath(category, iconName),
      key: key,
      width: size,
      height: size,
      colorFilter: _getIconColorFilter(context, color),
    );
  }

// Обновленный метод для получения цветового фильтра иконки
  static ColorFilter? _getIconColorFilter(BuildContext? context, Color? color) {
    Color? iconColor = _getIconColor(context, color);
    return iconColor != null
        ? ColorFilter.mode(iconColor, BlendMode.srcIn)
        : null;
  }

  // * Вспомогательные методы

  // Приватный метод для получения цвета иконки
  static Color? _getIconColor(BuildContext? context, Color? color) {
    if (color != null) {
      return color;
    } else if (context != null) {
      final theme = Theme.of(context);
      return theme.colorScheme.onSurface;
    } else {
      return null;
    }
  }

  // Приватный метод для определения категории иконки
  static IconCategory _getCategoryFromIcon(dynamic icon) {
    if (icon is GeneralIcon) return IconCategory.general;
    if (icon is ArrowsIcon) return IconCategory.arrows;
    if (icon is ChartsIcon) return IconCategory.charts;
    if (icon is CommunicationIcon) return IconCategory.communication;
    if (icon is UsersIcon) return IconCategory.users;
    if (icon is MediaDevicesIcon) return IconCategory.media;
    if (icon is AlertsFeedbackIcon) return IconCategory.alerts;
    if (icon is LayoutIcon) return IconCategory.layout;
    if (icon is ShapesIcon) return IconCategory.shapes;
    if (icon is SecurityIcon) return IconCategory.security;
    if (icon is DevelopmentIcon) return IconCategory.development;
    if (icon is FilesIcon) return IconCategory.files;
    if (icon is EditorIcon) return IconCategory.editor;
    if (icon is FinanceECommerceIcon) return IconCategory.finance;
    if (icon is ImagesIcon) return IconCategory.images;
    if (icon is TimeIcon) return IconCategory.time;
    if (icon is EducationIcon) return IconCategory.education;
    if (icon is MapsTravelIcon) return IconCategory.maps;
    if (icon is WeatherIcon) return IconCategory.weather;
    if (icon is SocialNetworksEnum) return IconCategory.social;
    throw ArgumentError('Неизвестный тип иконки');
  }

  // Приватный метод для получения имени иконки из enum
  static String _getIconName(dynamic icon) {
    return icon.toString().split('.').last;
  }

  // Приватный метод для получения пути к иконке
  static String _getIconPath(IconCategory category, String iconName) {
    String formattedIconName = _formatIconName(iconName);
    return 'assets/icons/${category.name}/$formattedIconName.svg';
  }

  // Приватный метод для форматирования имени иконки из camelCase в kebab-case
  static String _formatIconName(String name) {
    return name
        .replaceAllMapped(
            RegExp(r'([A-Z])'), (Match m) => '-${m[1]!.toLowerCase()}')
        .replaceAllMapped(RegExp(r'(\d+)'),
            (Match m) => '-${m[1]}') // Добавляем дефис перед числами
        .replaceAll(RegExp(r'^-'), '') // Удаляем дефис в начале, если он есть
        .replaceAll(RegExp(r'--'), '-'); // Заменяем двойные дефисы на одинарные
  }
}
