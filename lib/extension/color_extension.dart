import 'package:flutter/material.dart';

extension ColorExtension on Color {
  int get colorValue {
    final int rr = (r * 255).round();
    final int gg = (g * 255).round();
    final int bb = (b * 255).round();

    // Создаем 32-битное значение цвета
    final int colorValue = (255 << 24) | (rr << 16) | (gg << 8) | bb;
    return colorValue;
  }

  MaterialColor get materialColor {
    List strengths = <double>[.05, .1, .2, .3, .4, .5, .6, .7, .8, .9, .95];
    Map<int, Color> swatch = {};

    final int rr = (r * 255).round();
    final int gg = (g * 255).round();
    final int bb = (b * 255).round();

    for (int i = 0; i < 11; i++) {
      final double ds = 0.5 - strengths[i];
      swatch[(strengths[i] * 1000).round()] = Color.fromRGBO(
        rr + ((ds < 0 ? rr : (255 - rr)) * ds).round(),
        gg + ((ds < 0 ? gg : (255 - gg)) * ds).round(),
        bb + ((ds < 0 ? bb : (255 - bb)) * ds).round(),
        1,
      );
    }
    return MaterialColor(colorValue, swatch);
  }
}
