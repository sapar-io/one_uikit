# One UI Kit

Библиотека UI компонентов для Flutter, основанная на дизайн-системе Untitled UI.

## Установка

```yaml
dependencies:
  one_uikit: ^0.0.7
```

```bash
flutter pub get
```

## Импорт

```dart
import 'package:one_uikit/one_uikit.dart';
```

---

## 🎨 Foundation (Дизайн-система)

### Цвета

**Семантические цвета** - автоматически адаптируются к светлой/темной теме:

```dart
// Background
context.color.background(BackgroundColorType.primary)
context.color.background(BackgroundColorType.secondary)
context.color.background(BackgroundColorType.quaternary)
context.color.background(BackgroundColorType.primaryAlt)
context.color.background(BackgroundColorType.primaryHover)

// Text
context.color.text(TextColorType.primary)
context.color.text(TextColorType.secondary)
context.color.text(TextColorType.tertiary)
context.color.text(TextColorType.quaternary)
context.color.text(TextColorType.disabled)

// Border
context.color.border(BorderColorType.primary)
context.color.border(BorderColorType.secondary)
context.color.border(BorderColorType.tertiary)
context.color.border(BorderColorType.disabled)

// Foreground
context.color.foreground(ForegroundColorType.brandPrimary)
context.color.foreground(ForegroundColorType.error)
context.color.foreground(ForegroundColorType.warning)
context.color.foreground(ForegroundColorType.success)
```

**Utility цвета** - прямой доступ к палитре:

```dart
// Основные цвета с оттенками от 25 до 950
context.color.utility(UtilityColorType.gray50)
context.color.utility(UtilityColorType.brand600)
context.color.utility(UtilityColorType.error500)
context.color.utility(UtilityColorType.warning700)
context.color.utility(UtilityColorType.success600)

// Вторичные цвета
context.color.utility(UtilityColorType.blue600)
context.color.utility(UtilityColorType.purple500)
context.color.utility(UtilityColorType.pink600)
context.color.utility(UtilityColorType.orange500)
// ... и еще 25+ цветов
```

### Типографика

**12 текстовых стилей** с 4 весами (Regular, Medium, Semibold, Bold):

```dart
// Display (заголовки)
context.typography.display2xlBold      // 72px
context.typography.displayXlSemibold   // 60px
context.typography.displayLgMedium     // 48px
context.typography.displayMdRegular    // 36px
context.typography.displaySmBold       // 30px
context.typography.displayXsSemibold   // 24px

// Text (основной текст)
context.typography.textXlMedium        // 20px
context.typography.textLgRegular       // 18px
context.typography.textMdSemibold      // 16px
context.typography.textSmMedium        // 14px
context.typography.textXsBold          // 12px
```

### Градиенты

**112 градиентов** для фонов и эффектов:

```dart
// Brand градиенты (7 шт)
OneGradients.brand01
OneGradients.brand07

// Gray градиенты (14 шт)
OneGradients.gray01
OneGradients.gray14

// Linear градиенты (91 шт)
OneGradients.linear01
OneGradients.linear91

// Использование через extension
Container(
  decoration: BoxDecoration(
    gradient: context.gradient(OneGradientType.brand01),
  ),
)
```

### Тени

**8 размеров теней**:

```dart
context.shadow.get(OneShadowSize.xs)         // Минимальная
context.shadow.get(OneShadowSize.sm)         // Маленькая
context.shadow.get(OneShadowSize.md)         // Средняя
context.shadow.get(OneShadowSize.lg)         // Большая
context.shadow.get(OneShadowSize.xl)         // XL
context.shadow.get(OneShadowSize.xxl)        // XXL
context.shadow.get(OneShadowSize.xxxl)       // XXXL
context.shadow.get(OneShadowSize.skeumorphic) // Скевоморфная
```

### Отступы и радиусы

```dart
// Spacing
OneSpace.s4    // 4px
OneSpace.s8    // 8px
OneSpace.s12   // 12px
OneSpace.s16   // 16px
OneSpace.s24   // 24px
OneSpace.s32   // 32px
OneSpace.s48   // 48px

// Radius
OneRadius.xs   // 2px
OneRadius.sm   // 4px
OneRadius.md   // 6px
OneRadius.lg   // 8px
OneRadius.xl   // 12px
OneRadius.xxl  // 16px
OneRadius.xxxl // 20px
OneRadius.full // 9999px
```

---

## 🧩 Компоненты

### OneButton

**Кнопка с поддержкой иерархий и размеров**

```dart
OneButton(
  viewModel: OneButtonViewModel(
    text: 'Нажми меня',
    onTap: () {},
    hierarchy: OneButtonHierarchy.primary,
    size: OneButtonSize.md,
    icon: GeneralIcon.check,
    iconPosition: IconPosition.leading,
    isLoading: false,
    isDisabled: false,
  ),
)
```

**Параметры OneButtonViewModel:**
- `text` - текст кнопки
- `onTap` - обработчик нажатия
- `hierarchy` - иерархия (primary, secondary, tertiary, link)
- `size` - размер (sm, md, lg, xl, xxl)
- `icon` - иконка (опционально)
- `iconPosition` - позиция иконки (leading, trailing, only)
- `isLoading` - состояние загрузки
- `isDisabled` - состояние отключения

**Иерархии:** primary, secondary, tertiary, link
**Размеры:** sm, md, lg, xl, xxl
**Позиции иконки:** leading, trailing, only

### OneDestructiveButton

**Деструктивная кнопка для опасных действий**

```dart
OneDestructiveButton(
  viewModel: OneButtonViewModel(
    text: 'Удалить',
    onTap: () {},
    hierarchy: OneDestructiveButtonHierarchy.primary,
    size: OneButtonSize.md,
  ),
)
```

**Иерархии:** primary, secondary, tertiary, link

---

### OneBadge

**Бейдж с иконками и разными стилями**

```dart
OneBadge(
  viewModel: BadgeViewModel(
    text: 'New',
    color: BadgeColor.brand,
    size: BadgeSize.md,
    type: BadgeType.pillColor,
    icon: BadgeIcon.iconLeading,
    iconData: GeneralIcon.check,
    onTap: () {},
  ),
)
```

**Параметры BadgeViewModel:**
- `text` - текст бейджа
- `color` - цвет (brand, error, warning, success, gray, blue, purple, и др.)
- `size` - размер (sm, md, lg)
- `type` - тип (pillColor, pillOutline, badgeColor, badgeModern)
- `icon` - позиция иконки (text, iconLeading, iconTrailing)
- `iconData` - данные иконки
- `onTap` - обработчик нажатия

**Цвета:** brand, gray, error, warning, success, blueLight, blue, indigo, purple, pink, orange, blueGray, grayBlue
**Размеры:** sm, md, lg
**Типы:** pillColor, pillOutline, badgeColor, badgeModern
**Иконки:** text, iconLeading, iconTrailing

### OneBadgeWithText

**Упрощенный бейдж только с текстом**

```dart
OneBadgeWithText(
  text: 'Beta',
  color: BadgeColor.brand,
  size: BadgeSize.md,
  type: BadgeType.pillColor,
)
```

### OneBadgeGroup

**Группа с бейджем и текстом**

```dart
OneBadgeGroup(
  badgeText: 'New',
  text: 'New feature released',
  badgeColor: BadgeColor.brand,
  showIcon: true,
  icon: ArrowIcon.arrowUpRight,
  onTap: () {},
)
```

**Параметры:**
- `badgeText` - текст бейджа
- `text` - основной текст
- `badgeColor` - цвет бейджа
- `showIcon` - показывать стрелку
- `icon` - кастомная иконка
- `onTap` - обработчик нажатия

---

### OneTag

**Тег с автоматическими состояниями hover/focus**

```dart
OneTag(
  viewModel: OneTagViewModel(
    text: 'Design',
    size: OneTagSize.md,
    type: OneTagType.default_,
    leadingWidget: Icon(Icons.tag, size: 16),
    trailingWidget: Icon(Icons.close, size: 16),
    onTap: () {},
  ),
)
```

**Параметры OneTagViewModel:**
- `text` - текст тега
- `size` - размер (sm, md, lg)
- `type` - тип (в данный момент default_)
- `leadingWidget` - виджет слева
- `trailingWidget` - виджет справа
- `onTap` - обработчик нажатия

**Размеры:** sm, md, lg
**Особенность:** автоматические hover и focus состояния

---

### OneProgressBar

**Прогресс бар с различными вариантами меток**

```dart
OneProgressBar(
  progress: 0.75,  // от 0.0 до 1.0
  labelType: ProgressBarLabelType.right,
  width: 320,
)
```

**Параметры:**
- `progress` - значение от 0.0 до 1.0
- `labelType` - тип метки
- `width` - ширина (опционально)

**Типы меток:**
- `none` - без метки
- `right` - метка справа
- `bottom` - метка снизу
- `topFloating` - плавающая метка сверху
- `bottomFloating` - плавающая метка снизу

---

### OneFeaturedIcon

**Иконка с декоративным фоном**

```dart
OneFeaturedIcon(
  viewModel: OneFeaturedIconViewModel(
    icon: GeneralIcon.star,
    type: OneFeaturedIconType.modern,
    size: OneFeaturedIconSize.lg,
    color: OneFeaturedIconColor.brand,
  ),
)
```

**Параметры OneFeaturedIconViewModel:**
- `icon` - иконка
- `type` - тип (lightOutline, lightCircleOutline, modern, gradient)
- `size` - размер (xs, sm, md, lg, xl)
- `color` - цвет (brand, gray, error, warning, success)

**Типы:** lightOutline, lightCircleOutline, modern, gradient
**Размеры:** xs, sm, md, lg, xl
**Цвета:** brand, gray, error, warning, success

---

### OneNavIcon

**Навигационная иконка с состояниями**

```dart
OneNavIcon(
  viewModel: OneNavIconViewModel(
    icon: GeneralIcon.home,
    isActive: true,
    size: OneNavIconSize.md,
    type: OneNavIconType.primary,
    color: OneNavIconColor.brand,
    onTap: () {},
  ),
)
```

**Параметры OneNavIconViewModel:**
- `icon` - иконка
- `isActive` - активное состояние
- `size` - размер (sm, md)
- `type` - тип (primary, secondary)
- `color` - цвет (brand, gray)
- `onTap` - обработчик нажатия

**Размеры:** sm, md
**Типы:** primary, secondary
**Цвета:** brand, gray

### OneNavIconWithText

**Навигационная иконка с текстом**

```dart
OneNavIconWithText(
  icon: GeneralIcon.home,
  text: 'Home',
  isActive: true,
  color: OneNavIconColor.brand,
  onTap: () {},
)
```

---

### OneCard

**Карточка с тенью и обработкой нажатий**

```dart
OneCard(
  withShadow: true,
  onTap: () {},
  child: Padding(
    padding: EdgeInsets.all(16),
    child: Text('Content'),
  ),
)
```

**Параметры:**
- `withShadow` - показывать тень
- `onTap` - обработчик нажатия
- `child` - содержимое

### OneCardContent

**Карточка с заголовком и основным текстом**

```dart
OneCardContent(
  title: 'Title',
  primaryText: 'Main content',
  secondaryText: 'Additional info',
  actions: [
    TextButton(
      onPressed: () {},
      child: Text('Action'),
    ),
  ],
)
```

---

### OneEmpty

**Пустое состояние с иконкой и кнопками**

```dart
OneEmpty(
  viewModel: EmptyViewModel(
    icon: GeneralIcon.inbox,
    title: 'No data',
    subtitle: 'Try refreshing or create new item',
    type: EmptyType.simple,
    hierarchy: EmptyHierarchy.primary,
    buttons: [
      OneButtonViewModel(
        text: 'Refresh',
        onTap: () {},
        hierarchy: OneButtonHierarchy.primary,
      ),
    ],
  ),
)
```

**Параметры EmptyViewModel:**
- `icon` - иконка
- `title` - заголовок
- `subtitle` - подзаголовок
- `type` - тип (simple, withFeaturedIcon)
- `hierarchy` - иерархия (primary, secondary, tertiary)
- `buttons` - список кнопок действий

**Типы:** simple, withFeaturedIcon
**Иерархии:** primary, secondary, tertiary

---

### OneTextField

**Текстовое поле ввода**

```dart
OneTextField(
  controller: controller,
  decoration: InputDecoration(
    labelText: 'Email',
    hintText: 'Enter email',
  ),
  keyboardType: TextInputType.emailAddress,
  validator: (value) => value?.isEmpty ?? true ? 'Required' : null,
)
```

### OnePhoneField

**Поле для ввода телефона**

```dart
OnePhoneField(
  controller: controller,
  onChanged: (phone) {},
  validator: (value) {},
)
```

### OneDropdownField

**Выпадающий список**

```dart
OneDropdownField<String>(
  items: ['Option 1', 'Option 2'],
  value: selectedValue,
  onChanged: (value) {},
  decoration: InputDecoration(labelText: 'Select'),
)
```

### OneMultiDropdownField

**Множественный выбор**

```dart
OneMultiDropdownField<String>(
  items: ['Option 1', 'Option 2', 'Option 3'],
  selectedItems: selectedValues,
  onChanged: (values) {},
  decoration: InputDecoration(labelText: 'Select multiple'),
)
```

### OneFieldLabel

**Метка для полей**

```dart
OneFieldLabel(
  label: 'Email',
  isRequired: true,
  child: OneTextField(...),
)
```

---

## 🔔 Утилиты

### SnackBar

**Показ уведомлений**

```dart
// Успех
context.showSnackBar(message: 'Success!');

// Ошибка
context.showSnackBar(message: 'Error!', isError: true);
```

### Async Value Widgets

**Виджеты для работы с асинхронными данными**

```dart
// Для одного объекта
AsyncValueWidget(
  value: ref.watch(futureProvider),
  data: (item) => Text(item.name),
)

// Для списка
AsyncValueList(
  value: ref.watch(listFutureProvider),
  itemBuilder: (context, item, index) => ListTile(
    title: Text(item.name),
  ),
)
```

### OneAdaptive

**Адаптивные лейауты**

```dart
OneAdaptive(
  mobile: (context) => MobileLayout(),
  tablet: (context) => TabletLayout(),
  desktop: (context) => DesktopLayout(),
)
```

### OneImage

**Загрузка изображений с placeholder**

```dart
OneImage(
  imageUrl: 'https://example.com/image.jpg',
  placeholder: 'assets/placeholder.png',
  errorWidget: Icon(Icons.error),
)
```

### OneLoader

**Индикатор загрузки**

```dart
OneLoader()  // Адаптивный лоадер
```

### OneError

**Виджет ошибки**

```dart
OneError(
  error: exception,
  stackTrace: stackTrace,
)
```

---

## 🎨 Иконки

**1000+ SVG иконок в 20+ категориях**

### Использование

```dart
// Через helper
OneIcons.get(
  GeneralIcon.check,
  context: context,
  size: 24,
  color: Colors.blue,
)

// Прямой доступ
GeneralIcon.check
ArrowIcon.arrowRight
AlertsFeedbackIcon.alertCircle
ChartIcon.barChart
```

### Категории

- **GeneralIcon** - общие иконки
- **ArrowIcon** - стрелки и навигация
- **AlertsFeedbackIcon** - ошибки, предупреждения
- **ChartIcon** - графики и диаграммы
- **CommunicationIcon** - сообщения, телефон
- **DevelopmentIcon** - код, терминал
- **EditorIcon** - редактирование текста
- **EducationIcon** - обучение
- **FileIcon** - документы, файлы
- **FinanceIcon** - деньги, банкинг
- **ImageIcon** - фото, медиа
- **LayoutIcon** - дизайн, макет
- **MapsIcon** - карты, локация
- **MediaIcon** - аудио, видео
- **SecurityIcon** - безопасность
- **ShapeIcon** - геометрия
- **SocialIcon** - социальные сети
- **TimeIcon** - часы, календарь
- **UserIcon** - пользователи, профили
- **WeatherIcon** - погода

---

## 📖 Документация

Полная документация и примеры доступны в репозитории:

- **GitHub**: https://github.com/sapar-io/one_uikit
- **Issues**: https://github.com/sapar-io/one_uikit/issues

## 📄 Лицензия

MIT License
