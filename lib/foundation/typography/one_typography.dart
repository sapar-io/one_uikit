import 'package:flutter/material.dart';

/// Typography system based on Untitled UI Figma Kit
///
/// Uses Inter font family with 4 font weights:
/// - Regular (400)
/// - Medium (500)
/// - Semibold (600)
/// - Bold (700)
///
/// Includes 12 text styles from Display 2xl to Text xs
extension TypographyExtension on BuildContext {
  OneTypography get typography => OneTypography(this);
}

class OneTypography {
  final BuildContext context;

  OneTypography(this.context);

  // ============================================================================
  // DISPLAY 2XL
  // Font size: 72px / 4.5rem | Line height: 90px / 5.625rem | Letter spacing: -2%
  // ============================================================================

  TextStyle get display2xlRegular => _display2xl();
  TextStyle get display2xlMedium => _display2xl(FontWeight.w500);
  TextStyle get display2xlSemibold => _display2xl(FontWeight.w600);
  TextStyle get display2xlBold => _display2xl(FontWeight.w700);

  TextStyle _display2xl([FontWeight weight = FontWeight.w400]) {
    return baseStyle(72, 90, weight, letterSpacing: -0.02 * 72);
  }

  // ============================================================================
  // DISPLAY XL
  // Font size: 60px / 3.75rem | Line height: 72px / 4.5rem | Letter spacing: -2%
  // ============================================================================

  TextStyle get displayXlRegular => _displayXl();
  TextStyle get displayXlMedium => _displayXl(FontWeight.w500);
  TextStyle get displayXlSemibold => _displayXl(FontWeight.w600);
  TextStyle get displayXlBold => _displayXl(FontWeight.w700);

  TextStyle _displayXl([FontWeight weight = FontWeight.w400]) {
    return baseStyle(60, 72, weight, letterSpacing: -0.02 * 60);
  }

  // ============================================================================
  // DISPLAY LG
  // Font size: 48px / 3rem | Line height: 60px / 3.75rem | Letter spacing: -2%
  // ============================================================================

  TextStyle get displayLgRegular => _displayLg();
  TextStyle get displayLgMedium => _displayLg(FontWeight.w500);
  TextStyle get displayLgSemibold => _displayLg(FontWeight.w600);
  TextStyle get displayLgBold => _displayLg(FontWeight.w700);

  TextStyle _displayLg([FontWeight weight = FontWeight.w400]) {
    return baseStyle(48, 60, weight, letterSpacing: -0.02 * 48);
  }

  // ============================================================================
  // DISPLAY MD
  // Font size: 36px / 2.25rem | Line height: 44px / 2.75rem | Letter spacing: -2%
  // ============================================================================

  TextStyle get displayMdRegular => _displayMd();
  TextStyle get displayMdMedium => _displayMd(FontWeight.w500);
  TextStyle get displayMdSemibold => _displayMd(FontWeight.w600);
  TextStyle get displayMdBold => _displayMd(FontWeight.w700);

  TextStyle _displayMd([FontWeight weight = FontWeight.w400]) {
    return baseStyle(36, 44, weight, letterSpacing: -0.02 * 36);
  }

  // ============================================================================
  // DISPLAY SM
  // Font size: 30px / 1.875rem | Line height: 38px / 2.375rem
  // ============================================================================

  TextStyle get displaySmRegular => _displaySm();
  TextStyle get displaySmMedium => _displaySm(FontWeight.w500);
  TextStyle get displaySmSemibold => _displaySm(FontWeight.w600);
  TextStyle get displaySmBold => _displaySm(FontWeight.w700);

  TextStyle _displaySm([FontWeight weight = FontWeight.w400]) {
    return baseStyle(30, 38, weight);
  }

  // ============================================================================
  // DISPLAY XS
  // Font size: 24px / 1.5rem | Line height: 32px / 2rem
  // ============================================================================

  TextStyle get displayXsRegular => _displayXs();
  TextStyle get displayXsMedium => _displayXs(FontWeight.w500);
  TextStyle get displayXsSemibold => _displayXs(FontWeight.w600);
  TextStyle get displayXsBold => _displayXs(FontWeight.w700);

  TextStyle _displayXs([FontWeight weight = FontWeight.w400]) {
    return baseStyle(24, 32, weight);
  }

  // ============================================================================
  // TEXT XL
  // Font size: 20px / 1.25rem | Line height: 30px / 1.875rem
  // ============================================================================

  TextStyle get textXlRegular => _textXl();
  TextStyle get textXlMedium => _textXl(FontWeight.w500);
  TextStyle get textXlSemibold => _textXl(FontWeight.w600);
  TextStyle get textXlBold => _textXl(FontWeight.w700);

  TextStyle _textXl([FontWeight weight = FontWeight.w400]) {
    return baseStyle(20, 30, weight);
  }

  // ============================================================================
  // TEXT LG
  // Font size: 18px / 1.125rem | Line height: 28px / 1.75rem
  // ============================================================================

  TextStyle get textLgRegular => _textLg();
  TextStyle get textLgMedium => _textLg(FontWeight.w500);
  TextStyle get textLgSemibold => _textLg(FontWeight.w600);
  TextStyle get textLgBold => _textLg(FontWeight.w700);

  TextStyle _textLg([FontWeight weight = FontWeight.w400]) {
    return baseStyle(18, 28, weight);
  }

  // ============================================================================
  // TEXT MD
  // Font size: 16px / 1rem | Line height: 24px / 1.5rem
  // ============================================================================

  TextStyle get textMdRegular => _textMd();
  TextStyle get textMdMedium => _textMd(FontWeight.w500);
  TextStyle get textMdSemibold => _textMd(FontWeight.w600);
  TextStyle get textMdBold => _textMd(FontWeight.w700);

  TextStyle _textMd([FontWeight weight = FontWeight.w400]) {
    return baseStyle(16, 24, weight);
  }

  // ============================================================================
  // TEXT SM
  // Font size: 14px / 0.875rem | Line height: 20px / 1.25rem
  // ============================================================================

  TextStyle get textSmRegular => _textSm();
  TextStyle get textSmMedium => _textSm(FontWeight.w500);
  TextStyle get textSmSemibold => _textSm(FontWeight.w600);
  TextStyle get textSmBold => _textSm(FontWeight.w700);

  TextStyle _textSm([FontWeight weight = FontWeight.w400]) {
    return baseStyle(14, 20, weight);
  }

  // ============================================================================
  // TEXT XS
  // Font size: 12px / 0.75rem | Line height: 18px / 1.125rem
  // ============================================================================

  TextStyle get textXsRegular => _textXs();
  TextStyle get textXsMedium => _textXs(FontWeight.w500);
  TextStyle get textXsSemibold => _textXs(FontWeight.w600);
  TextStyle get textXsBold => _textXs(FontWeight.w700);

  TextStyle _textXs([FontWeight weight = FontWeight.w400]) {
    return baseStyle(12, 18, weight);
  }

  // ============================================================================
  // BASE STYLE
  // ============================================================================

  /// Creates a base TextStyle with responsive sizing
  ///
  /// Parameters:
  /// - [fontSize]: Font size in pixels
  /// - [lineHeight]: Line height in pixels
  /// - [fontWeight]: Font weight (Regular 400, Medium 500, Semibold 600, Bold 700)
  /// - [letterSpacing]: Letter spacing in pixels (used for Display styles with -2%)
  TextStyle baseStyle(
    double fontSize,
    double lineHeight,
    FontWeight fontWeight, {
    double letterSpacing = 0,
  }) {
    final textScaler = MediaQuery.textScalerOf(context);
    return TextStyle(
      fontFamily: 'Inter',
      fontSize: textScaler.scale(fontSize),
      height: lineHeight / fontSize,
      fontWeight: fontWeight,
      letterSpacing: textScaler.scale(letterSpacing.abs()),
    );
  }
}
