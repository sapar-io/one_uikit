part of 'one_colors.dart';

class OneColorsVariables {
  // Text colors
  static Color textPrimaryLight = gray900;
  static Color textPrimaryDark = gray50;
  static Color textPrimaryOnBrandLight = white;
  static Color textPrimaryOnBrandDark = gray50;
  static Color textSecondaryLight = gray700;
  static Color textSecondaryDark = gray300;
  static Color textSecondaryHoverLight = gray800;
  static Color textSecondaryHoverDark = gray200;
  static Color textSecondaryOnBrandLight(MaterialColor brandColor) =>
      brandColor[200]!;
  static Color textSecondaryOnBrandDark = gray300;
  static Color textTertiaryLight = gray600;
  static Color textTertiaryDark = gray400;
  static Color textTertiaryHoverLight = gray700;
  static Color textTertiaryHoverDark = gray300;
  static Color textTertiaryOnBrandLight(MaterialColor brandColor) =>
      brandColor[200]!;
  static Color textTertiaryOnBrandDark = gray400;
  static Color textQuaternaryLight = gray500;
  static Color textQuaternaryDark = gray400;
  static Color textQuaternaryOnBrandLight(MaterialColor brandColor) =>
      brandColor[300]!;
  static Color textQuaternaryOnBrandDark = gray400;
  static Color textWhite = white;
  static Color textDisabledLight = gray500;
  static Color textDisabledDark = gray500;
  static Color textPlaceholderLight = gray500;
  static Color textPlaceholderDark = gray400;
  static Color textPlaceholderSubtleLight = gray300;
  static Color textPlaceholderSubtleDark = gray700;
  static Color textBrandPrimaryLight(MaterialColor brandColor) =>
      brandColor[900]!;
  static Color textBrandPrimaryDark = gray50;
  static Color textBrandSecondaryLight(MaterialColor brandColor) =>
      brandColor[700]!;
  static Color textBrandSecondaryDark = gray300;
  static Color textBrandTertiaryLight(MaterialColor brandColor) =>
      brandColor[600]!;
  static Color textBrandTertiaryDark = gray400;
  static Color textBrandTertiaryAltLight(MaterialColor brandColor) =>
      brandColor[600]!;
  static Color textBrandTertiaryAltDark = gray50;
  static Color textErrorPrimaryLight = error600;
  static Color textErrorPrimaryDark = error400;
  static Color textWarningPrimaryLight = warning600;
  static Color textWarningPrimaryDark = warning400;
  static Color textSuccessPrimaryLight = success600;
  static Color textSuccessPrimaryDark = success400;

  // Border colors
  static Color borderPrimaryLight = gray300;
  static Color borderPrimaryDark = gray700;
  static Color borderSecondaryLight = gray200;
  static Color borderSecondaryDark = gray800;
  static Color borderTertiaryLight = gray100;
  static Color borderTertiaryDark = gray800;
  static Color borderDisabledLight = gray300;
  static Color borderDisabledDark = gray700;
  static Color borderDisabledSubtleLight = gray200;
  static Color borderDisabledSubtleDark = gray800;
  static Color borderBrandLight(MaterialColor brandColor) => brandColor[500]!;
  static Color borderBrandDark(MaterialColor brandColor) => brandColor[400]!;
  static Color borderBrandAltLight(MaterialColor brandColor) =>
      brandColor[600]!;
  static Color borderBrandAltDark = gray700;
  static Color borderErrorLight = error500;
  static Color borderErrorDark = error400;
  static Color borderErrorSubtleLight = error300;
  static Color borderErrorSubtleDark = error400;
  static Color borderSuccessLight = success500;
  static Color borderSuccessDark = success400;
  static Color borderSuccessSubtleLight = success300;
  static Color borderSuccessSubtleDark = success400;
  static Color borderWarningLight = warning500;
  static Color borderWarningDark = warning400;
  static Color borderWarningSubtleLight = warning300;
  static Color borderWarningSubtleDark = warning400;

  // Foreground colors
  static Color fgPrimaryLight = gray900;
  static Color fgPrimaryDark = white;
  static Color fgSecondaryLight = gray700;
  static Color fgSecondaryDark = gray300;
  static Color fgSecondaryHoverLight = gray800;
  static Color fgSecondaryHoverDark = gray200;
  static Color fgTertiaryLight = gray600;
  static Color fgTertiaryDark = gray400;
  static Color fgTertiaryHoverLight = gray700;
  static Color fgTertiaryHoverDark = gray300;
  static Color fgQuaternaryLight = gray500;
  static Color fgQuaternaryDark = gray400;
  static Color fgQuaternaryHoverLight = gray600;
  static Color fgQuaternaryHoverDark = gray300;
  static Color fgQuinaryLight = gray400;
  static Color fgQuinaryDark = gray500;
  static Color fgQuinaryHoverLight = gray500;
  static Color fgQuinaryHoverDark = gray400;
  static Color fgSenaryLight = gray300;
  static Color fgSenaryDark = gray600;
  static Color fgWhite = white;
  static Color fgDisabledLight = gray400;
  static Color fgDisabledDark = gray500;
  static Color fgDisabledSubtleLight = gray300;
  static Color fgDisabledSubtleDark = gray600;
  static Color fgBrandPrimaryLight(MaterialColor brandColor) =>
      brandColor[600]!;
  static Color fgBrandPrimaryDark(MaterialColor brandColor) => brandColor[500]!;
  static Color fgBrandPrimaryAltLight(MaterialColor brandColor) =>
      brandColor[600]!;
  static Color fgBrandPrimaryAltDark = gray300;
  static Color fgBrandSecondaryLight(MaterialColor brandColor) =>
      brandColor[500]!;
  static Color fgBrandSecondaryDark(MaterialColor brandColor) =>
      brandColor[500]!;
  static Color fgErrorPrimaryLight = error600;
  static Color fgErrorPrimaryDark = error500;
  static Color fgErrorSecondaryLight = error500;
  static Color fgErrorSecondaryDark = error400;
  static Color fgWarningPrimaryLight = warning600;
  static Color fgWarningPrimaryDark = warning500;
  static Color fgWarningSecondaryLight = warning500;
  static Color fgWarningSecondaryDark = warning400;
  static Color fgSuccessPrimaryLight = success600;
  static Color fgSuccessPrimaryDark = success500;
  static Color fgSuccessSecondaryLight = success500;
  static Color fgSuccessSecondaryDark = success400;

  // Background colors
  static Color bgPrimaryLight = white;
  static Color bgPrimaryDark = gray950;
  static Color bgPrimaryAltLight = white;
  static Color bgPrimaryAltDark = gray900;
  static Color bgPrimaryHoverLight = gray50;
  static Color bgPrimaryHoverDark = gray800;
  static Color bgPrimarySolidLight = gray950;
  static Color bgPrimarySolidDark = gray900;
  static Color bgSecondaryLight = gray50;
  static Color bgSecondaryDark = gray900;
  static Color bgSecondaryAltLight = gray50;
  static Color bgSecondaryAltDark = gray950;
  static Color bgSecondaryHoverLight = gray100;
  static Color bgSecondaryHoverDark = gray800;
  static Color bgSecondarySubtleLight = gray25;
  static Color bgSecondarySubtleDark = gray900;
  static Color bgSecondarySolidLight = gray600;
  static Color bgSecondarySolidDark = gray600;
  static Color bgTertiaryLight = gray100;
  static Color bgTertiaryDark = gray800;
  static Color bgQuaternaryLight = gray200;
  static Color bgQuaternaryDark = gray700;
  static Color bgActiveLight = gray50;
  static Color bgActiveDark = gray800;
  static Color bgDisabledLight = gray300;
  static Color bgDisabledDark = gray600;
  static Color bgDisabledSubtleLight = gray50;
  static Color bgDisabledSubtleDark = gray900;
  static Color bgOverlayLight = gray950;
  static Color bgOverlayDark = gray800;
  static Color bgBrandPrimaryLight(MaterialColor brandColor) => brandColor[50]!;
  static Color bgBrandPrimaryDark(MaterialColor brandColor) => brandColor[500]!;
  static Color bgBrandPrimaryAltLight(MaterialColor brandColor) =>
      brandColor[50]!;
  static Color bgBrandPrimaryAltDark = gray800;
  static Color bgBrandSecondaryLight(MaterialColor brandColor) =>
      brandColor[100]!;
  static Color bgBrandSecondaryDark(MaterialColor brandColor) =>
      brandColor[600]!;
  static Color bgBrandSolidLight(MaterialColor brandColor) => brandColor[600]!;
  static Color bgBrandSolidDark(MaterialColor brandColor) => brandColor[600]!;
  static Color bgBrandSolidHoverLight(MaterialColor brandColor) =>
      brandColor[700]!;
  static Color bgBrandSolidHoverDark(MaterialColor brandColor) =>
      brandColor[500]!;
  static Color bgBrandSectionLight(MaterialColor brandColor) =>
      brandColor[800]!;
  static Color bgBrandSectionDark = gray800;
  static Color bgBrandSectionSubtleLight(MaterialColor brandColor) =>
      brandColor[700]!;
  static Color bgBrandSectionSubtleDark = gray950;
  static Color bgErrorPrimaryLight = error50;
  static Color bgErrorPrimaryDark = error950;
  static Color bgErrorSecondaryLight = error100;
  static Color bgErrorSecondaryDark = error100;
  static Color bgErrorSolidLight = error600;
  static Color bgErrorSolidDark = error600;
  static Color bgWarningPrimaryLight = warning50;
  static Color bgWarningPrimaryDark = warning50;
  static Color bgWarningSecondaryLight = warning100;
  static Color bgWarningSecondaryDark = warning100;
  static Color bgWarningSolidLight = warning600;
  static Color bgWarningSolidDark = warning600;
  static Color bgSuccessPrimaryLight = success50;
  static Color bgSuccessPrimaryDark = success950;
  static Color bgSuccessSecondaryLight = success100;
  static Color bgSuccessSecondaryDark = success800;
  static Color bgSuccessSolidLight = success600;
  static Color bgSuccessSolidDark = success600;

  // Base colors
  static Color white = OneColors.white;
  static Color black = OneColors.black;

  // Utility colors (you might want to define these based on your color palette)
  static Color gray25 = OneColors.grayLightMode[25]!;
  static Color gray50 = OneColors.grayLightMode[50]!;
  static Color gray100 = OneColors.grayLightMode[100]!;
  static Color gray200 = OneColors.grayLightMode[200]!;
  static Color gray300 = OneColors.grayLightMode[300]!;
  static Color gray400 = OneColors.grayLightMode[400]!;
  static Color gray500 = OneColors.grayLightMode[500]!;
  static Color gray600 = OneColors.grayLightMode[600]!;
  static Color gray700 = OneColors.grayLightMode[700]!;
  static Color gray800 = OneColors.grayLightMode[800]!;
  static Color gray900 = OneColors.grayLightMode[900]!;
  static Color gray950 = OneColors.grayLightMode[950]!;

  static Color error50 = OneColors.error[50]!;
  static Color error100 = OneColors.error[100]!;
  static Color error200 = OneColors.error[200]!;
  static Color error300 = OneColors.error[300]!;
  static Color error400 = OneColors.error[400]!;
  static Color error500 = OneColors.error[500]!;
  static Color error600 = OneColors.error[600]!;
  static Color error700 = OneColors.error[700]!;
  static Color error800 = OneColors.error[800]!;
  static Color error900 = OneColors.error[900]!;
  static Color error950 = OneColors.error[950]!;

  static Color warning50 = OneColors.warning[50]!;
  static Color warning100 = OneColors.warning[100]!;
  static Color warning200 = OneColors.warning[200]!;
  static Color warning300 = OneColors.warning[300]!;
  static Color warning400 = OneColors.warning[400]!;
  static Color warning500 = OneColors.warning[500]!;
  static Color warning600 = OneColors.warning[600]!;
  static Color warning700 = OneColors.warning[700]!;
  static Color warning800 = OneColors.warning[800]!;
  static Color warning900 = OneColors.warning[900]!;
  static Color warning950 = OneColors.warning[950]!;

  static Color success50 = OneColors.success[50]!;
  static Color success100 = OneColors.success[100]!;
  static Color success200 = OneColors.success[200]!;
  static Color success300 = OneColors.success[300]!;
  static Color success400 = OneColors.success[400]!;
  static Color success500 = OneColors.success[500]!;
  static Color success600 = OneColors.success[600]!;
  static Color success700 = OneColors.success[700]!;
  static Color success800 = OneColors.success[800]!;
  static Color success900 = OneColors.success[900]!;
  static Color success950 = OneColors.success[950]!;

  // Дополнительные цвета для UtilityColorType
  static Color grayBlue50 = OneColors.grayBlue[50]!;
  static Color grayBlue100 = OneColors.grayBlue[100]!;
  static Color grayBlue200 = OneColors.grayBlue[200]!;
  static Color grayBlue300 = OneColors.grayBlue[300]!;
  static Color grayBlue400 = OneColors.grayBlue[400]!;
  static Color grayBlue500 = OneColors.grayBlue[500]!;
  static Color grayBlue600 = OneColors.grayBlue[600]!;
  static Color grayBlue700 = OneColors.grayBlue[700]!;
  static Color grayBlue800 = OneColors.grayBlue[800]!;
  static Color grayBlue900 = OneColors.grayBlue[900]!;
  static Color grayBlue950 = OneColors.grayBlue[950]!;

  static Color blueLight50 = OneColors.blueLight[50]!;
  static Color blueLight100 = OneColors.blueLight[100]!;
  static Color blueLight200 = OneColors.blueLight[200]!;
  static Color blueLight300 = OneColors.blueLight[300]!;
  static Color blueLight400 = OneColors.blueLight[400]!;
  static Color blueLight500 = OneColors.blueLight[500]!;
  static Color blueLight600 = OneColors.blueLight[600]!;
  static Color blueLight700 = OneColors.blueLight[700]!;
  static Color blueLight800 = OneColors.blueLight[800]!;
  static Color blueLight900 = OneColors.blueLight[900]!;
  static Color blueLight950 = OneColors.blueLight[950]!;

  static Color blue50 = OneColors.blue[50]!;
  static Color blue100 = OneColors.blue[100]!;
  static Color blue200 = OneColors.blue[200]!;
  static Color blue300 = OneColors.blue[300]!;
  static Color blue400 = OneColors.blue[400]!;
  static Color blue500 = OneColors.blue[500]!;
  static Color blue600 = OneColors.blue[600]!;
  static Color blue700 = OneColors.blue[700]!;
  static Color blue800 = OneColors.blue[800]!;
  static Color blue900 = OneColors.blue[900]!;
  static Color blue950 = OneColors.blue[950]!;

  static Color blueDark50 = OneColors.blueDark[50]!;
  static Color blueDark100 = OneColors.blueDark[100]!;
  static Color blueDark200 = OneColors.blueDark[200]!;
  static Color blueDark300 = OneColors.blueDark[300]!;
  static Color blueDark400 = OneColors.blueDark[400]!;
  static Color blueDark500 = OneColors.blueDark[500]!;
  static Color blueDark600 = OneColors.blueDark[600]!;
  static Color blueDark700 = OneColors.blueDark[700]!;
  static Color blueDark800 = OneColors.blueDark[800]!;
  static Color blueDark900 = OneColors.blueDark[900]!;
  static Color blueDark950 = OneColors.blueDark[950]!;

  static Color indigo50 = OneColors.indigo[50]!;
  static Color indigo100 = OneColors.indigo[100]!;
  static Color indigo200 = OneColors.indigo[200]!;
  static Color indigo300 = OneColors.indigo[300]!;
  static Color indigo400 = OneColors.indigo[400]!;
  static Color indigo500 = OneColors.indigo[500]!;
  static Color indigo600 = OneColors.indigo[600]!;
  static Color indigo700 = OneColors.indigo[700]!;
  static Color indigo800 = OneColors.indigo[800]!;
  static Color indigo900 = OneColors.indigo[900]!;
  static Color indigo950 = OneColors.indigo[950]!;

  static Color purple50 = OneColors.purple[50]!;
  static Color purple100 = OneColors.purple[100]!;
  static Color purple200 = OneColors.purple[200]!;
  static Color purple300 = OneColors.purple[300]!;
  static Color purple400 = OneColors.purple[400]!;
  static Color purple500 = OneColors.purple[500]!;
  static Color purple600 = OneColors.purple[600]!;
  static Color purple700 = OneColors.purple[700]!;
  static Color purple800 = OneColors.purple[800]!;
  static Color purple900 = OneColors.purple[900]!;
  static Color purple950 = OneColors.purple[950]!;

  static Color fuchsia50 = OneColors.fuchsia[50]!;
  static Color fuchsia100 = OneColors.fuchsia[100]!;
  static Color fuchsia200 = OneColors.fuchsia[200]!;
  static Color fuchsia300 = OneColors.fuchsia[300]!;
  static Color fuchsia400 = OneColors.fuchsia[400]!;
  static Color fuchsia500 = OneColors.fuchsia[500]!;
  static Color fuchsia600 = OneColors.fuchsia[600]!;
  static Color fuchsia700 = OneColors.fuchsia[700]!;
  static Color fuchsia800 = OneColors.fuchsia[800]!;
  static Color fuchsia900 = OneColors.fuchsia[900]!;
  static Color fuchsia950 = OneColors.fuchsia[950]!;

  static Color pink50 = OneColors.pink[50]!;
  static Color pink100 = OneColors.pink[100]!;
  static Color pink200 = OneColors.pink[200]!;
  static Color pink300 = OneColors.pink[300]!;
  static Color pink400 = OneColors.pink[400]!;
  static Color pink500 = OneColors.pink[500]!;
  static Color pink600 = OneColors.pink[600]!;
  static Color pink700 = OneColors.pink[700]!;
  static Color pink800 = OneColors.pink[800]!;
  static Color pink900 = OneColors.pink[900]!;
  static Color pink950 = OneColors.pink[950]!;

  static Color orangeDark50 = OneColors.orangeDark[50]!;
  static Color orangeDark100 = OneColors.orangeDark[100]!;
  static Color orangeDark200 = OneColors.orangeDark[200]!;
  static Color orangeDark300 = OneColors.orangeDark[300]!;
  static Color orangeDark400 = OneColors.orangeDark[400]!;
  static Color orangeDark500 = OneColors.orangeDark[500]!;
  static Color orangeDark600 = OneColors.orangeDark[600]!;
  static Color orangeDark700 = OneColors.orangeDark[700]!;
  static Color orangeDark800 = OneColors.orangeDark[800]!;
  static Color orangeDark900 = OneColors.orangeDark[900]!;
  static Color orangeDark950 = OneColors.orangeDark[950]!;

  static Color orange50 = OneColors.orange[50]!;
  static Color orange100 = OneColors.orange[100]!;
  static Color orange200 = OneColors.orange[200]!;
  static Color orange300 = OneColors.orange[300]!;
  static Color orange400 = OneColors.orange[400]!;
  static Color orange500 = OneColors.orange[500]!;
  static Color orange600 = OneColors.orange[600]!;
  static Color orange700 = OneColors.orange[700]!;
  static Color orange800 = OneColors.orange[800]!;
  static Color orange900 = OneColors.orange[900]!;
  static Color orange950 = OneColors.orange[950]!;
}
