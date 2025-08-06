import 'dart:ui';

enum OneButtonAlignType { left, center, right }

extension OneButtonAlignTypeX on OneButtonAlignType {
  String get title {
    switch (this) {
      case OneButtonAlignType.left:
        return "Слева";
      case OneButtonAlignType.center:
        return "По центру";
      case OneButtonAlignType.right:
        return "Справа";
    }
  }

  TextAlign get textAlign {
    switch (this) {
      case OneButtonAlignType.left:
        return TextAlign.left;
      case OneButtonAlignType.center:
        return TextAlign.center;
      case OneButtonAlignType.right:
        return TextAlign.right;
    }
  }
}
