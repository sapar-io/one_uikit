# One UI Kit - Цветовая Система

Полная цветовая система на основе **Untitled UI Figma Kit**, обеспечивающая консистентность дизайна и поддержку светлой/темной темы.

## 📋 Содержание

- [Базовые цвета](#базовые-цвета)
- [Основные цвета (Primary)](#основные-цвета-primary)
- [Дополнительные цвета (Secondary)](#дополнительные-цвета-secondary)
- [Семантические типы цветов](#семантические-типы-цветов)
- [Использование](#использование)
- [Светлая / Темная тема](#светлая--темная-тема)

---

## Базовые цвета

### Base Colors
```dart
OneColors.white       // #FFFFFF
OneColors.black       // #000000
OneColors.transparent // #FFFFFF 0%
```

---

## Основные цвета (Primary)

### Gray (Light Mode)
Основная нейтральная палитра для светлой темы.

| Оттенок | HEX | Использование |
|---------|-----|---------------|
| 25 | `#FCFCFD` | Очень светлый фон |
| 50 | `#FAFAFA` | Светлый фон |
| 100 | `#F5F5F5` | Hover состояния |
| 200 | `#E9EAEB` | Границы |
| 300 | `#D5D7DA` | Разделители |
| 400 | `#A4A7AE` | Placeholder текст |
| 500 | `#717680` | Вспомогательный текст |
| 600 | `#535862` | Иконки |
| 700 | `#414651` | Основной текст |
| 800 | `#252B37` | Заголовки |
| 900 | `#181D27` | Акцентный текст |
| 950 | `#0A0D12` | Самый темный |

```dart
OneColors.grayLightMode[500]  // Прямой доступ
OneColorsVariables.gray500    // Через переменные
```

### Gray (Dark Mode)
Специальная палитра для темной темы (десатурированная).

| Оттенок | HEX | Использование |
|---------|-----|---------------|
| 25 | `#FAFAFA` | Самый светлый |
| 50 | `#F7F7F7` | |
| 100 | `#F0F0F1` | |
| 200 | `#ECECED` | |
| 300 | `#CECFD2` | |
| 400 | `#94979C` | |
| 500 | `#85888E` | Средний тон |
| 600 | `#61656C` | |
| 700 | `#373A41` | |
| 800 | `#22262F` | |
| 900 | `#13161B` | |
| 950 | `#0C0E12` | Самый темный для dark mode |

```dart
OneColors.grayDarkMode[500]
```

### Brand (Primary Color)
Основной цвет бренда (Purple/Violet по умолчанию).

| Оттенок | HEX | Использование |
|---------|-----|---------------|
| 25 | `#FCFAFF` | Фон для brand секций |
| 50 | `#F9F5FF` | Светлый фон |
| 100 | `#F4EBFF` | Очень светлый accent |
| 200 | `#E9D7FE` | Светлый accent |
| 300 | `#D6BBFB` | |
| 400 | `#B692F6` | |
| 500 | `#9E77ED` | Основной brand цвет |
| 600 | `#7F56D9` | Интерактивные элементы |
| 700 | `#6941C6` | Hover состояния |
| 800 | `#53389E` | Active состояния |
| 900 | `#42307D` | Темный accent |
| 950 | `#2C1C5F` | Самый темный |

```dart
OneColors.brand[600]           // Основной brand
context.brandColor             // Получить brand из темы
```

### Error
Цвета для ошибок и деструктивных действий.

| Оттенок | HEX | WCAG Contrast |
|---------|-----|---------------|
| 25 | `#FFFBFA` | AAA 21:1 |
| 50 | `#FEF3F2` | AAA 21:1 |
| 100 | `#FEE4E2` | AA 4.55 |
| 200 | `#FECDCA` | |
| 300 | `#FDA29B` | |
| 400 | `#F97066` | |
| 500 | `#F04438` | Основной error |
| 600 | `#D92D20` | Кнопки error |
| 700 | `#B42318` | |
| 800 | `#912018` | |
| 900 | `#7A271A` | |
| 950 | `#55160C` | |

```dart
OneColors.error[600]
OneColorsVariables.error600
```

### Warning
Предупреждения и внимание.

| Оттенок | HEX | WCAG Contrast |
|---------|-----|---------------|
| 25 | `#FFFCF5` | AA 5.29 |
| 50 | `#FFFAEB` | AA 5.20 |
| 100 | `#FEF0C7` | AA 4.78 |
| 200 | `#FEDF89` | |
| 300 | `#FEC84B` | |
| 400 | `#FDB022` | |
| 500 | `#F79009` | Основной warning |
| 600 | `#DC6803` | |
| 700 | `#B54708` | |
| 800 | `#93370D` | |
| 900 | `#7A2E0E` | |
| 950 | `#4E1D09` | |

```dart
OneColors.warning[600]
```

### Success
Успешные действия и подтверждения.

| Оттенок | HEX | WCAG Contrast |
|---------|-----|---------------|
| 25 | `#F6FEF9` | AA 5.54 |
| 50 | `#ECFDF3` | AA 5.39 |
| 100 | `#DCFAE6` | AA 5.11 |
| 200 | `#ABEFC6` | |
| 300 | `#75E0A7` | |
| 400 | `#47CD89` | |
| 500 | `#17B26A` | Основной success |
| 600 | `#079455` | |
| 700 | `#067647` | |
| 800 | `#085D3A` | |
| 900 | `#074D31` | |
| 950 | `#053321` | |

```dart
OneColors.success[600]
```

---

## Дополнительные цвета (Secondary)

### Gray Variants

#### Gray Blue
```dart
OneColors.grayBlue[500]  // #4E5BA6
```

#### Gray Cool
```dart
OneColors.grayCool[500]  // #5D6B98
```

#### Gray Modern
```dart
OneColors.grayModern[500]  // #697586
```

#### Gray Neutral
```dart
OneColors.grayNeutral[500]  // #6C737F
```

#### Gray Iron
```dart
OneColors.grayIron[500]  // #70707B
```

#### Gray True
```dart
OneColors.grayTrue[500]  // #737373
```

#### Gray Warm
```dart
OneColors.grayWarm[500]  // #79716B
```

### Green Variants

#### Moss
```dart
OneColors.moss[500]  // #669F2A
```

#### Green Light
```dart
OneColors.greenLight[500]  // #66C61C
```

#### Green
```dart
OneColors.green[500]  // #16B364
```

#### Teal
```dart
OneColors.teal[500]  // #15B79E
```

### Blue Variants

#### Cyan
```dart
OneColors.cyan[500]  // #06AED4
```

#### Blue Light
```dart
OneColors.blueLight[500]  // #0BA5EC
```

#### Blue
```dart
OneColors.blue[500]  // #2E90FA
```

#### Blue Dark
```dart
OneColors.blueDark[500]  // #2970FF
```

#### Indigo
```dart
OneColors.indigo[500]  // #6172F3
```

### Purple/Pink Variants

#### Violet
```dart
OneColors.violet[500]  // #875BF7
```

#### Purple
```dart
OneColors.purple[500]  // #7A5AF8
```

#### Fuchsia
```dart
OneColors.fuchsia[500]  // #D444F1
```

#### Pink
```dart
OneColors.pink[500]  // #EE46BC
```

#### Rose
```dart
OneColors.rose[500]  // #F63D68
```

### Orange/Yellow Variants

#### Orange Dark
```dart
OneColors.orangeDark[500]  // #FF4405
```

#### Orange
```dart
OneColors.orange[500]  // #EF6820
```

#### Yellow
```dart
OneColors.yellow[500]  // #EAAA08
```

---

## Семантические типы цветов

### Text Colors

```dart
context.color.text(TextColorType.primary)        // Основной текст
context.color.text(TextColorType.secondary)      // Вторичный текст
context.color.text(TextColorType.tertiary)       // Третичный текст
context.color.text(TextColorType.quaternary)     // Четвертичный текст
context.color.text(TextColorType.disabled)       // Отключенный текст
context.color.text(TextColorType.placeholder)    // Placeholder
context.color.text(TextColorType.brandPrimary)   // Brand текст
context.color.text(TextColorType.errorPrimary)   // Текст ошибки
context.color.text(TextColorType.warningPrimary) // Текст предупреждения
context.color.text(TextColorType.successPrimary) // Текст успеха
```

### Border Colors

```dart
context.color.border(BorderColorType.primary)       // Основная граница
context.color.border(BorderColorType.secondary)     // Вторичная граница
context.color.border(BorderColorType.tertiary)      // Третичная граница
context.color.border(BorderColorType.disabled)      // Отключенная граница
context.color.border(BorderColorType.brand)         // Brand граница
context.color.border(BorderColorType.error)         // Граница ошибки
context.color.border(BorderColorType.errorSubtle)   // Тонкая граница ошибки
context.color.border(BorderColorType.success)       // Граница успеха
context.color.border(BorderColorType.warning)       // Граница предупреждения
```

### Background Colors

```dart
context.color.background(BackgroundColorType.primary)          // Основной фон
context.color.background(BackgroundColorType.primaryAlt)       // Альтернативный основной
context.color.background(BackgroundColorType.primaryHover)     // Hover состояние
context.color.background(BackgroundColorType.secondary)        // Вторичный фон
context.color.background(BackgroundColorType.tertiary)         // Третичный фон
context.color.background(BackgroundColorType.quaternary)       // Четвертичный фон
context.color.background(BackgroundColorType.disabled)         // Отключенный фон
context.color.background(BackgroundColorType.overlay)          // Overlay
context.color.background(BackgroundColorType.brandPrimary)     // Brand фон
context.color.background(BackgroundColorType.brandSolid)       // Solid brand
context.color.background(BackgroundColorType.errorPrimary)     // Фон ошибки
context.color.background(BackgroundColorType.warningPrimary)   // Фон предупреждения
context.color.background(BackgroundColorType.successPrimary)   // Фон успеха
```

### Foreground Colors

```dart
context.color.foreground(ForegroundColorType.primary)        // Основной foreground
context.color.foreground(ForegroundColorType.secondary)      // Вторичный
context.color.foreground(ForegroundColorType.tertiary)       // Третичный
context.color.foreground(ForegroundColorType.quaternary)     // Четвертичный
context.color.foreground(ForegroundColorType.quinary)        // Пятеричный
context.color.foreground(ForegroundColorType.disabled)       // Отключенный
context.color.foreground(ForegroundColorType.brandPrimary)   // Brand foreground
context.color.foreground(ForegroundColorType.errorPrimary)   // Foreground ошибки
```

### Utility Colors

Прямой доступ к конкретным оттенкам с автоматической адаптацией для темной темы.

```dart
context.color.utility(UtilityColorType.gray50)
context.color.utility(UtilityColorType.gray100)
context.color.utility(UtilityColorType.brand600)
context.color.utility(UtilityColorType.error500)
context.color.utility(UtilityColorType.success600)
context.color.utility(UtilityColorType.blue500)
context.color.utility(UtilityColorType.purple600)
// И т.д. для всех цветов
```

### Alpha Colors

Цвета с прозрачностью.

```dart
context.color.alpha(AlphaColorType.white10)   // Белый с 10% opacity
context.color.alpha(AlphaColorType.white50)   // Белый с 50% opacity
context.color.alpha(AlphaColorType.black30)   // Черный с 30% opacity
// white10, white20, white30, ..., white100
// black10, black20, black30, ..., black100
```

### Shadow Colors

Цвета для теней.

```dart
context.color.shadow(ShadowColorType.xs)
context.color.shadow(ShadowColorType.sm1)
context.color.shadow(ShadowColorType.md1)
context.color.shadow(ShadowColorType.lg1)
context.color.shadow(ShadowColorType.xl1)
context.color.shadow(ShadowColorType.xxl)
```

---

## Использование

### Прямой доступ к цветам

```dart
// Через OneColors
Container(
  color: OneColors.brand[600],
  child: Text(
    'Brand Text',
    style: TextStyle(color: OneColors.white),
  ),
)

// Через OneColorsVariables
Container(
  color: OneColorsVariables.brand600,
  border: Border.all(color: OneColorsVariables.gray300),
)
```

### Семантические цвета с контекстом

```dart
Container(
  color: context.color.background(BackgroundColorType.primary),
  child: Text(
    'Текст',
    style: TextStyle(
      color: context.color.text(TextColorType.primary),
    ),
  ),
)
```

### В компонентах

```dart
class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.color.background(BackgroundColorType.secondary),
        border: Border.all(
          color: context.color.border(BorderColorType.primary),
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          Text(
            'Заголовок',
            style: TextStyle(
              color: context.color.text(TextColorType.primary),
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Описание',
            style: TextStyle(
              color: context.color.text(TextColorType.secondary),
            ),
          ),
        ],
      ),
    );
  }
}
```

### Кастомный Brand Color

```dart
MaterialApp(
  theme: ThemeData(
    colorScheme: ColorScheme.light(
      primary: OneColors.blue[600]!,  // Используем blue как brand
    ),
  ),
  darkTheme: ThemeData(
    colorScheme: ColorScheme.dark(
      primary: OneColors.blue[500]!,
    ),
  ),
)
```

---

## Светлая / Темная тема

Все семантические цвета автоматически адаптируются к теме:

```dart
// Автоматически переключается между светлой и темной темой
Container(
  color: context.color.background(BackgroundColorType.primary),
  // Light mode: white (#FFFFFF)
  // Dark mode: gray950 (#0A0D12)
)

Text(
  'Текст',
  style: TextStyle(
    color: context.color.text(TextColorType.primary),
    // Light mode: gray900 (#181D27)
    // Dark mode: gray50 (#FAFAFA)
  ),
)
```

### Utility Colors в темной теме

Utility colors автоматически инвертируются:

```dart
context.color.utility(UtilityColorType.gray50)
// Light mode: gray50 (#FAFAFA)
// Dark mode: gray900 (#181D27) - инвертируется!

context.color.utility(UtilityColorType.brand600)
// Light mode: brand600
// Dark mode: brand400 - автоматически светлее для контраста
```

---

## WCAG Accessibility

Все основные цвета включают информацию о контрастности WCAG 2.2:

- **AAA** - Контраст 7:1+ (отлично для мелкого текста)
- **AA** - Контраст 4.5:1+ (хорошо для обычного текста)

Примеры безопасных комбинаций:

```dart
// ✅ AAA Контраст (21:1)
Text(
  'Текст',
  style: TextStyle(color: OneColors.white),
  // На фоне OneColors.black
)

// ✅ AA Контраст (6.38:1)
Text(
  'Текст',
  style: TextStyle(color: OneColors.brand[600]),
  // На фоне OneColors.white
)

// ✅ AA Контраст для ошибок (6.39:1)
Text(
  'Ошибка',
  style: TextStyle(color: OneColors.error[600]),
  // На фоне OneColors.white
)
```

---

## Лучшие практики

1. **Используйте семантические типы** вместо прямых цветов для автоматической поддержки темной темы:
   ```dart
   // ✅ Хорошо
   color: context.color.text(TextColorType.primary)

   // ❌ Плохо (не адаптируется к теме)
   color: OneColors.grayLightMode[900]
   ```

2. **Brand color через context**:
   ```dart
   // ✅ Хорошо
   color: context.brandColor[600]

   // ❌ Хардкод
   color: OneColors.brand[600]
   ```

3. **Используйте правильные оттенки**:
   - 600 для основных интерактивных элементов
   - 500 для secondary элементов
   - 700 для hover состояний
   - 50-100 для фонов

4. **Проверяйте контрастность** для текста:
   - Используйте минимум AA (4.5:1) для обычного текста
   - Используйте AAA (7:1) для мелкого текста

---

## Примеры использования

### Кнопка с Brand Color

```dart
ElevatedButton(
  style: ElevatedButton.styleFrom(
    backgroundColor: context.color.background(BackgroundColorType.brandSolid),
    foregroundColor: context.color.text(TextColorType.white),
  ),
  onPressed: () {},
  child: Text('Кнопка'),
)
```

### Карточка с границей

```dart
Container(
  decoration: BoxDecoration(
    color: context.color.background(BackgroundColorType.primary),
    border: Border.all(
      color: context.color.border(BorderColorType.primary),
    ),
    borderRadius: BorderRadius.circular(12),
  ),
  padding: EdgeInsets.all(16),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'Заголовок',
        style: TextStyle(
          color: context.color.text(TextColorType.primary),
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
      ),
      SizedBox(height: 8),
      Text(
        'Описание карточки',
        style: TextStyle(
          color: context.color.text(TextColorType.secondary),
          fontSize: 14,
        ),
      ),
    ],
  ),
)
```

### Сообщение об ошибке

```dart
Container(
  decoration: BoxDecoration(
    color: context.color.background(BackgroundColorType.errorPrimary),
    border: Border.all(
      color: context.color.border(BorderColorType.error),
    ),
    borderRadius: BorderRadius.circular(8),
  ),
  padding: EdgeInsets.all(12),
  child: Row(
    children: [
      Icon(
        Icons.error_outline,
        color: context.color.foreground(ForegroundColorType.errorPrimary),
      ),
      SizedBox(width: 8),
      Text(
        'Произошла ошибка',
        style: TextStyle(
          color: context.color.text(TextColorType.errorPrimary),
        ),
      ),
    ],
  ),
)
```

---

**One UI Kit** - Консистентная цветовая система для ваших приложений! 🎨
