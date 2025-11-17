# One UI Kit - Градиенты

Полная коллекция градиентов на основе **Untitled UI Figma Kit** для создания красивых фонов и эффектов глубины.

## 📋 Содержание

- [Gray Gradients](#gray-gradients)
- [Brand Gradients](#brand-gradients)
- [Linear Gradients](#linear-gradients)
- [Использование](#использование)
- [Примеры](#примеры)

---

## Gray Gradients

Нейтральные градиенты для фонов и добавления тонкой глубины и текстуры.

### Светлые Gray градиенты

| Градиент | Цвета | Угол | Использование |
|----------|-------|------|---------------|
| `gray01` | Gray 50 → White | 180° | Очень светлый фон |
| `gray02` | Gray 100 → White | 180° | Светлый фон с глубиной |
| `gray03` | Gray 100 → Gray 25 | 180° | Тонкий светлый фон |
| `gray04` | Gray 100 → Gray 50 | 180° | Карточки, модальные окна |
| `gray05` | Gray 200 → Gray 25 | 180° | Разделители с глубиной |
| `gray06` | Gray 200 → Gray 50 | 180° | Вторичные фоны |
| `gray07` | Gray 200 → Gray 100 | 180° | Subtle backgrounds |

```dart
// Светлый фон
Container(
  decoration: BoxDecoration(
    gradient: OneGradients.gray01,
  ),
)
```

### Темные Gray градиенты

| Градиент | Цвета | Угол | Использование |
|----------|-------|------|---------------|
| `gray08` | Gray 600 → Gray 500 | 90° | Темные кнопки |
| `gray09` | Gray 700 → Gray 600 | 45° | Навигация |
| `gray10` | Gray 800 → Gray 600 | 45° | Dark headers |
| `gray11` | Gray 800 → Gray 600 | 90° | Sidebars |
| `gray12` | Gray 800 → Gray 700 | 26.5° | Тонкий темный фон |
| `gray13` | Gray 900 → Gray 600 | 45° | Очень темные фоны |
| `gray14` | Gray 900 → Gray 700 | 45° | Dark mode backgrounds |

```dart
// Темный фон для dark mode
Container(
  decoration: BoxDecoration(
    gradient: OneGradients.gray14,
    borderRadius: BorderRadius.circular(12),
  ),
)
```

---

## Brand Gradients

Градиенты на основе основного цвета бренда (Purple по умолчанию).

| Градиент | Цвета | Угол | Использование |
|----------|-------|------|---------------|
| `brand01` | Brand 600 → Brand 500 | 90° | Основные кнопки |
| `brand02` | Brand 700 → Brand 600 | 45° | Акцентные элементы |
| `brand03` | Brand 800 → Brand 600 | 45° | Интерактивные карточки |
| `brand04` | Brand 800 → Brand 600 | 90° | Headers |
| `brand05` | Brand 800 → Brand 700 | 26.5° | Subtle brand background |
| `brand06` | Brand 900 → Brand 600 | 45° | Яркие акценты |
| `brand07` | Brand 900 → Brand 700 | 45° | Hero sections |

```dart
// Кнопка с brand градиентом
Container(
  decoration: BoxDecoration(
    gradient: OneGradients.brand01,
    borderRadius: BorderRadius.circular(8),
  ),
  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
  child: Text('Нажми меня', style: TextStyle(color: Colors.white)),
)
```

---

## Linear Gradients

91 ярких цветных градиентов для создания выразительных фонов и привлечения внимания.

### Примеры популярных градиентов

| Градиент | Цвета | Описание |
|----------|-------|----------|
| `linear01` | #A5C0EE → #FBC5EC | Голубой → Розовый |
| `linear02` | #FBC2EB → #A18CD1 | Розовый → Фиолетовый |
| `linear03` | #FFD1FF → #FAD0C4 | Светло-розовый → Персиковый |
| `linear12` | #D57EEB → #8EC5FC | Фиолетовый → Голубой |
| `linear25` | #84FAB0 → #8FFF85 | Зеленый → Салатовый |
| `linear43` | #E2B0FF → #9F44D3 | Светло-фиолетовый → Темно-фиолетовый |
| `linear59` | #43CBFF → #9708CC | Голубой → Фиолетовый |
| `linear68` | #F9D423 → #E14FAD | Желтый → Розовый |
| `linear78` | #6A11CB → #2575FC | Фиолетовый → Синий |
| `linear91` | #764BA2 → #667EEA | Фиолетовый → Индиго |

### Все Linear градиенты

**01-10: Пастельные и нежные**
```dart
OneGradients.linear01  // Голубой-розовый
OneGradients.linear02  // Розовый-фиолетовый
OneGradients.linear03  // Светло-розовый-персиковый
OneGradients.linear04  // Персиковый-коралловый
OneGradients.linear05  // Коралловый-кремовый
OneGradients.linear06  // Розовый-коралловый
OneGradients.linear07  // Розовый-светло-розовый
OneGradients.linear08  // Лавандовый-розовый
OneGradients.linear09  // Голубой-светло-розовый
OneGradients.linear10  // Лавандовый-оранжевый
```

**11-20: Яркие и сочные**
```dart
OneGradients.linear11  // Бежевый-оранжевый
OneGradients.linear12  // Фиолетовый-голубой
OneGradients.linear13  // Фиолетовый-голубой
OneGradients.linear14  // Розовый-бирюзовый
OneGradients.linear15  // Светло-серый-голубой
OneGradients.linear16  // Бежевый-кремовый
OneGradients.linear17  // Желтый-коралловый
OneGradients.linear18  // Розовый-желтый
OneGradients.linear19  // Персиковый-бежевый
OneGradients.linear20  // Кремовый-лавандовый
```

**21-30: Природные и свежие**
```dart
OneGradients.linear21  // Кремовый-голубой
OneGradients.linear22  // Зеленый-светло-зеленый
OneGradients.linear23  // Голубой-светло-голубой
OneGradients.linear24  // Голубой-светло-голубой
OneGradients.linear25  // Зеленый-салатовый
OneGradients.linear26  // Синий-голубой
OneGradients.linear27  // Бирюзовый-лавандовый
OneGradients.linear28  // Серо-голубой-голубой
OneGradients.linear29  // Фиолетовый-мятный
OneGradients.linear30  // Бирюзовый-розовый
```

**31-40: Энергичные и динамичные**
```dart
OneGradients.linear31  // Салатовый-розовый
OneGradients.linear32  // Мятный-желтый
OneGradients.linear33  // Зеленый-желтый
OneGradients.linear34  // Желто-зеленый-голубой
OneGradients.linear35  // Светло-голубой-желтый
OneGradients.linear36  // Лавандовый-серый
OneGradients.linear37  // Розовый-голубой
OneGradients.linear38  // Фиолетовый-белый
OneGradients.linear39  // Розовый-лавандовый
OneGradients.linear40  // Лавандовый-серо-голубой
```

**41-50: Утонченные**
```dart
OneGradients.linear41  // Серо-голубой-голубой
OneGradients.linear42  // Серый-светло-серый
OneGradients.linear43  // Светло-фиолетовый-темно-фиолетовый
OneGradients.linear44  // Фиолетовый-индиго
OneGradients.linear45  // Голубой-синий
OneGradients.linear46  // Серо-голубой-синий
OneGradients.linear47  // Розовый-фиолетовый
OneGradients.linear48  // Серо-фиолетовый-фиолетовый
OneGradients.linear49  // Розовый-голубой
OneGradients.linear50  // Мятный-розовый
```

**51-60: Глубокие и насыщенные**
```dart
OneGradients.linear51  // Лавандовый-серо-фиолетовый
OneGradients.linear52  // Светло-желтый-фиолетовый
OneGradients.linear53  // Золотой-фиолетовый
OneGradients.linear54  // Индиго-оранжевый
OneGradients.linear55  // Желтый-синий
OneGradients.linear56  // Золотой-фиолетовый
OneGradients.linear57  // Голубой-розовый
OneGradients.linear58  // Розовый-фиолетовый
OneGradients.linear59  // Голубой-фиолетовый
OneGradients.linear60  // Синий-фиолетовый
```

**61-70: Интенсивные**
```dart
OneGradients.linear61  // Фиолетовый-голубой
OneGradients.linear62  // Голубой-синий
OneGradients.linear63  // Синий-зеленый
OneGradients.linear64  // Желтый-желтый
OneGradients.linear65  // Розовый-желтый
OneGradients.linear66  // Оранжевый-желтый
OneGradients.linear67  // Персиковый-розовый
OneGradients.linear68  // Желтый-розовый
OneGradients.linear69  // Розовый-оранжевый
OneGradients.linear70  // Оранжевый-красный
```

**71-80: Выразительные**
```dart
OneGradients.linear71  // Красный-фиолетовый
OneGradients.linear72  // Розовый-фиолетовый
OneGradients.linear73  // Фиолетовый-розовый
OneGradients.linear74  // Голубой-розовый
OneGradients.linear75  // Розовый-красный
OneGradients.linear76  // Розовый-розовый
OneGradients.linear77  // Розовый-индиго
OneGradients.linear78  // Фиолетовый-синий
OneGradients.linear79  // Синий-синий
OneGradients.linear80  // Голубой-синий
```

**81-91: Премиальные**
```dart
OneGradients.linear81  // Синий-голубой
OneGradients.linear82  // Мятный-индиго
OneGradients.linear83  // Фиолетовый-розовый
OneGradients.linear84  // Фиолетовый-розовый
OneGradients.linear85  // Фиолетовый-розовый
OneGradients.linear86  // Фиолетовый-фиолетовый
OneGradients.linear87  // Фиолетовый-фиолетовый
OneGradients.linear88  // Фиолетовый-индиго
OneGradients.linear89  // Фиолетовый-фиолетовый
OneGradients.linear90  // Темно-фиолетовый-фиолетовый
OneGradients.linear91  // Фиолетовый-индиго
```

---

## Использование

### Прямой доступ

```dart
Container(
  decoration: BoxDecoration(
    gradient: OneGradients.linear01,
  ),
)
```

### Через enum и extension

```dart
Container(
  decoration: BoxDecoration(
    gradient: context.gradient(OneGradientType.brand01),
  ),
)
```

### Через helper

```dart
Container(
  decoration: BoxDecoration(
    gradient: OneGradientsHelper.getGradient(OneGradientType.linear59),
  ),
)
```

---

## Примеры

### Карточка с градиентом

```dart
Container(
  height: 200,
  decoration: BoxDecoration(
    gradient: OneGradients.linear12,
    borderRadius: BorderRadius.circular(16),
    boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.1),
        blurRadius: 20,
        offset: Offset(0, 10),
      ),
    ],
  ),
  padding: EdgeInsets.all(24),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'Заголовок',
        style: TextStyle(
          color: Colors.white,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(height: 12),
      Text(
        'Описание с красивым градиентным фоном',
        style: TextStyle(
          color: Colors.white.withOpacity(0.9),
          fontSize: 16,
        ),
      ),
    ],
  ),
)
```

### Кнопка с Brand градиентом

```dart
GestureDetector(
  onTap: () {},
  child: Container(
    decoration: BoxDecoration(
      gradient: OneGradients.brand01,
      borderRadius: BorderRadius.circular(12),
      boxShadow: [
        BoxShadow(
          color: OneColors.brand[600]!.withOpacity(0.3),
          blurRadius: 12,
          offset: Offset(0, 4),
        ),
      ],
    ),
    padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.rocket_launch, color: Colors.white),
        SizedBox(width: 8),
        Text(
          'Начать',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    ),
  ),
)
```

### AppBar с градиентом

```dart
Container(
  decoration: BoxDecoration(
    gradient: OneGradients.gray14,
  ),
  child: AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    title: Text('Мое приложение'),
  ),
)
```

### Hero секция

```dart
Container(
  height: 400,
  width: double.infinity,
  decoration: BoxDecoration(
    gradient: OneGradients.linear59,
  ),
  child: Stack(
    children: [
      // Overlay для лучшей читаемости текста
      Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.black.withOpacity(0.3),
              Colors.black.withOpacity(0.6),
            ],
          ),
        ),
      ),
      // Контент
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Добро пожаловать',
              style: TextStyle(
                color: Colors.white,
                fontSize: 48,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Создавайте удивительные вещи',
              style: TextStyle(
                color: Colors.white.withOpacity(0.9),
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    ],
  ),
)
```

### Фон экрана

```dart
Scaffold(
  body: Container(
    decoration: BoxDecoration(
      gradient: OneGradients.gray01,
    ),
    child: SafeArea(
      child: Column(
        children: [
          // Ваш контент
        ],
      ),
    ),
  ),
)
```

### Анимированный градиент

```dart
class AnimatedGradientButton extends StatefulWidget {
  @override
  _AnimatedGradientButtonState createState() => _AnimatedGradientButtonState();
}

class _AnimatedGradientButtonState extends State<AnimatedGradientButton> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) => setState(() => _isPressed = true),
      onTapUp: (_) => setState(() => _isPressed = false),
      onTapCancel: () => setState(() => _isPressed = false),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 150),
        decoration: BoxDecoration(
          gradient: _isPressed ? OneGradients.brand02 : OneGradients.brand01,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: OneColors.brand[600]!.withOpacity(_isPressed ? 0.2 : 0.4),
              blurRadius: _isPressed ? 8 : 16,
              offset: Offset(0, _isPressed ? 2 : 6),
            ),
          ],
        ),
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        child: Text(
          'Нажми меня',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
```

### Градиент в тексте (TextStyle)

```dart
ShaderMask(
  shaderCallback: (bounds) => OneGradients.linear59.createShader(bounds),
  child: Text(
    'Градиентный текст',
    style: TextStyle(
      fontSize: 48,
      fontWeight: FontWeight.bold,
      color: Colors.white, // Должен быть белым для работы shader
    ),
  ),
)
```

### Overlay с градиентом

```dart
Stack(
  children: [
    // Фоновое изображение
    Image.network(
      'https://example.com/image.jpg',
      fit: BoxFit.cover,
      width: double.infinity,
      height: 300,
    ),
    // Градиентный overlay
    Container(
      height: 300,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.transparent,
            Colors.black.withOpacity(0.7),
          ],
        ),
      ),
    ),
    // Контент поверх
    Positioned(
      bottom: 24,
      left: 24,
      right: 24,
      child: Text(
        'Заголовок на изображении',
        style: TextStyle(
          color: Colors.white,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  ],
)
```

---

## Лучшие практики

1. **Используйте Gray градиенты** для нейтральных фонов и добавления тонкой глубины
   ```dart
   // ✅ Хорошо
   Container(decoration: BoxDecoration(gradient: OneGradients.gray01))

   // ❌ Слишком яркий фон
   Container(decoration: BoxDecoration(gradient: OneGradients.linear59))
   ```

2. **Brand градиенты** для важных интерактивных элементов
   ```dart
   // ✅ Кнопки, CTAs
   Container(decoration: BoxDecoration(gradient: OneGradients.brand01))
   ```

3. **Linear градиенты** для акцентов и hero-секций
   ```dart
   // ✅ Hero sections, featured cards
   Container(decoration: BoxDecoration(gradient: OneGradients.linear12))
   ```

4. **Добавляйте overlay** для текста на ярких градиентах
   ```dart
   // ✅ Текст читаемый
   Stack([
     Container(gradient: OneGradients.linear59),
     Container(color: Colors.black.withOpacity(0.3)),
     Text('Читаемый текст', style: TextStyle(color: Colors.white)),
   ])
   ```

5. **Комбинируйте с shadows** для глубины
   ```dart
   // ✅ Объемная карточка
   BoxDecoration(
     gradient: OneGradients.brand01,
     boxShadow: [
       BoxShadow(
         color: OneColors.brand[600]!.withOpacity(0.3),
         blurRadius: 16,
         offset: Offset(0, 8),
       ),
     ],
   )
   ```

---

**One UI Kit** - 112 градиентов для создания потрясающих интерфейсов! 🎨✨
