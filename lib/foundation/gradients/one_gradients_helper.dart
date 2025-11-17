part of 'one_gradients.dart';

/// Типы градиентов в One UI Kit
enum OneGradientType {
  // Gray gradients (14 total)
  gray01,
  gray02,
  gray03,
  gray04,
  gray05,
  gray06,
  gray07,
  gray08,
  gray09,
  gray10,
  gray11,
  gray12,
  gray13,
  gray14,

  // Brand gradients (7 total)
  brand01,
  brand02,
  brand03,
  brand04,
  brand05,
  brand06,
  brand07,

  // Linear gradients (91 total)
  linear01,
  linear02,
  linear03,
  linear04,
  linear05,
  linear06,
  linear07,
  linear08,
  linear09,
  linear10,
  linear11,
  linear12,
  linear13,
  linear14,
  linear15,
  linear16,
  linear17,
  linear18,
  linear19,
  linear20,
  linear21,
  linear22,
  linear23,
  linear24,
  linear25,
  linear26,
  linear27,
  linear28,
  linear29,
  linear30,
  linear31,
  linear32,
  linear33,
  linear34,
  linear35,
  linear36,
  linear37,
  linear38,
  linear39,
  linear40,
  linear41,
  linear42,
  linear43,
  linear44,
  linear45,
  linear46,
  linear47,
  linear48,
  linear49,
  linear50,
  linear51,
  linear52,
  linear53,
  linear54,
  linear55,
  linear56,
  linear57,
  linear58,
  linear59,
  linear60,
  linear61,
  linear62,
  linear63,
  linear64,
  linear65,
  linear66,
  linear67,
  linear68,
  linear69,
  linear70,
  linear71,
  linear72,
  linear73,
  linear74,
  linear75,
  linear76,
  linear77,
  linear78,
  linear79,
  linear80,
  linear81,
  linear82,
  linear83,
  linear84,
  linear85,
  linear86,
  linear87,
  linear88,
  linear89,
  linear90,
  linear91,
}

/// Helper класс для получения градиентов
class OneGradientsHelper {
  /// Получить градиент по типу
  static LinearGradient getGradient(OneGradientType type) {
    switch (type) {
      // Gray gradients
      case OneGradientType.gray01:
        return OneGradients.gray01;
      case OneGradientType.gray02:
        return OneGradients.gray02;
      case OneGradientType.gray03:
        return OneGradients.gray03;
      case OneGradientType.gray04:
        return OneGradients.gray04;
      case OneGradientType.gray05:
        return OneGradients.gray05;
      case OneGradientType.gray06:
        return OneGradients.gray06;
      case OneGradientType.gray07:
        return OneGradients.gray07;
      case OneGradientType.gray08:
        return OneGradients.gray08;
      case OneGradientType.gray09:
        return OneGradients.gray09;
      case OneGradientType.gray10:
        return OneGradients.gray10;
      case OneGradientType.gray11:
        return OneGradients.gray11;
      case OneGradientType.gray12:
        return OneGradients.gray12;
      case OneGradientType.gray13:
        return OneGradients.gray13;
      case OneGradientType.gray14:
        return OneGradients.gray14;

      // Brand gradients
      case OneGradientType.brand01:
        return OneGradients.brand01;
      case OneGradientType.brand02:
        return OneGradients.brand02;
      case OneGradientType.brand03:
        return OneGradients.brand03;
      case OneGradientType.brand04:
        return OneGradients.brand04;
      case OneGradientType.brand05:
        return OneGradients.brand05;
      case OneGradientType.brand06:
        return OneGradients.brand06;
      case OneGradientType.brand07:
        return OneGradients.brand07;

      // Linear gradients
      case OneGradientType.linear01:
        return OneGradients.linear01;
      case OneGradientType.linear02:
        return OneGradients.linear02;
      case OneGradientType.linear03:
        return OneGradients.linear03;
      case OneGradientType.linear04:
        return OneGradients.linear04;
      case OneGradientType.linear05:
        return OneGradients.linear05;
      case OneGradientType.linear06:
        return OneGradients.linear06;
      case OneGradientType.linear07:
        return OneGradients.linear07;
      case OneGradientType.linear08:
        return OneGradients.linear08;
      case OneGradientType.linear09:
        return OneGradients.linear09;
      case OneGradientType.linear10:
        return OneGradients.linear10;
      case OneGradientType.linear11:
        return OneGradients.linear11;
      case OneGradientType.linear12:
        return OneGradients.linear12;
      case OneGradientType.linear13:
        return OneGradients.linear13;
      case OneGradientType.linear14:
        return OneGradients.linear14;
      case OneGradientType.linear15:
        return OneGradients.linear15;
      case OneGradientType.linear16:
        return OneGradients.linear16;
      case OneGradientType.linear17:
        return OneGradients.linear17;
      case OneGradientType.linear18:
        return OneGradients.linear18;
      case OneGradientType.linear19:
        return OneGradients.linear19;
      case OneGradientType.linear20:
        return OneGradients.linear20;
      case OneGradientType.linear21:
        return OneGradients.linear21;
      case OneGradientType.linear22:
        return OneGradients.linear22;
      case OneGradientType.linear23:
        return OneGradients.linear23;
      case OneGradientType.linear24:
        return OneGradients.linear24;
      case OneGradientType.linear25:
        return OneGradients.linear25;
      case OneGradientType.linear26:
        return OneGradients.linear26;
      case OneGradientType.linear27:
        return OneGradients.linear27;
      case OneGradientType.linear28:
        return OneGradients.linear28;
      case OneGradientType.linear29:
        return OneGradients.linear29;
      case OneGradientType.linear30:
        return OneGradients.linear30;
      case OneGradientType.linear31:
        return OneGradients.linear31;
      case OneGradientType.linear32:
        return OneGradients.linear32;
      case OneGradientType.linear33:
        return OneGradients.linear33;
      case OneGradientType.linear34:
        return OneGradients.linear34;
      case OneGradientType.linear35:
        return OneGradients.linear35;
      case OneGradientType.linear36:
        return OneGradients.linear36;
      case OneGradientType.linear37:
        return OneGradients.linear37;
      case OneGradientType.linear38:
        return OneGradients.linear38;
      case OneGradientType.linear39:
        return OneGradients.linear39;
      case OneGradientType.linear40:
        return OneGradients.linear40;
      case OneGradientType.linear41:
        return OneGradients.linear41;
      case OneGradientType.linear42:
        return OneGradients.linear42;
      case OneGradientType.linear43:
        return OneGradients.linear43;
      case OneGradientType.linear44:
        return OneGradients.linear44;
      case OneGradientType.linear45:
        return OneGradients.linear45;
      case OneGradientType.linear46:
        return OneGradients.linear46;
      case OneGradientType.linear47:
        return OneGradients.linear47;
      case OneGradientType.linear48:
        return OneGradients.linear48;
      case OneGradientType.linear49:
        return OneGradients.linear49;
      case OneGradientType.linear50:
        return OneGradients.linear50;
      case OneGradientType.linear51:
        return OneGradients.linear51;
      case OneGradientType.linear52:
        return OneGradients.linear52;
      case OneGradientType.linear53:
        return OneGradients.linear53;
      case OneGradientType.linear54:
        return OneGradients.linear54;
      case OneGradientType.linear55:
        return OneGradients.linear55;
      case OneGradientType.linear56:
        return OneGradients.linear56;
      case OneGradientType.linear57:
        return OneGradients.linear57;
      case OneGradientType.linear58:
        return OneGradients.linear58;
      case OneGradientType.linear59:
        return OneGradients.linear59;
      case OneGradientType.linear60:
        return OneGradients.linear60;
      case OneGradientType.linear61:
        return OneGradients.linear61;
      case OneGradientType.linear62:
        return OneGradients.linear62;
      case OneGradientType.linear63:
        return OneGradients.linear63;
      case OneGradientType.linear64:
        return OneGradients.linear64;
      case OneGradientType.linear65:
        return OneGradients.linear65;
      case OneGradientType.linear66:
        return OneGradients.linear66;
      case OneGradientType.linear67:
        return OneGradients.linear67;
      case OneGradientType.linear68:
        return OneGradients.linear68;
      case OneGradientType.linear69:
        return OneGradients.linear69;
      case OneGradientType.linear70:
        return OneGradients.linear70;
      case OneGradientType.linear71:
        return OneGradients.linear71;
      case OneGradientType.linear72:
        return OneGradients.linear72;
      case OneGradientType.linear73:
        return OneGradients.linear73;
      case OneGradientType.linear74:
        return OneGradients.linear74;
      case OneGradientType.linear75:
        return OneGradients.linear75;
      case OneGradientType.linear76:
        return OneGradients.linear76;
      case OneGradientType.linear77:
        return OneGradients.linear77;
      case OneGradientType.linear78:
        return OneGradients.linear78;
      case OneGradientType.linear79:
        return OneGradients.linear79;
      case OneGradientType.linear80:
        return OneGradients.linear80;
      case OneGradientType.linear81:
        return OneGradients.linear81;
      case OneGradientType.linear82:
        return OneGradients.linear82;
      case OneGradientType.linear83:
        return OneGradients.linear83;
      case OneGradientType.linear84:
        return OneGradients.linear84;
      case OneGradientType.linear85:
        return OneGradients.linear85;
      case OneGradientType.linear86:
        return OneGradients.linear86;
      case OneGradientType.linear87:
        return OneGradients.linear87;
      case OneGradientType.linear88:
        return OneGradients.linear88;
      case OneGradientType.linear89:
        return OneGradients.linear89;
      case OneGradientType.linear90:
        return OneGradients.linear90;
      case OneGradientType.linear91:
        return OneGradients.linear91;
    }
  }
}

/// Extension для удобного использования градиентов через context
extension GradientExtension on BuildContext {
  /// Получить градиент по типу
  ///
  /// Пример:
  /// ```dart
  /// Container(
  ///   decoration: BoxDecoration(
  ///     gradient: context.gradient(OneGradientType.brand01),
  ///   ),
  /// )
  /// ```
  LinearGradient gradient(OneGradientType type) {
    return OneGradientsHelper.getGradient(type);
  }
}
