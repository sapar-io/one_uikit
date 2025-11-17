part of 'one_colors.dart';

enum TextColorType {
  primary,
  primaryOnBrand,
  secondary,
  secondaryHover,
  secondaryOnBrand,
  tertiary,
  tertiaryHover,
  tertiaryOnBrand,
  quaternary,
  quaternaryOnBrand,
  white,
  disabled,
  placeholder,
  placeholderSubtle,
  brandPrimary,
  brandSecondary,
  brandTertiary,
  brandTertiaryAlt,
  errorPrimary,
  warningPrimary,
  successPrimary,
}

enum BorderColorType {
  primary,
  secondary,
  tertiary,
  disabled,
  disabledSubtle,
  brand,
  brandAlt,
  error,
  errorSubtle,
  success,
  successSubtle,
  warning,
  warningSubtle,
}

enum ForegroundColorType {
  primary,
  secondary,
  secondaryHover,
  tertiary,
  tertiaryHover,
  quaternary,
  quaternaryHover,
  quinary,
  quinaryHover,
  senary,
  white,
  disabled,
  disabledSubtle,
  brandPrimary,
  brandPrimaryAlt,
  brandSecondary,
  errorPrimary,
  errorSecondary,
  warningPrimary,
  warningSecondary,
  successPrimary,
  successSecondary,
}

enum BackgroundColorType {
  primary,
  primaryAlt,
  primaryHover,
  primarySolid,
  secondary,
  secondaryAlt,
  secondaryHover,
  secondarySubtle,
  secondarySolid,
  tertiary,
  quaternary,
  active,
  disabled,
  disabledSubtle,
  overlay,
  brandPrimary,
  brandPrimaryAlt,
  brandSecondary,
  brandSolid,
  brandSolidHover,
  brandSection,
  brandSectionSubtle,
  errorPrimary,
  errorSecondary,
  errorSolid,
  warningPrimary,
  warningSecondary,
  warningSolid,
  successPrimary,
  successSecondary,
  successSolid,
}

enum AlphaColorType {
  white10,
  white20,
  white30,
  white40,
  white50,
  white60,
  white70,
  white80,
  white90,
  white100,
  black10,
  black20,
  black30,
  black40,
  black50,
  black60,
  black70,
  black80,
  black90,
  black100,
}

enum UtilityColorType {
  gray50,
  gray100,
  gray200,
  gray300,
  gray400,
  gray500,
  gray600,
  gray700,
  gray800,
  gray900,
  brand50,
  brand50Alt,
  brand100,
  brand100Alt,
  brand200,
  brand200Alt,
  brand300,
  brandAlt,
  brand400,
  brand400Alt,
  brand500,
  brand500Alt,
  brand600,
  brand600Alt,
  brand700,
  brand700Alt,
  brand800,
  brand800Alt,
  brand900,
  brand900Alt,
  error50,
  error100,
  error200,
  error300,
  error400,
  error500,
  error600,
  error700,
  warning50,
  warning100,
  warning200,
  warning300,
  warning400,
  warning500,
  warning600,
  warning700,
  success50,
  success100,
  success200,
  success300,
  success400,
  success500,
  success600,
  success700,
  grayBlue50,
  grayBlue100,
  grayBlue200,
  grayBlue300,
  grayBlue400,
  grayBlue500,
  grayBlue600,
  grayBlue700,
  blueLight50,
  blueLight100,
  blueLight200,
  blueLight300,
  blueLight400,
  blueLight500,
  blueLight600,
  blueLight700,
  blue50,
  blue100,
  blue200,
  blue300,
  blue400,
  blue500,
  blue600,
  blue700,
  blueDark50,
  blueDark100,
  blueDark200,
  blueDark300,
  blueDark400,
  blueDark500,
  blueDark600,
  blueDark700,
  indigo50,
  indigo100,
  indigo200,
  indigo300,
  indigo400,
  indigo500,
  indigo600,
  indigo700,
  purple50,
  purple100,
  purple200,
  purple300,
  purple400,
  purple500,
  purple600,
  purple700,
  fuchsia50,
  fuchsia100,
  fuchsia200,
  fuchsia300,
  fuchsia400,
  fuchsia500,
  fuchsia600,
  fuchsia700,
  pink50,
  pink100,
  pink200,
  pink300,
  pink400,
  pink500,
  pink600,
  pink700,
  orangeDark50,
  orangeDark100,
  orangeDark200,
  orangeDark300,
  orangeDark400,
  orangeDark500,
  orangeDark600,
  orangeDark700,
  orange50,
  orange100,
  orange200,
  orange300,
  orange400,
  orange500,
  orange600,
  orange700,
  yellow50,
  yellow100,
  yellow200,
  yellow300,
  yellow400,
  yellow500,
  yellow600,
  yellow700,
  rose50,
  rose100,
  rose200,
  rose300,
  rose400,
  rose500,
  rose600,
  rose700,
  violet50,
  violet100,
  violet200,
  violet300,
  violet400,
  violet500,
  violet600,
  violet700,
  teal50,
  teal100,
  teal200,
  teal300,
  teal400,
  teal500,
  teal600,
  teal700,
  cyan50,
  cyan100,
  cyan200,
  cyan300,
  cyan400,
  cyan500,
  cyan600,
  cyan700,
  moss50,
  moss100,
  moss200,
  moss300,
  moss400,
  moss500,
  moss600,
  moss700,
  greenLight50,
  greenLight100,
  greenLight200,
  greenLight300,
  greenLight400,
  greenLight500,
  greenLight600,
  greenLight700,
  green50,
  green100,
  green200,
  green300,
  green400,
  green500,
  green600,
  green700,
}

enum ShadowColorType {
  xs,
  sm1,
  sm2,
  md1,
  md2,
  lg1,
  lg2,
  lg3,
  xl1,
  xl2,
  xl3,
  xxl1,
  xxl2,
  xxxl1,
  xxxl2,
  skeumorphicInner,
  skeumorphicInnerBorder,
}

class OneColorsHelper {
  static Color getTextColor(
    TextColorType type,
    bool isLight,
    MaterialColor brandColor,
  ) {
    switch (type) {
      case TextColorType.primary:
        return isLight
            ? OneColorsVariables.textPrimaryLight
            : OneColorsVariables.textPrimaryDark;
      case TextColorType.primaryOnBrand:
        return isLight
            ? OneColorsVariables.textPrimaryOnBrandLight
            : OneColorsVariables.textPrimaryOnBrandDark;
      case TextColorType.secondary:
        return isLight
            ? OneColorsVariables.textSecondaryLight
            : OneColorsVariables.textSecondaryDark;
      case TextColorType.secondaryHover:
        return isLight
            ? OneColorsVariables.textSecondaryHoverLight
            : OneColorsVariables.textSecondaryHoverDark;
      case TextColorType.secondaryOnBrand:
        return isLight
            ? OneColorsVariables.textSecondaryOnBrandLight(brandColor)
            : OneColorsVariables.textSecondaryOnBrandDark;
      case TextColorType.tertiary:
        return isLight
            ? OneColorsVariables.textTertiaryLight
            : OneColorsVariables.textTertiaryDark;
      case TextColorType.tertiaryHover:
        return isLight
            ? OneColorsVariables.textTertiaryHoverLight
            : OneColorsVariables.textTertiaryHoverDark;
      case TextColorType.tertiaryOnBrand:
        return isLight
            ? OneColorsVariables.textTertiaryOnBrandLight(brandColor)
            : OneColorsVariables.textTertiaryOnBrandDark;
      case TextColorType.quaternary:
        return isLight
            ? OneColorsVariables.textQuaternaryLight
            : OneColorsVariables.textQuaternaryDark;
      case TextColorType.quaternaryOnBrand:
        return isLight
            ? OneColorsVariables.textQuaternaryOnBrandLight(brandColor)
            : OneColorsVariables.textQuaternaryOnBrandDark;
      case TextColorType.white:
        return OneColorsVariables.textWhite;
      case TextColorType.disabled:
        return isLight
            ? OneColorsVariables.textDisabledLight
            : OneColorsVariables.textDisabledDark;
      case TextColorType.placeholder:
        return isLight
            ? OneColorsVariables.textPlaceholderLight
            : OneColorsVariables.textPlaceholderDark;
      case TextColorType.placeholderSubtle:
        return isLight
            ? OneColorsVariables.textPlaceholderSubtleLight
            : OneColorsVariables.textPlaceholderSubtleDark;
      case TextColorType.brandPrimary:
        return isLight
            ? OneColorsVariables.textBrandPrimaryLight(brandColor)
            : OneColorsVariables.textBrandPrimaryDark;
      case TextColorType.brandSecondary:
        return isLight
            ? OneColorsVariables.textBrandSecondaryLight(brandColor)
            : OneColorsVariables.textBrandSecondaryDark;
      case TextColorType.brandTertiary:
        return isLight
            ? OneColorsVariables.textBrandTertiaryLight(brandColor)
            : OneColorsVariables.textBrandTertiaryDark;
      case TextColorType.brandTertiaryAlt:
        return isLight
            ? OneColorsVariables.textBrandTertiaryAltLight(brandColor)
            : OneColorsVariables.textBrandTertiaryAltDark;
      case TextColorType.errorPrimary:
        return isLight
            ? OneColorsVariables.textErrorPrimaryLight
            : OneColorsVariables.textErrorPrimaryDark;
      case TextColorType.warningPrimary:
        return isLight
            ? OneColorsVariables.textWarningPrimaryLight
            : OneColorsVariables.textWarningPrimaryDark;
      case TextColorType.successPrimary:
        return isLight
            ? OneColorsVariables.textSuccessPrimaryLight
            : OneColorsVariables.textSuccessPrimaryDark;
    }
  }

  static Color getBorderColor(
    BorderColorType type,
    bool isLight,
    MaterialColor brandColor,
  ) {
    switch (type) {
      case BorderColorType.primary:
        return isLight
            ? OneColorsVariables.borderPrimaryLight
            : OneColorsVariables.borderPrimaryDark;
      case BorderColorType.secondary:
        return isLight
            ? OneColorsVariables.borderSecondaryLight
            : OneColorsVariables.borderSecondaryDark;
      case BorderColorType.tertiary:
        return isLight
            ? OneColorsVariables.borderTertiaryLight
            : OneColorsVariables.borderTertiaryDark;
      case BorderColorType.disabled:
        return isLight
            ? OneColorsVariables.borderDisabledLight
            : OneColorsVariables.borderDisabledDark;
      case BorderColorType.disabledSubtle:
        return isLight
            ? OneColorsVariables.borderDisabledSubtleLight
            : OneColorsVariables.borderDisabledSubtleDark;
      case BorderColorType.brand:
        return isLight
            ? OneColorsVariables.borderBrandLight(brandColor)
            : OneColorsVariables.borderBrandDark(brandColor);
      case BorderColorType.brandAlt:
        return isLight
            ? OneColorsVariables.borderBrandAltLight(brandColor)
            : OneColorsVariables.borderBrandAltDark;
      case BorderColorType.error:
        return isLight
            ? OneColorsVariables.borderErrorLight
            : OneColorsVariables.borderErrorDark;
      case BorderColorType.errorSubtle:
        return isLight
            ? OneColorsVariables.borderErrorSubtleLight
            : OneColorsVariables.borderErrorSubtleDark;
      case BorderColorType.success:
        return isLight
            ? OneColorsVariables.borderSuccessLight
            : OneColorsVariables.borderSuccessDark;
      case BorderColorType.successSubtle:
        return isLight
            ? OneColorsVariables.borderSuccessSubtleLight
            : OneColorsVariables.borderSuccessSubtleDark;
      case BorderColorType.warning:
        return isLight
            ? OneColorsVariables.borderWarningLight
            : OneColorsVariables.borderWarningDark;
      case BorderColorType.warningSubtle:
        return isLight
            ? OneColorsVariables.borderWarningSubtleLight
            : OneColorsVariables.borderWarningSubtleDark;
    }
  }

  static Color getForegroundColor(
    ForegroundColorType type,
    bool isLight,
    MaterialColor brandColor,
  ) {
    switch (type) {
      case ForegroundColorType.primary:
        return isLight
            ? OneColorsVariables.fgPrimaryLight
            : OneColorsVariables.fgPrimaryDark;
      case ForegroundColorType.secondary:
        return isLight
            ? OneColorsVariables.fgSecondaryLight
            : OneColorsVariables.fgSecondaryDark;
      case ForegroundColorType.secondaryHover:
        return isLight
            ? OneColorsVariables.fgSecondaryHoverLight
            : OneColorsVariables.fgSecondaryHoverDark;
      case ForegroundColorType.tertiary:
        return isLight
            ? OneColorsVariables.fgTertiaryLight
            : OneColorsVariables.fgTertiaryDark;
      case ForegroundColorType.tertiaryHover:
        return isLight
            ? OneColorsVariables.fgTertiaryHoverLight
            : OneColorsVariables.fgTertiaryHoverDark;
      case ForegroundColorType.quaternary:
        return isLight
            ? OneColorsVariables.fgQuaternaryLight
            : OneColorsVariables.fgQuaternaryDark;
      case ForegroundColorType.quaternaryHover:
        return isLight
            ? OneColorsVariables.fgQuaternaryHoverLight
            : OneColorsVariables.fgQuaternaryHoverDark;
      case ForegroundColorType.quinary:
        return isLight
            ? OneColorsVariables.fgQuinaryLight
            : OneColorsVariables.fgQuinaryDark;
      case ForegroundColorType.quinaryHover:
        return isLight
            ? OneColorsVariables.fgQuinaryHoverLight
            : OneColorsVariables.fgQuinaryHoverDark;
      case ForegroundColorType.senary:
        return isLight
            ? OneColorsVariables.fgSenaryLight
            : OneColorsVariables.fgSenaryDark;
      case ForegroundColorType.white:
        return OneColorsVariables.fgWhite;
      case ForegroundColorType.disabled:
        return isLight
            ? OneColorsVariables.fgDisabledLight
            : OneColorsVariables.fgDisabledDark;
      case ForegroundColorType.disabledSubtle:
        return isLight
            ? OneColorsVariables.fgDisabledSubtleLight
            : OneColorsVariables.fgDisabledSubtleDark;
      case ForegroundColorType.brandPrimary:
        return isLight
            ? OneColorsVariables.fgBrandPrimaryLight(brandColor)
            : OneColorsVariables.fgBrandPrimaryDark(brandColor);
      case ForegroundColorType.brandPrimaryAlt:
        return isLight
            ? OneColorsVariables.fgBrandPrimaryAltLight(brandColor)
            : OneColorsVariables.fgBrandPrimaryAltDark;
      case ForegroundColorType.brandSecondary:
        return isLight
            ? OneColorsVariables.fgBrandSecondaryLight(brandColor)
            : OneColorsVariables.fgBrandSecondaryDark(brandColor);
      case ForegroundColorType.errorPrimary:
        return isLight
            ? OneColorsVariables.fgErrorPrimaryLight
            : OneColorsVariables.fgErrorPrimaryDark;
      case ForegroundColorType.errorSecondary:
        return isLight
            ? OneColorsVariables.fgErrorSecondaryLight
            : OneColorsVariables.fgErrorSecondaryDark;
      case ForegroundColorType.warningPrimary:
        return isLight
            ? OneColorsVariables.fgWarningPrimaryLight
            : OneColorsVariables.fgWarningPrimaryDark;
      case ForegroundColorType.warningSecondary:
        return isLight
            ? OneColorsVariables.fgWarningSecondaryLight
            : OneColorsVariables.fgWarningSecondaryDark;
      case ForegroundColorType.successPrimary:
        return isLight
            ? OneColorsVariables.fgSuccessPrimaryLight
            : OneColorsVariables.fgSuccessPrimaryDark;
      case ForegroundColorType.successSecondary:
        return isLight
            ? OneColorsVariables.fgSuccessSecondaryLight
            : OneColorsVariables.fgSuccessSecondaryDark;
    }
  }

  static Color getBackgroundColor(
    BackgroundColorType type,
    bool isLight,
    MaterialColor brandColor,
  ) {
    switch (type) {
      case BackgroundColorType.primary:
        return isLight
            ? OneColorsVariables.bgPrimaryLight
            : OneColorsVariables.bgPrimaryDark;
      case BackgroundColorType.primaryAlt:
        return isLight
            ? OneColorsVariables.bgPrimaryAltLight
            : OneColorsVariables.bgPrimaryAltDark;
      case BackgroundColorType.primaryHover:
        return isLight
            ? OneColorsVariables.bgPrimaryHoverLight
            : OneColorsVariables.bgPrimaryHoverDark;
      case BackgroundColorType.primarySolid:
        return isLight
            ? OneColorsVariables.bgPrimarySolidLight
            : OneColorsVariables.bgPrimarySolidDark;
      case BackgroundColorType.secondary:
        return isLight
            ? OneColorsVariables.bgSecondaryLight
            : OneColorsVariables.bgSecondaryDark;
      case BackgroundColorType.secondaryAlt:
        return isLight
            ? OneColorsVariables.bgSecondaryAltLight
            : OneColorsVariables.bgSecondaryAltDark;
      case BackgroundColorType.secondaryHover:
        return isLight
            ? OneColorsVariables.bgSecondaryHoverLight
            : OneColorsVariables.bgSecondaryHoverDark;
      case BackgroundColorType.secondarySubtle:
        return isLight
            ? OneColorsVariables.bgSecondarySubtleLight
            : OneColorsVariables.bgSecondarySubtleDark;
      case BackgroundColorType.secondarySolid:
        return isLight
            ? OneColorsVariables.bgSecondarySolidLight
            : OneColorsVariables.bgSecondarySolidDark;
      case BackgroundColorType.tertiary:
        return isLight
            ? OneColorsVariables.bgTertiaryLight
            : OneColorsVariables.bgTertiaryDark;
      case BackgroundColorType.quaternary:
        return isLight
            ? OneColorsVariables.bgQuaternaryLight
            : OneColorsVariables.bgQuaternaryDark;
      case BackgroundColorType.active:
        return isLight
            ? OneColorsVariables.bgActiveLight
            : OneColorsVariables.bgActiveDark;
      case BackgroundColorType.disabled:
        return isLight
            ? OneColorsVariables.bgDisabledLight
            : OneColorsVariables.bgDisabledDark;
      case BackgroundColorType.disabledSubtle:
        return isLight
            ? OneColorsVariables.bgDisabledSubtleLight
            : OneColorsVariables.bgDisabledSubtleDark;
      case BackgroundColorType.overlay:
        return isLight
            ? OneColorsVariables.bgOverlayLight
            : OneColorsVariables.bgOverlayDark;
      case BackgroundColorType.brandPrimary:
        return isLight
            ? OneColorsVariables.bgBrandPrimaryLight(brandColor)
            : OneColorsVariables.bgBrandPrimaryDark(brandColor);
      case BackgroundColorType.brandPrimaryAlt:
        return isLight
            ? OneColorsVariables.bgBrandPrimaryAltLight(brandColor)
            : OneColorsVariables.bgBrandPrimaryAltDark;
      case BackgroundColorType.brandSecondary:
        return isLight
            ? OneColorsVariables.bgBrandSecondaryLight(brandColor)
            : OneColorsVariables.bgBrandSecondaryDark(brandColor);
      case BackgroundColorType.brandSolid:
        return isLight
            ? OneColorsVariables.bgBrandSolidLight(brandColor)
            : OneColorsVariables.bgBrandSolidDark(brandColor);
      case BackgroundColorType.brandSolidHover:
        return isLight
            ? OneColorsVariables.bgBrandSolidHoverLight(brandColor)
            : OneColorsVariables.bgBrandSolidHoverDark(brandColor);
      case BackgroundColorType.brandSection:
        return isLight
            ? OneColorsVariables.bgBrandSectionLight(brandColor)
            : OneColorsVariables.bgBrandSectionDark;
      case BackgroundColorType.brandSectionSubtle:
        return isLight
            ? OneColorsVariables.bgBrandSectionSubtleLight(brandColor)
            : OneColorsVariables.bgBrandSectionSubtleDark;
      case BackgroundColorType.errorPrimary:
        return isLight
            ? OneColorsVariables.bgErrorPrimaryLight
            : OneColorsVariables.bgErrorPrimaryDark;
      case BackgroundColorType.errorSecondary:
        return isLight
            ? OneColorsVariables.bgErrorSecondaryLight
            : OneColorsVariables.bgErrorSecondaryDark;
      case BackgroundColorType.errorSolid:
        return isLight
            ? OneColorsVariables.bgErrorSolidLight
            : OneColorsVariables.bgErrorSolidDark;
      case BackgroundColorType.warningPrimary:
        return isLight
            ? OneColorsVariables.bgWarningPrimaryLight
            : OneColorsVariables.bgWarningPrimaryDark;
      case BackgroundColorType.warningSecondary:
        return isLight
            ? OneColorsVariables.bgWarningSecondaryLight
            : OneColorsVariables.bgWarningSecondaryDark;
      case BackgroundColorType.warningSolid:
        return isLight
            ? OneColorsVariables.bgWarningSolidLight
            : OneColorsVariables.bgWarningSolidDark;
      case BackgroundColorType.successPrimary:
        return isLight
            ? OneColorsVariables.bgSuccessPrimaryLight
            : OneColorsVariables.bgSuccessPrimaryDark;
      case BackgroundColorType.successSecondary:
        return isLight
            ? OneColorsVariables.bgSuccessSecondaryLight
            : OneColorsVariables.bgSuccessSecondaryDark;
      case BackgroundColorType.successSolid:
        return isLight
            ? OneColorsVariables.bgSuccessSolidLight
            : OneColorsVariables.bgSuccessSolidDark;
    }
  }

  static Color getAlphaColor(
    AlphaColorType type,
    bool isLight,
    MaterialColor brandColor,
  ) {
    switch (type) {
      case AlphaColorType.white10:
        return isLight
            ? OneColorsVariables.white.withValues(alpha: 0.1)
            : OneColorsVariables.gray950.withValues(alpha: 0.1);
      case AlphaColorType.white20:
        return isLight
            ? OneColorsVariables.white.withValues(alpha: 0.2)
            : OneColorsVariables.gray950.withValues(alpha: 0.2);
      case AlphaColorType.white30:
        return isLight
            ? OneColorsVariables.white.withValues(alpha: 0.3)
            : OneColorsVariables.gray950.withValues(alpha: 0.3);
      case AlphaColorType.white40:
        return isLight
            ? OneColorsVariables.white.withValues(alpha: 0.4)
            : OneColorsVariables.gray950.withValues(alpha: 0.4);
      case AlphaColorType.white50:
        return isLight
            ? OneColorsVariables.white.withValues(alpha: 0.5)
            : OneColorsVariables.gray950.withValues(alpha: 0.5);
      case AlphaColorType.white60:
        return isLight
            ? OneColorsVariables.white.withValues(alpha: 0.6)
            : OneColorsVariables.gray950.withValues(alpha: 0.6);
      case AlphaColorType.white70:
        return isLight
            ? OneColorsVariables.white.withValues(alpha: 0.7)
            : OneColorsVariables.gray950.withValues(alpha: 0.7);
      case AlphaColorType.white80:
        return isLight
            ? OneColorsVariables.white.withValues(alpha: 0.8)
            : OneColorsVariables.gray950.withValues(alpha: 0.8);
      case AlphaColorType.white90:
        return isLight
            ? OneColorsVariables.white.withValues(alpha: 0.9)
            : OneColorsVariables.gray950.withValues(alpha: 0.9);
      case AlphaColorType.white100:
        return isLight ? OneColorsVariables.white : OneColorsVariables.gray950;
      case AlphaColorType.black10:
        return isLight
            ? OneColorsVariables.black.withValues(alpha: 0.1)
            : OneColorsVariables.white.withValues(alpha: 0.1);
      case AlphaColorType.black20:
        return isLight
            ? OneColorsVariables.black.withValues(alpha: 0.2)
            : OneColorsVariables.white.withValues(alpha: 0.2);
      case AlphaColorType.black30:
        return isLight
            ? OneColorsVariables.black.withValues(alpha: 0.3)
            : OneColorsVariables.white.withValues(alpha: 0.3);
      case AlphaColorType.black40:
        return isLight
            ? OneColorsVariables.black.withValues(alpha: 0.4)
            : OneColorsVariables.white.withValues(alpha: 0.4);
      case AlphaColorType.black50:
        return isLight
            ? OneColorsVariables.black.withValues(alpha: 0.5)
            : OneColorsVariables.white.withValues(alpha: 0.5);
      case AlphaColorType.black60:
        return isLight
            ? OneColorsVariables.black.withValues(alpha: 0.6)
            : OneColorsVariables.white.withValues(alpha: 0.6);
      case AlphaColorType.black70:
        return isLight
            ? OneColorsVariables.black.withValues(alpha: 0.7)
            : OneColorsVariables.white.withValues(alpha: 0.7);
      case AlphaColorType.black80:
        return isLight
            ? OneColorsVariables.black.withValues(alpha: 0.8)
            : OneColorsVariables.white.withValues(alpha: 0.8);
      case AlphaColorType.black90:
        return isLight
            ? OneColorsVariables.black.withValues(alpha: 0.9)
            : OneColorsVariables.white.withValues(alpha: 0.9);
      case AlphaColorType.black100:
        return isLight ? OneColorsVariables.black : OneColorsVariables.white;
    }
  }

  static Color getUtilityColor(
    UtilityColorType type,
    bool isLight,
    MaterialColor brandColor,
  ) {
    switch (type) {
      // Gray
      case UtilityColorType.gray50:
        return isLight ? OneColorsVariables.gray50 : OneColorsVariables.gray900;
      case UtilityColorType.gray100:
        return isLight
            ? OneColorsVariables.gray100
            : OneColorsVariables.gray800;
      case UtilityColorType.gray200:
        return isLight
            ? OneColorsVariables.gray200
            : OneColorsVariables.gray700;
      case UtilityColorType.gray300:
        return isLight
            ? OneColorsVariables.gray300
            : OneColorsVariables.gray700;
      case UtilityColorType.gray400:
        return isLight
            ? OneColorsVariables.gray400
            : OneColorsVariables.gray600;
      case UtilityColorType.gray500:
        return isLight
            ? OneColorsVariables.gray500
            : OneColorsVariables.gray500;
      case UtilityColorType.gray600:
        return isLight
            ? OneColorsVariables.gray600
            : OneColorsVariables.gray400;
      case UtilityColorType.gray700:
        return isLight
            ? OneColorsVariables.gray700
            : OneColorsVariables.gray300;
      case UtilityColorType.gray800:
        return isLight
            ? OneColorsVariables.gray800
            : OneColorsVariables.gray200;
      case UtilityColorType.gray900:
        return isLight
            ? OneColorsVariables.gray900
            : OneColorsVariables.gray100;
      // Brand
      case UtilityColorType.brand50:
        return isLight ? brandColor[50]! : brandColor[950]!;
      case UtilityColorType.brand50Alt:
        return isLight ? brandColor[50]! : OneColorsVariables.gray900;
      case UtilityColorType.brand100:
        return isLight ? brandColor[100]! : brandColor[900]!;
      case UtilityColorType.brand100Alt:
        return isLight ? brandColor[100]! : OneColorsVariables.gray800;
      case UtilityColorType.brand200:
        return isLight ? brandColor[200]! : brandColor[800]!;
      case UtilityColorType.brand200Alt:
        return isLight ? brandColor[200]! : OneColorsVariables.gray700;
      case UtilityColorType.brand300:
        return isLight ? brandColor[300]! : brandColor[700]!;
      case UtilityColorType.brandAlt:
        return isLight ? brandColor[300]! : OneColorsVariables.gray700;
      case UtilityColorType.brand400:
        return isLight ? brandColor[400]! : brandColor[600]!;
      case UtilityColorType.brand400Alt:
        return isLight ? brandColor[400]! : OneColorsVariables.gray600;
      case UtilityColorType.brand500:
        return brandColor[500]!;
      case UtilityColorType.brand500Alt:
        return isLight ? brandColor[500]! : OneColorsVariables.gray500;
      case UtilityColorType.brand600:
        return isLight ? brandColor[600]! : brandColor[400]!;
      case UtilityColorType.brand600Alt:
        return isLight ? brandColor[600]! : OneColorsVariables.gray400;
      case UtilityColorType.brand700:
        return isLight ? brandColor[700]! : brandColor[300]!;
      case UtilityColorType.brand700Alt:
        return isLight ? brandColor[700]! : OneColorsVariables.gray300;
      case UtilityColorType.brand800:
        return isLight ? brandColor[800]! : brandColor[200]!;
      case UtilityColorType.brand800Alt:
        return isLight ? brandColor[800]! : OneColorsVariables.gray200;
      case UtilityColorType.brand900:
        return isLight ? brandColor[900]! : brandColor[100]!;
      case UtilityColorType.brand900Alt:
        return isLight ? brandColor[900]! : OneColorsVariables.gray100;
      case UtilityColorType.error50:
        return isLight
            ? OneColorsVariables.error50
            : OneColorsVariables.error950;
      case UtilityColorType.error100:
        return isLight
            ? OneColorsVariables.error100
            : OneColorsVariables.error900;
      case UtilityColorType.error200:
        return isLight
            ? OneColorsVariables.error200
            : OneColorsVariables.error800;
      case UtilityColorType.error300:
        return isLight
            ? OneColorsVariables.error300
            : OneColorsVariables.error700;
      case UtilityColorType.error400:
        return isLight
            ? OneColorsVariables.error400
            : OneColorsVariables.error600;
      case UtilityColorType.error500:
        return OneColorsVariables.error500;
      case UtilityColorType.error600:
        return isLight
            ? OneColorsVariables.error600
            : OneColorsVariables.error400;
      case UtilityColorType.error700:
        return isLight
            ? OneColorsVariables.error700
            : OneColorsVariables.error300;
      case UtilityColorType.warning50:
        return isLight
            ? OneColorsVariables.warning50
            : OneColorsVariables.warning950;
      case UtilityColorType.warning100:
        return isLight
            ? OneColorsVariables.warning100
            : OneColorsVariables.warning900;
      case UtilityColorType.warning200:
        return isLight
            ? OneColorsVariables.warning200
            : OneColorsVariables.warning800;
      case UtilityColorType.warning300:
        return isLight
            ? OneColorsVariables.warning300
            : OneColorsVariables.warning700;
      case UtilityColorType.warning400:
        return isLight
            ? OneColorsVariables.warning400
            : OneColorsVariables.warning600;
      case UtilityColorType.warning500:
        return OneColorsVariables.warning500;
      case UtilityColorType.warning600:
        return isLight
            ? OneColorsVariables.warning600
            : OneColorsVariables.warning400;
      case UtilityColorType.warning700:
        return isLight
            ? OneColorsVariables.warning700
            : OneColorsVariables.warning300;

      case UtilityColorType.success50:
        return isLight
            ? OneColorsVariables.success50
            : OneColorsVariables.success950;
      case UtilityColorType.success100:
        return isLight
            ? OneColorsVariables.success100
            : OneColorsVariables.success900;
      case UtilityColorType.success200:
        return isLight
            ? OneColorsVariables.success200
            : OneColorsVariables.success800;
      case UtilityColorType.success300:
        return isLight
            ? OneColorsVariables.success300
            : OneColorsVariables.success700;
      case UtilityColorType.success400:
        return isLight
            ? OneColorsVariables.success400
            : OneColorsVariables.success600;
      case UtilityColorType.success500:
        return OneColorsVariables.success500;
      case UtilityColorType.success600:
        return isLight
            ? OneColorsVariables.success600
            : OneColorsVariables.success400;
      case UtilityColorType.success700:
        return isLight
            ? OneColorsVariables.success700
            : OneColorsVariables.success300;
      case UtilityColorType.grayBlue50:
        return isLight
            ? OneColorsVariables.grayBlue50
            : OneColorsVariables.grayBlue950;
      case UtilityColorType.grayBlue100:
        return isLight
            ? OneColorsVariables.grayBlue100
            : OneColorsVariables.grayBlue900;
      case UtilityColorType.grayBlue200:
        return isLight
            ? OneColorsVariables.grayBlue200
            : OneColorsVariables.grayBlue800;
      case UtilityColorType.grayBlue300:
        return isLight
            ? OneColorsVariables.grayBlue300
            : OneColorsVariables.grayBlue700;
      case UtilityColorType.grayBlue400:
        return isLight
            ? OneColorsVariables.grayBlue400
            : OneColorsVariables.grayBlue600;
      case UtilityColorType.grayBlue500:
        return OneColorsVariables.grayBlue500;
      case UtilityColorType.grayBlue600:
        return isLight
            ? OneColorsVariables.grayBlue600
            : OneColorsVariables.grayBlue400;
      case UtilityColorType.grayBlue700:
        return isLight
            ? OneColorsVariables.grayBlue700
            : OneColorsVariables.grayBlue300;
      case UtilityColorType.blueLight50:
        return isLight
            ? OneColorsVariables.blueLight50
            : OneColorsVariables.blueLight950;
      case UtilityColorType.blueLight100:
        return isLight
            ? OneColorsVariables.blueLight100
            : OneColorsVariables.blueLight900;
      case UtilityColorType.blueLight200:
        return isLight
            ? OneColorsVariables.blueLight200
            : OneColorsVariables.blueLight800;
      case UtilityColorType.blueLight300:
        return isLight
            ? OneColorsVariables.blueLight300
            : OneColorsVariables.blueLight700;
      case UtilityColorType.blueLight400:
        return isLight
            ? OneColorsVariables.blueLight400
            : OneColorsVariables.blueLight600;
      case UtilityColorType.blueLight500:
        return OneColorsVariables.blueLight500;
      case UtilityColorType.blueLight600:
        return isLight
            ? OneColorsVariables.blueLight600
            : OneColorsVariables.blueLight400;
      case UtilityColorType.blueLight700:
        return isLight
            ? OneColorsVariables.blueLight700
            : OneColorsVariables.blueLight300;
      case UtilityColorType.blue50:
        return isLight ? OneColorsVariables.blue50 : OneColorsVariables.blue950;
      case UtilityColorType.blue100:
        return isLight
            ? OneColorsVariables.blue100
            : OneColorsVariables.blue900;
      case UtilityColorType.blue200:
        return isLight
            ? OneColorsVariables.blue200
            : OneColorsVariables.blue800;
      case UtilityColorType.blue300:
        return isLight
            ? OneColorsVariables.blue300
            : OneColorsVariables.blue700;
      case UtilityColorType.blue400:
        return isLight
            ? OneColorsVariables.blue400
            : OneColorsVariables.blue600;
      case UtilityColorType.blue500:
        return OneColorsVariables.blue500;
      case UtilityColorType.blue600:
        return isLight
            ? OneColorsVariables.blue600
            : OneColorsVariables.blue400;
      case UtilityColorType.blue700:
        return isLight
            ? OneColorsVariables.blue700
            : OneColorsVariables.blue300;
      case UtilityColorType.blueDark50:
        return isLight
            ? OneColorsVariables.blueDark50
            : OneColorsVariables.blueDark950;
      case UtilityColorType.blueDark100:
        return isLight
            ? OneColorsVariables.blueDark100
            : OneColorsVariables.blueDark900;
      case UtilityColorType.blueDark200:
        return isLight
            ? OneColorsVariables.blueDark200
            : OneColorsVariables.blueDark800;
      case UtilityColorType.blueDark300:
        return isLight
            ? OneColorsVariables.blueDark300
            : OneColorsVariables.blueDark700;
      case UtilityColorType.blueDark400:
        return isLight
            ? OneColorsVariables.blueDark400
            : OneColorsVariables.blueDark600;
      case UtilityColorType.blueDark500:
        return OneColorsVariables.blueDark500;
      case UtilityColorType.blueDark600:
        return isLight
            ? OneColorsVariables.blueDark600
            : OneColorsVariables.blueDark400;
      case UtilityColorType.blueDark700:
        return isLight
            ? OneColorsVariables.blueDark700
            : OneColorsVariables.blueDark300;
      case UtilityColorType.indigo50:
        return isLight
            ? OneColorsVariables.indigo50
            : OneColorsVariables.indigo950;
      case UtilityColorType.indigo100:
        return isLight
            ? OneColorsVariables.indigo100
            : OneColorsVariables.indigo900;
      case UtilityColorType.indigo200:
        return isLight
            ? OneColorsVariables.indigo200
            : OneColorsVariables.indigo800;
      case UtilityColorType.indigo300:
        return isLight
            ? OneColorsVariables.indigo300
            : OneColorsVariables.indigo700;
      case UtilityColorType.indigo400:
        return isLight
            ? OneColorsVariables.indigo400
            : OneColorsVariables.indigo600;
      case UtilityColorType.indigo500:
        return OneColorsVariables.indigo500;
      case UtilityColorType.indigo600:
        return isLight
            ? OneColorsVariables.indigo600
            : OneColorsVariables.indigo400;
      case UtilityColorType.indigo700:
        return isLight
            ? OneColorsVariables.indigo700
            : OneColorsVariables.indigo300;
      case UtilityColorType.purple50:
        return isLight
            ? OneColorsVariables.purple50
            : OneColorsVariables.purple950;
      case UtilityColorType.purple100:
        return isLight
            ? OneColorsVariables.purple100
            : OneColorsVariables.purple900;
      case UtilityColorType.purple200:
        return isLight
            ? OneColorsVariables.purple200
            : OneColorsVariables.purple800;
      case UtilityColorType.purple300:
        return isLight
            ? OneColorsVariables.purple300
            : OneColorsVariables.purple700;
      case UtilityColorType.purple400:
        return isLight
            ? OneColorsVariables.purple400
            : OneColorsVariables.purple600;
      case UtilityColorType.purple500:
        return OneColorsVariables.purple500;
      case UtilityColorType.purple600:
        return isLight
            ? OneColorsVariables.purple600
            : OneColorsVariables.purple400;
      case UtilityColorType.purple700:
        return isLight
            ? OneColorsVariables.purple700
            : OneColorsVariables.purple300;
      case UtilityColorType.fuchsia50:
        return isLight
            ? OneColorsVariables.fuchsia50
            : OneColorsVariables.fuchsia950;
      case UtilityColorType.fuchsia100:
        return isLight
            ? OneColorsVariables.fuchsia100
            : OneColorsVariables.fuchsia900;
      case UtilityColorType.fuchsia200:
        return isLight
            ? OneColorsVariables.fuchsia200
            : OneColorsVariables.fuchsia800;
      case UtilityColorType.fuchsia300:
        return isLight
            ? OneColorsVariables.fuchsia300
            : OneColorsVariables.fuchsia700;
      case UtilityColorType.fuchsia400:
        return isLight
            ? OneColorsVariables.fuchsia400
            : OneColorsVariables.fuchsia600;
      case UtilityColorType.fuchsia500:
        return OneColorsVariables.fuchsia500;
      case UtilityColorType.fuchsia600:
        return isLight
            ? OneColorsVariables.fuchsia600
            : OneColorsVariables.fuchsia400;
      case UtilityColorType.fuchsia700:
        return isLight
            ? OneColorsVariables.fuchsia700
            : OneColorsVariables.fuchsia300;
      case UtilityColorType.pink50:
        return isLight ? OneColorsVariables.pink50 : OneColorsVariables.pink950;
      case UtilityColorType.pink100:
        return isLight
            ? OneColorsVariables.pink100
            : OneColorsVariables.pink900;
      case UtilityColorType.pink200:
        return isLight
            ? OneColorsVariables.pink200
            : OneColorsVariables.pink800;
      case UtilityColorType.pink300:
        return isLight
            ? OneColorsVariables.pink300
            : OneColorsVariables.pink700;
      case UtilityColorType.pink400:
        return isLight
            ? OneColorsVariables.pink400
            : OneColorsVariables.pink600;
      case UtilityColorType.pink500:
        return OneColorsVariables.pink500;
      case UtilityColorType.pink600:
        return isLight
            ? OneColorsVariables.pink600
            : OneColorsVariables.pink400;
      case UtilityColorType.pink700:
        return isLight
            ? OneColorsVariables.pink700
            : OneColorsVariables.pink300;
      case UtilityColorType.orangeDark50:
        return isLight
            ? OneColorsVariables.orangeDark50
            : OneColorsVariables.orangeDark950;
      case UtilityColorType.orangeDark100:
        return isLight
            ? OneColorsVariables.orangeDark100
            : OneColorsVariables.orangeDark900;
      case UtilityColorType.orangeDark200:
        return isLight
            ? OneColorsVariables.orangeDark200
            : OneColorsVariables.orangeDark800;
      case UtilityColorType.orangeDark300:
        return isLight
            ? OneColorsVariables.orangeDark300
            : OneColorsVariables.orangeDark700;
      case UtilityColorType.orangeDark400:
        return isLight
            ? OneColorsVariables.orangeDark400
            : OneColorsVariables.orangeDark600;
      case UtilityColorType.orangeDark500:
        return OneColorsVariables.orangeDark500;
      case UtilityColorType.orangeDark600:
        return isLight
            ? OneColorsVariables.orangeDark600
            : OneColorsVariables.orangeDark400;
      case UtilityColorType.orangeDark700:
        return isLight
            ? OneColorsVariables.orangeDark700
            : OneColorsVariables.orangeDark300;
      case UtilityColorType.orange50:
        return isLight
            ? OneColorsVariables.orange50
            : OneColorsVariables.orange950;
      case UtilityColorType.orange100:
        return isLight
            ? OneColorsVariables.orange100
            : OneColorsVariables.orange900;
      case UtilityColorType.orange200:
        return isLight
            ? OneColorsVariables.orange200
            : OneColorsVariables.orange800;
      case UtilityColorType.orange300:
        return isLight
            ? OneColorsVariables.orange300
            : OneColorsVariables.orange700;
      case UtilityColorType.orange400:
        return isLight
            ? OneColorsVariables.orange400
            : OneColorsVariables.orange600;
      case UtilityColorType.orange500:
        return OneColorsVariables.orange500;
      case UtilityColorType.orange600:
        return isLight
            ? OneColorsVariables.orange600
            : OneColorsVariables.orange400;
      case UtilityColorType.orange700:
        return isLight
            ? OneColorsVariables.orange700
            : OneColorsVariables.orange300;
      case UtilityColorType.yellow50:
        return isLight
            ? OneColorsVariables.yellow50
            : OneColorsVariables.yellow950;
      case UtilityColorType.yellow100:
        return isLight
            ? OneColorsVariables.yellow100
            : OneColorsVariables.yellow900;
      case UtilityColorType.yellow200:
        return isLight
            ? OneColorsVariables.yellow200
            : OneColorsVariables.yellow800;
      case UtilityColorType.yellow300:
        return isLight
            ? OneColorsVariables.yellow300
            : OneColorsVariables.yellow700;
      case UtilityColorType.yellow400:
        return isLight
            ? OneColorsVariables.yellow400
            : OneColorsVariables.yellow600;
      case UtilityColorType.yellow500:
        return OneColorsVariables.yellow500;
      case UtilityColorType.yellow600:
        return isLight
            ? OneColorsVariables.yellow600
            : OneColorsVariables.yellow400;
      case UtilityColorType.yellow700:
        return isLight
            ? OneColorsVariables.yellow700
            : OneColorsVariables.yellow300;
      case UtilityColorType.rose50:
        return isLight
            ? OneColorsVariables.rose50
            : OneColorsVariables.rose950;
      case UtilityColorType.rose100:
        return isLight
            ? OneColorsVariables.rose100
            : OneColorsVariables.rose900;
      case UtilityColorType.rose200:
        return isLight
            ? OneColorsVariables.rose200
            : OneColorsVariables.rose800;
      case UtilityColorType.rose300:
        return isLight
            ? OneColorsVariables.rose300
            : OneColorsVariables.rose700;
      case UtilityColorType.rose400:
        return isLight
            ? OneColorsVariables.rose400
            : OneColorsVariables.rose600;
      case UtilityColorType.rose500:
        return OneColorsVariables.rose500;
      case UtilityColorType.rose600:
        return isLight
            ? OneColorsVariables.rose600
            : OneColorsVariables.rose400;
      case UtilityColorType.rose700:
        return isLight
            ? OneColorsVariables.rose700
            : OneColorsVariables.rose300;
      case UtilityColorType.violet50:
        return isLight
            ? OneColorsVariables.violet50
            : OneColorsVariables.violet950;
      case UtilityColorType.violet100:
        return isLight
            ? OneColorsVariables.violet100
            : OneColorsVariables.violet900;
      case UtilityColorType.violet200:
        return isLight
            ? OneColorsVariables.violet200
            : OneColorsVariables.violet800;
      case UtilityColorType.violet300:
        return isLight
            ? OneColorsVariables.violet300
            : OneColorsVariables.violet700;
      case UtilityColorType.violet400:
        return isLight
            ? OneColorsVariables.violet400
            : OneColorsVariables.violet600;
      case UtilityColorType.violet500:
        return OneColorsVariables.violet500;
      case UtilityColorType.violet600:
        return isLight
            ? OneColorsVariables.violet600
            : OneColorsVariables.violet400;
      case UtilityColorType.violet700:
        return isLight
            ? OneColorsVariables.violet700
            : OneColorsVariables.violet300;
      case UtilityColorType.teal50:
        return isLight
            ? OneColorsVariables.teal50
            : OneColorsVariables.teal950;
      case UtilityColorType.teal100:
        return isLight
            ? OneColorsVariables.teal100
            : OneColorsVariables.teal900;
      case UtilityColorType.teal200:
        return isLight
            ? OneColorsVariables.teal200
            : OneColorsVariables.teal800;
      case UtilityColorType.teal300:
        return isLight
            ? OneColorsVariables.teal300
            : OneColorsVariables.teal700;
      case UtilityColorType.teal400:
        return isLight
            ? OneColorsVariables.teal400
            : OneColorsVariables.teal600;
      case UtilityColorType.teal500:
        return OneColorsVariables.teal500;
      case UtilityColorType.teal600:
        return isLight
            ? OneColorsVariables.teal600
            : OneColorsVariables.teal400;
      case UtilityColorType.teal700:
        return isLight
            ? OneColorsVariables.teal700
            : OneColorsVariables.teal300;
      case UtilityColorType.cyan50:
        return isLight
            ? OneColorsVariables.cyan50
            : OneColorsVariables.cyan950;
      case UtilityColorType.cyan100:
        return isLight
            ? OneColorsVariables.cyan100
            : OneColorsVariables.cyan900;
      case UtilityColorType.cyan200:
        return isLight
            ? OneColorsVariables.cyan200
            : OneColorsVariables.cyan800;
      case UtilityColorType.cyan300:
        return isLight
            ? OneColorsVariables.cyan300
            : OneColorsVariables.cyan700;
      case UtilityColorType.cyan400:
        return isLight
            ? OneColorsVariables.cyan400
            : OneColorsVariables.cyan600;
      case UtilityColorType.cyan500:
        return OneColorsVariables.cyan500;
      case UtilityColorType.cyan600:
        return isLight
            ? OneColorsVariables.cyan600
            : OneColorsVariables.cyan400;
      case UtilityColorType.cyan700:
        return isLight
            ? OneColorsVariables.cyan700
            : OneColorsVariables.cyan300;
      case UtilityColorType.moss50:
        return isLight
            ? OneColorsVariables.moss50
            : OneColorsVariables.moss950;
      case UtilityColorType.moss100:
        return isLight
            ? OneColorsVariables.moss100
            : OneColorsVariables.moss900;
      case UtilityColorType.moss200:
        return isLight
            ? OneColorsVariables.moss200
            : OneColorsVariables.moss800;
      case UtilityColorType.moss300:
        return isLight
            ? OneColorsVariables.moss300
            : OneColorsVariables.moss700;
      case UtilityColorType.moss400:
        return isLight
            ? OneColorsVariables.moss400
            : OneColorsVariables.moss600;
      case UtilityColorType.moss500:
        return OneColorsVariables.moss500;
      case UtilityColorType.moss600:
        return isLight
            ? OneColorsVariables.moss600
            : OneColorsVariables.moss400;
      case UtilityColorType.moss700:
        return isLight
            ? OneColorsVariables.moss700
            : OneColorsVariables.moss300;
      case UtilityColorType.greenLight50:
        return isLight
            ? OneColorsVariables.greenLight50
            : OneColorsVariables.greenLight950;
      case UtilityColorType.greenLight100:
        return isLight
            ? OneColorsVariables.greenLight100
            : OneColorsVariables.greenLight900;
      case UtilityColorType.greenLight200:
        return isLight
            ? OneColorsVariables.greenLight200
            : OneColorsVariables.greenLight800;
      case UtilityColorType.greenLight300:
        return isLight
            ? OneColorsVariables.greenLight300
            : OneColorsVariables.greenLight700;
      case UtilityColorType.greenLight400:
        return isLight
            ? OneColorsVariables.greenLight400
            : OneColorsVariables.greenLight600;
      case UtilityColorType.greenLight500:
        return OneColorsVariables.greenLight500;
      case UtilityColorType.greenLight600:
        return isLight
            ? OneColorsVariables.greenLight600
            : OneColorsVariables.greenLight400;
      case UtilityColorType.greenLight700:
        return isLight
            ? OneColorsVariables.greenLight700
            : OneColorsVariables.greenLight300;
      case UtilityColorType.green50:
        return isLight
            ? OneColorsVariables.green50
            : OneColorsVariables.green950;
      case UtilityColorType.green100:
        return isLight
            ? OneColorsVariables.green100
            : OneColorsVariables.green900;
      case UtilityColorType.green200:
        return isLight
            ? OneColorsVariables.green200
            : OneColorsVariables.green800;
      case UtilityColorType.green300:
        return isLight
            ? OneColorsVariables.green300
            : OneColorsVariables.green700;
      case UtilityColorType.green400:
        return isLight
            ? OneColorsVariables.green400
            : OneColorsVariables.green600;
      case UtilityColorType.green500:
        return OneColorsVariables.green500;
      case UtilityColorType.green600:
        return isLight
            ? OneColorsVariables.green600
            : OneColorsVariables.green400;
      case UtilityColorType.green700:
        return isLight
            ? OneColorsVariables.green700
            : OneColorsVariables.green300;
    }
  }

  static Color shadow(
    ShadowColorType type,
    bool isLight,
    MaterialColor brandColor,
  ) {
    switch (type) {
      case ShadowColorType.xs:
        return OneColorsVariables.gray900.withValues(alpha: 0.05);
      case ShadowColorType.sm1:
        return getUtilityColor(UtilityColorType.gray900, isLight, brandColor)
            .withValues(alpha: 0.1);
      case ShadowColorType.sm2:
        return getUtilityColor(UtilityColorType.gray900, isLight, brandColor)
            .withValues(alpha: 0.10);
      case ShadowColorType.md1:
        return getUtilityColor(UtilityColorType.gray900, isLight, brandColor)
            .withValues(alpha: 0.06);
      case ShadowColorType.md2:
        return getUtilityColor(UtilityColorType.gray900, isLight, brandColor)
            .withValues(alpha: 0.10);
      case ShadowColorType.lg1:
        return getUtilityColor(UtilityColorType.gray900, isLight, brandColor)
            .withValues(alpha: 0.04);
      case ShadowColorType.lg2:
        return getUtilityColor(UtilityColorType.gray900, isLight, brandColor)
            .withValues(alpha: 0.03);
      case ShadowColorType.lg3:
        return getUtilityColor(UtilityColorType.gray900, isLight, brandColor)
            .withValues(alpha: 0.08);
      case ShadowColorType.xl1:
        return getUtilityColor(UtilityColorType.gray900, isLight, brandColor)
            .withValues(alpha: 0.04);
      case ShadowColorType.xl2:
        return getUtilityColor(UtilityColorType.gray900, isLight, brandColor)
            .withValues(alpha: 0.03);
      case ShadowColorType.xl3:
        return getUtilityColor(UtilityColorType.gray900, isLight, brandColor)
            .withValues(alpha: 0.08);
      case ShadowColorType.xxl1:
        return getUtilityColor(UtilityColorType.gray900, isLight, brandColor)
            .withValues(alpha: 0.04);
      case ShadowColorType.xxl2:
        return getUtilityColor(UtilityColorType.gray900, isLight, brandColor)
            .withValues(alpha: 0.18);
      case ShadowColorType.xxxl1:
        return getUtilityColor(UtilityColorType.gray900, isLight, brandColor)
            .withValues(alpha: 0.04);
      case ShadowColorType.xxxl2:
        return getUtilityColor(UtilityColorType.gray900, isLight, brandColor)
            .withValues(alpha: 0.14);
      case ShadowColorType.skeumorphicInner:
        return getUtilityColor(UtilityColorType.gray900, isLight, brandColor)
            .withValues(alpha: 0.05);
      case ShadowColorType.skeumorphicInnerBorder:
        return getUtilityColor(UtilityColorType.gray900, isLight, brandColor)
            .withValues(alpha: 0.18);
    }
  }
}

class OneColorsHelperWithContext {
  final BuildContext context;

  OneColorsHelperWithContext(this.context);

  Color text(TextColorType type) {
    final isLight = Theme.of(context).brightness == Brightness.light;
    return OneColorsHelper.getTextColor(
      type,
      isLight,
      context.brandColor,
    );
  }

  Color border(BorderColorType type) {
    final isLight = Theme.of(context).brightness == Brightness.light;
    return OneColorsHelper.getBorderColor(
      type,
      isLight,
      context.brandColor,
    );
  }

  Color foreground(ForegroundColorType type) {
    final isLight = Theme.of(context).brightness == Brightness.light;
    return OneColorsHelper.getForegroundColor(
      type,
      isLight,
      context.brandColor,
    );
  }

  Color background(BackgroundColorType type) {
    final isLight = Theme.of(context).brightness == Brightness.light;
    return OneColorsHelper.getBackgroundColor(
      type,
      isLight,
      context.brandColor,
    );
  }

  Color alpha(AlphaColorType type) {
    final isLight = Theme.of(context).brightness == Brightness.light;
    return OneColorsHelper.getAlphaColor(
      type,
      isLight,
      context.brandColor,
    );
  }

  Color utility(UtilityColorType type) {
    final isLight = Theme.of(context).brightness == Brightness.light;
    return OneColorsHelper.getUtilityColor(
      type,
      isLight,
      context.brandColor,
    );
  }

  Color shadow(ShadowColorType type) {
    final isLight = Theme.of(context).brightness == Brightness.light;
    return OneColorsHelper.shadow(
      type,
      isLight,
      context.brandColor,
    );
  }
}

extension ThemeDataBrandColor on ThemeData {
  MaterialColor get brandColor {
    return colorScheme.primary.materialColor;
  }
}

extension BuildContextBrandColor on BuildContext {
  OneColorsHelperWithContext get color => OneColorsHelperWithContext(this);
  MaterialColor get brandColor => Theme.of(this).brandColor;
}
