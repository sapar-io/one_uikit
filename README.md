# One UI Kit

Современная и комплексная библиотека UI компонентов для Flutter, разработанная для проекта 1APP. One UI Kit предоставляет готовые к использованию компоненты, иконки и утилиты для создания консистентного и профессионального пользовательского интерфейса.

## ✨ Особенности

- 🎨 **Богатая коллекция иконок** - 1000+ SVG иконок, организованных по категориям
- 🧩 **Готовые компоненты** - Кнопки, карточки, поля ввода, бейджи и многое другое
- 🎯 **Адаптивный дизайн** - Поддержка мобильных, планшетных и десктопных устройств
- 🌙 **Темная тема** - Полная поддержка светлой и темной темы
- �� **Material Design 3** - Современный дизайн-система
- 🔧 **Утилиты и расширения** - Вспомогательные методы для типичных задач
- �� **Обработка ошибок** - Встроенные виджеты для отображения ошибок
- 🔔 **Уведомления** - Простая система SnackBar уведомлений

## 📦 Установка

Добавьте зависимость в ваш `pubspec.yaml`:

```yaml
dependencies:
  one_uikit: ^0.0.7
```

Затем выполните:

```bash
flutter pub get
```

## �� Быстрый старт

### Импорт библиотеки

```dart
import 'package:one_uikit/one_uikit.dart';
```

### Базовое использование

```dart
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'One UI Kit Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}
```

## 🧩 Доступные компоненты

### Кнопки (OneButton)

```dart
OneButton(
  viewModel: OneButtonViewModel(
    text: 'Нажми меня',
    onTap: () => print('Кнопка нажата!'),
    hierarchy: OneButtonHierarchy.primary,
    size: OneButtonSize.md,
  ),
)
```

**Иерархии:**
- `primary` - Основная кнопка
- `secondary` - Вторичная кнопка
- `tertiary` - Третичная кнопка
- `destructive` - Деструктивная кнопка

**Размеры:**
- `sm` - Маленькая
- `md` - Средняя
- `lg` - Большая

### Карточки (OneCard)

```dart
OneCard(
  withShadow: true,
  onTap: () => print('Карточка нажата'),
  child: Column(
    children: [
      Text('Заголовок карточки'),
      Text('Содержимое карточки'),
    ],
  ),
)
```

### Бейджи (OneBadge)

```dart
OneBadge(
  viewModel: BadgeViewModel(
    text: 'Новый',
    color: BadgeColor.success,
    size: BadgeSize.md,
    icon: BadgeIcon.iconLeading,
    iconData: OneIconsEnum.check,
  ),
)
```

### Поля ввода (OneTextField)

```dart
OneTextField(
  decoration: InputDecoration(
    labelText: 'Email',
    hintText: 'Введите ваш email',
  ),
  keyboardType: TextInputType.emailAddress,
  validator: (value) {
    if (value?.isEmpty ?? true) {
      return 'Поле обязательно для заполнения';
    }
    return null;
  },
)
```

### Пустые состояния (OneEmpty)

```dart
OneEmpty(
  viewModel: EmptyViewModel(
    icon: OneIconsEnum.inbox,
    title: 'Нет данных',
    subtitle: 'Попробуйте обновить страницу или создать новый элемент',
    buttons: [
      OneButtonViewModel(
        text: 'Обновить',
        onTap: () => refreshData(),
        hierarchy: OneButtonHierarchy.primary,
      ),
    ],
  ),
)
```

### Избранные иконки (OneFeaturedIcon)

```dart
OneFeaturedIcon(
  viewModel: OneFeaturedIconViewModel(
    icon: OneIconsEnum.star,
    type: OneFeaturedIconType.modern,
    size: OneFeaturedIconSize.lg,
    color: OneFeaturedIconColor.brand,
  ),
)
```

## 🎨 Дизайн-система

### Цвета

Библиотека предоставляет полную систему цветов на основе **Untitled UI Figma Kit** с поддержкой светлой и темной темы.

**📖 [Полная документация по цветам](COLORS.md)**

### Градиенты

112 готовых градиентов для создания красивых фонов и эффектов глубины.

**📖 [Полная документация по градиентам](GRADIENTS.md)**

```dart
// Семантические цвета (автоматическая поддержка темной темы)
context.color.background(BackgroundColorType.primary)
context.color.text(TextColorType.primary)
context.color.border(BorderColorType.primary)

// Прямой доступ к цветам
OneColors.brand[600]          // Brand цвет
OneColors.error[600]          // Error цвет
OneColors.success[600]        // Success цвет
OneColors.warning[600]        // Warning цвет

// Utility colors с автоинверсией для темной темы
context.color.utility(UtilityColorType.gray100)
context.color.utility(UtilityColorType.brand600)

// Все основные цвета Untitled UI:
// - Gray (light & dark mode)
// - Brand (Primary)
// - Error, Warning, Success
// - 25+ вторичных цветов (Blue, Purple, Green, Orange, и т.д.)

// Градиенты
Container(
  decoration: BoxDecoration(
    gradient: OneGradients.brand01,  // 7 brand градиентов
    // или
    gradient: OneGradients.gray08,   // 14 gray градиентов
    // или
    gradient: OneGradients.linear59, // 91 linear градиент
  ),
)

// Через extension
Container(
  decoration: BoxDecoration(
    gradient: context.gradient(OneGradientType.linear01),
  ),
)
```

### Типографика

```dart
// Заголовки
context.typography.display2xlBold
context.typography.displayXlSemibold
context.typography.displayLgMedium

// Текст
context.typography.textXlRegular
context.typography.textLgMedium
context.typography.textMdSemibold
```

### Отступы и сетка

```dart
// Отступы
gapH(OneSpace.s16)  // Горизонтальный отступ
gapV(OneSpace.s24)  // Вертикальный отступ

// Радиусы
BorderRadius.circular(OneRadius.xl)
BorderRadius.circular(OneRadius.lg)
```

## 🔔 Уведомления

### SnackBar уведомления

```dart
// Успешное уведомление
context.showSnackBar(message: 'Операция выполнена успешно!');

// Ошибка
context.showSnackBar(
  message: 'Что-то пошло не так!', 
  isError: true
);
```

## �� Обработка ошибок

### Виджет ошибки

```dart
OneError(
  error: exception,
  stackTrace: stackTrace,
);
```

## 🖼️ Иконки

Библиотека включает более 1000 SVG иконок, организованных по категориям:

### Категории иконок

- 🚨 **Alerts** - Иконки ошибок, предупреждений и уведомлений
- ➡️ **Arrows** - Направленные и навигационные иконки
- 📊 **Charts** - Иконки для визуализации данных
- 💬 **Communication** - Иконки сообщений и телефона
- 💻 **Development** - Иконки кода и технические
- ✏️ **Editor** - Иконки редактирования текста
- 🎓 **Education** - Иконки обучения и академические
- �� **Files** - Иконки документов и управления файлами
- �� **Finance** - Иконки банкинга и финансов
- 🌐 **General** - Общие и утилитарные иконки
- ��️ **Images** - Иконки фото и медиа
- 📐 **Layout** - Иконки дизайна и макета
- ��️ **Maps** - Иконки местоположения и транспорта
- �� **Media** - Иконки аудио и видео
- 🔒 **Security** - Иконки аутентификации и безопасности
- 🔷 **Shapes** - Геометрические и дизайнерские иконки
- 🌍 **Social** - Иконки социальных сетей
- ⏰ **Time** - Иконки часов и расписания
- �� **Users** - Иконки пользователей и профилей
- 🌤️ **Weather** - Иконки погоды и климата

### Использование иконок

```dart
// Через OneIcons
OneIcons.get(
  OneIconsEnum.activity,
  color: Colors.blue,
  size: 24,
)

// Напрямую через SVG
SvgPicture.asset('packages/one_uikit/assets/icons/general/activity.svg')
```

## 📱 Адаптивность

Библиотека поддерживает адаптивный дизайн для различных устройств:

```dart
OneAdaptive(
  desktop: (context) => DesktopLayout(),
  tablet: (context) => TabletLayout(),
  mobile: (context) => MobileLayout(),
)
```

## 🖼️ Изображения

### OneImage виджет

```dart
OneImage(
  imageUrl: 'https://example.com/image.jpg',
  placeholder: 'packages/one_uikit/assets/images/image_placeholder.png',
  errorWidget: Icon(Icons.error),
)
```

## 📋 Примеры использования

Полные примеры использования всех компонентов доступны в папке `example/`.

## �� Вклад в проект

Мы приветствуем вклад в развитие проекта! Пожалуйста, ознакомьтесь с нашими [правилами контрибьюции](CONTRIBUTING.md).

## 📄 Лицензия

Этот проект лицензирован под MIT License - см. файл [LICENSE](LICENSE) для подробностей.

## �� Ссылки

- **GitHub**: https://github.com/sapar-io/one_uikit
- **Issues**: https://github.com/sapar-io/one_uikit/issues
- **Документация**: https://github.com/sapar-io/one_uikit#readme

---

**One UI Kit** - Создавайте красивые и функциональные интерфейсы с легкостью! ��