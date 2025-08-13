import 'package:flutter/material.dart';

extension TypographyExtension on BuildContext {
  OneTypography get typography => OneTypography(this);
}

class OneTypography {
  final BuildContext context;

  OneTypography(this.context);

  // Display 2xl
  TextStyle get display2xlLight => _display2xl(FontWeight.w300);
  TextStyle get display2xlRegular => _display2xl();
  TextStyle get display2xlMedium => _display2xl(FontWeight.w500);
  TextStyle get display2xlSemibold => _display2xl(FontWeight.w600);
  TextStyle get display2xlBold => _display2xl(FontWeight.w700);
  TextStyle get display2xlBlack => _display2xl(FontWeight.w900);

  TextStyle _display2xl([FontWeight weight = FontWeight.w400]) {
    return baseStyle(72, 90, weight, letterSpacing: -0.02 * 72);
  }

  // Display xl
  TextStyle get displayXlLight => _displayXl(FontWeight.w300);
  TextStyle get displayXlRegular => _displayXl();
  TextStyle get displayXlMedium => _displayXl(FontWeight.w500);
  TextStyle get displayXlSemibold => _displayXl(FontWeight.w600);
  TextStyle get displayXlBold => _displayXl(FontWeight.w700);
  TextStyle get displayXlBlack => _displayXl(FontWeight.w900);

  TextStyle _displayXl([FontWeight weight = FontWeight.w400]) {
    return baseStyle(60, 72, weight, letterSpacing: -0.02 * 60);
  }

  // Display lg
  TextStyle get displayLgLight => _displayLg(FontWeight.w300);
  TextStyle get displayLgRegular => _displayLg();
  TextStyle get displayLgMedium => _displayLg(FontWeight.w500);
  TextStyle get displayLgSemibold => _displayLg(FontWeight.w600);
  TextStyle get displayLgBold => _displayLg(FontWeight.w700);
  TextStyle get displayLgBlack => _displayLg(FontWeight.w900);

  TextStyle _displayLg([FontWeight weight = FontWeight.w400]) {
    return baseStyle(48, 60, weight, letterSpacing: -0.02 * 48);
  }

  // Display md
  TextStyle get displayMdLight => _displayMd(FontWeight.w300);
  TextStyle get displayMdRegular => _displayMd();
  TextStyle get displayMdMedium => _displayMd(FontWeight.w500);
  TextStyle get displayMdSemibold => _displayMd(FontWeight.w600);
  TextStyle get displayMdBold => _displayMd(FontWeight.w700);
  TextStyle get displayMdBlack => _displayMd(FontWeight.w900);

  TextStyle _displayMd([FontWeight weight = FontWeight.w400]) {
    return baseStyle(36, 44, weight, letterSpacing: -0.02 * 36);
  }

  // Display sm
  TextStyle get displaySmLight => _displaySm(FontWeight.w300);
  TextStyle get displaySmRegular => _displaySm();
  TextStyle get displaySmMedium => _displaySm(FontWeight.w500);
  TextStyle get displaySmSemibold => _displaySm(FontWeight.w600);
  TextStyle get displaySmBold => _displaySm(FontWeight.w700);
  TextStyle get displaySmBlack => _displaySm(FontWeight.w900);

  TextStyle _displaySm([FontWeight weight = FontWeight.w400]) {
    return baseStyle(30, 38, weight);
  }

  // Display xs
  TextStyle get displayXsLight => _displayXs(FontWeight.w300);
  TextStyle get displayXsRegular => _displayXs();
  TextStyle get displayXsMedium => _displayXs(FontWeight.w500);
  TextStyle get displayXsSemibold => _displayXs(FontWeight.w600);
  TextStyle get displayXsBold => _displayXs(FontWeight.w700);
  TextStyle get displayXsBlack => _displayXs(FontWeight.w900);

  TextStyle _displayXs([FontWeight weight = FontWeight.w400]) {
    return baseStyle(24, 32, weight);
  }

  // Text xl
  TextStyle get textXlLight => _textXl(FontWeight.w300);
  TextStyle get textXlRegular => _textXl();
  TextStyle get textXlMedium => _textXl(FontWeight.w500);
  TextStyle get textXlSemibold => _textXl(FontWeight.w600);
  TextStyle get textXlBold => _textXl(FontWeight.w700);
  TextStyle get textXlBlack => _textXl(FontWeight.w900);

  TextStyle _textXl([FontWeight weight = FontWeight.w400]) {
    return baseStyle(20, 30, weight);
  }

  // Text lg
  TextStyle get textLgLight => _textLg(FontWeight.w300);
  TextStyle get textLgRegular => _textLg();
  TextStyle get textLgMedium => _textLg(FontWeight.w500);
  TextStyle get textLgSemibold => _textLg(FontWeight.w600);
  TextStyle get textLgBold => _textLg(FontWeight.w700);
  TextStyle get textLgBlack => _textLg(FontWeight.w900);

  TextStyle _textLg([FontWeight weight = FontWeight.w400]) {
    return baseStyle(18, 28, weight);
  }

  // Text md
  TextStyle get textMdLight => _textMd(FontWeight.w300);
  TextStyle get textMdRegular => _textMd();
  TextStyle get textMdMedium => _textMd(FontWeight.w500);
  TextStyle get textMdSemibold => _textMd(FontWeight.w600);
  TextStyle get textMdBold => _textMd(FontWeight.w700);
  TextStyle get textMdBlack => _textMd(FontWeight.w900);

  TextStyle _textMd([FontWeight weight = FontWeight.w400]) {
    return baseStyle(16, 24, weight);
  }

  // Text sm
  TextStyle get textSmLight => _textSm(FontWeight.w300);
  TextStyle get textSmRegular => _textSm();
  TextStyle get textSmMedium => _textSm(FontWeight.w500);
  TextStyle get textSmSemibold => _textSm(FontWeight.w600);
  TextStyle get textSmBold => _textSm(FontWeight.w700);
  TextStyle get textSmBlack => _textSm(FontWeight.w900);

  TextStyle _textSm([FontWeight weight = FontWeight.w400]) {
    return baseStyle(14, 20, weight);
  }

  // Text xxs
  TextStyle get textXxsLight => _textXxs(FontWeight.w300);
  TextStyle get textXxsRegular => _textXxs();
  TextStyle get textXxsMedium => _textXxs(FontWeight.w500);
  TextStyle get textXxsSemibold => _textXxs(FontWeight.w600);
  TextStyle get textXxsBold => _textXxs(FontWeight.w700);
  TextStyle get textXxsBlack => _textXxs(FontWeight.w900);

  TextStyle _textXxs([FontWeight weight = FontWeight.w400]) {
    return baseStyle(13, 18, weight);
  }

  // Text xs
  TextStyle get textXsLight => _textXs(FontWeight.w300);
  TextStyle get textXsRegular => _textXs();
  TextStyle get textXsMedium => _textXs(FontWeight.w500);
  TextStyle get textXsSemibold => _textXs(FontWeight.w600);
  TextStyle get textXsBold => _textXs(FontWeight.w700);
  TextStyle get textXsBlack => _textXs(FontWeight.w900);

  TextStyle _textXs([FontWeight weight = FontWeight.w400]) {
    return baseStyle(12, 18, weight);
  }

  TextStyle baseStyle(
    double fontSize,
    double lineHeight,
    FontWeight fontWeight, {
    double letterSpacing = 0,
  }) {
    final textScaler = MediaQuery.textScalerOf(context);
    return TextStyle(
      // fontFamily: 'Montserrat',
      fontSize: textScaler.scale(fontSize),
      height: lineHeight / fontSize,
      fontWeight: fontWeight,
      letterSpacing: textScaler.scale(letterSpacing.abs()),
    );
  }
}
