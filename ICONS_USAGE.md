# Использование иконок в OneUIKit

## Проблема с assets в Flutter пакетах

По умолчанию, когда вы импортируете Flutter пакет, его assets (ресурсы) не копируются в ваш проект. Это означает, что иконки из `one_uikit` не будут доступны в вашем проекте.

## Решения

### Решение 1: Добавить assets в pubspec.yaml вашего проекта

В файле `pubspec.yaml` вашего основного проекта добавьте:

```yaml
flutter:
  assets:
    - packages/one_uikit/assets/icons/
    - packages/one_uikit/assets/images/
```

### Решение 2: Использовать flutter_svg напрямую

Если вы хотите использовать иконки напрямую без OneIcons класса:

```dart
import 'package:flutter_svg/flutter_svg.dart';

// Пример использования иконки напрямую
SvgPicture.asset('packages/one_uikit/assets/icons/general/activity.svg')
```

### Решение 3: Проверить версию пакета

Убедитесь, что вы используете актуальную версию пакета:

```yaml
dependencies:
  one_uikit: ^0.1.0
```

## Примеры использования

### Базовое использование

```dart
import 'package:one_uikit/one_uikit.dart';

// Использование иконки
OneIcons.get(GeneralIcon.activity)

// С кастомными параметрами
OneIcons.get(
  GeneralIcon.activity,
  size: 32,
  color: Colors.blue,
  context: context,
)
```

### Доступные категории иконок

- `GeneralIcon` - общие иконки
- `ArrowsIcon` - стрелки
- `ChartsIcon` - графики
- `CommunicationIcon` - коммуникация
- `UsersIcon` - пользователи
- `MediaDevicesIcon` - медиа и устройства
- `AlertsFeedbackIcon` - уведомления и обратная связь
- `LayoutIcon` - макет
- `ShapesIcon` - формы
- `SecurityIcon` - безопасность
- `DevelopmentIcon` - разработка
- `FilesIcon` - файлы
- `EditorIcon` - редактор
- `FinanceECommerceIcon` - финансы и e-commerce
- `ImagesIcon` - изображения
- `TimeIcon` - время
- `EducationIcon` - образование
- `MapsTravelIcon` - карты и путешествия
- `WeatherIcon` - погода
- `SocialNetworkTypeEnum` - социальные сети

## Устранение неполадок

### Иконки не отображаются

1. Проверьте, что assets добавлены в `pubspec.yaml`
2. Выполните `flutter clean` и `flutter pub get`
3. Убедитесь, что путь к иконке правильный
4. Проверьте, что файл иконки существует в папке `assets/icons/`

### Ошибка "Unable to load asset"

Это означает, что Flutter не может найти файл иконки. Убедитесь, что:
- Assets правильно объявлены в `pubspec.yaml`
- Файл иконки существует
- Путь к файлу правильный

## Структура иконок

Иконки организованы по категориям в папке `assets/icons/`:

```
assets/icons/
├── general/
├── arrows/
├── charts/
├── communication/
├── users/
├── media/
├── alerts/
├── layout/
├── shapes/
├── security/
├── development/
├── files/
├── editor/
├── finance/
├── images/
├── time/
├── education/
├── maps/
├── weather/
└── social/
```

Каждая иконка имеет формат SVG и следует соглашению именования kebab-case.
