part of 'one_colors.dart';

class OneColorsVariables {
  // ============================================================================
  // TEXT COLORS
  // ============================================================================

  /// Primary text such as page headings
  /// Light: gray-900 | Dark: gray-50
  static Color textPrimaryLight = gray900;
  static Color textPrimaryDark = gray50;

  /// Primary text when used on solid brand color backgrounds
  /// Commonly used for brand theme website sections (e.g. CTA sections)
  /// Light: white | Dark: gray-50
  static Color textPrimaryOnBrandLight = white;
  static Color textPrimaryOnBrandDark = gray50;

  /// Secondary text such as labels and section headings
  /// Light: gray-700 | Dark: gray-300
  static Color textSecondaryLight = gray700;
  static Color textSecondaryDark = gray300;

  /// Secondary text when in hover state
  /// Light: gray-800 | Dark: gray-200
  static Color textSecondaryHoverLight = gray800;
  static Color textSecondaryHoverDark = gray200;

  /// Secondary text when used on solid brand color backgrounds
  /// Commonly used for brand theme website sections (e.g. CTA sections)
  /// Light: brand-200 | Dark: gray-300
  static Color textSecondaryOnBrandLight(MaterialColor brandColor) =>
      brandColor[200]!;
  static Color textSecondaryOnBrandDark = gray300;

  /// Tertiary text such as supporting text and paragraph text
  /// Light: gray-600 | Dark: gray-400
  static Color textTertiaryLight = gray600;
  static Color textTertiaryDark = gray400;

  /// Tertiary text when in hover state
  /// Light: gray-700 | Dark: gray-300
  static Color textTertiaryHoverLight = gray700;
  static Color textTertiaryHoverDark = gray300;

  /// Tertiary text when used on solid brand color backgrounds
  /// Commonly used for brand theme website sections (e.g. CTA sections)
  /// Light: brand-200 | Dark: gray-400
  static Color textTertiaryOnBrandLight(MaterialColor brandColor) =>
      brandColor[200]!;
  static Color textTertiaryOnBrandDark = gray400;

  /// Quaternary text for more subtle and lower-contrast text
  /// Such as footer column headings
  /// Light: gray-500 | Dark: gray-400
  static Color textQuaternaryLight = gray500;
  static Color textQuaternaryDark = gray400;

  /// Quaternary text when used on solid brand color backgrounds
  /// Commonly used for brand theme website sections (e.g. footers)
  /// Light: brand-300 | Dark: gray-400
  static Color textQuaternaryOnBrandLight(MaterialColor brandColor) =>
      brandColor[300]!;
  static Color textQuaternaryOnBrandDark = gray400;

  /// Text that is always white, regardless of the mode
  static Color textWhite = white;

  /// Default color for disabled text
  /// Such as disabled input fields or buttons
  /// Can be changed to gray-400, but gray-500 is higher contrast and more accessible
  /// Light: gray-500 | Dark: gray-500
  static Color textDisabledLight = gray500;
  static Color textDisabledDark = gray500;

  /// Default color for placeholder text
  /// Such as input field placeholders
  /// Can be changed to gray-400, but gray-500 is more accessible (higher contrast)
  /// Light: gray-500 | Dark: gray-400
  static Color textPlaceholderLight = gray500;
  static Color textPlaceholderDark = gray400;

  /// A more subtle (lower contrast) alternative placeholder text
  /// Useful for components such as verification code input fields
  /// Light: gray-300 | Dark: gray-700
  static Color textPlaceholderSubtleLight = gray300;
  static Color textPlaceholderSubtleDark = gray700;

  /// Primary brand text useful for headings
  /// E.g. cards in pricing page headers
  /// Light: brand-900 | Dark: gray-50
  static Color textBrandPrimaryLight(MaterialColor brandColor) =>
      brandColor[900]!;
  static Color textBrandPrimaryDark = gray50;

  /// Secondary brand text for accented text, highlights, and subheadings
  /// E.g. subheadings in blog post cards
  /// Light: brand-700 | Dark: gray-300
  static Color textBrandSecondaryLight(MaterialColor brandColor) =>
      brandColor[700]!;
  static Color textBrandSecondaryDark = gray300;

  /// Tertiary brand text for lighter accented text and highlights
  /// E.g. numbers in metric cards
  /// Light: brand-600 | Dark: gray-400
  static Color textBrandTertiaryLight(MaterialColor brandColor) =>
      brandColor[600]!;
  static Color textBrandTertiaryDark = gray400;

  /// An alternative to tertiary brand text that is lighter in dark mode
  /// E.g. numbers in metric cards
  /// Light: brand-600 | Dark: gray-50
  static Color textBrandTertiaryAltLight(MaterialColor brandColor) =>
      brandColor[600]!;
  static Color textBrandTertiaryAltDark = gray50;

  /// Default error state semantic text color
  /// E.g. input field error states
  /// Light: error-600 | Dark: error-400
  static Color textErrorPrimaryLight = error600;
  static Color textErrorPrimaryDark = error400;

  /// Default warning state semantic text color
  /// Light: warning-600 | Dark: warning-400
  static Color textWarningPrimaryLight = warning600;
  static Color textWarningPrimaryDark = warning400;

  /// Default success state semantic text color
  /// Light: success-600 | Dark: success-400
  static Color textSuccessPrimaryLight = success600;
  static Color textSuccessPrimaryDark = success400;

  // ============================================================================
  // BORDER COLORS
  // ============================================================================

  /// High contrast borders
  /// Used for components such as input fields, button groups, and checkboxes
  /// Light: gray-300 | Dark: gray-700
  static Color borderPrimaryLight = gray300;
  static Color borderPrimaryDark = gray700;

  /// Medium contrast borders
  /// This is the most commonly used border color and is the default for most components
  /// Such as file uploaders, cards (tables), and content dividers
  /// Light: gray-200 | Dark: gray-800
  static Color borderSecondaryLight = gray200;
  static Color borderSecondaryDark = gray800;

  /// Low contrast borders useful for very subtle dividers and borders
  /// Such as line and bar chart axis dividers
  /// Light: gray-100 | Dark: gray-800
  static Color borderTertiaryLight = gray100;
  static Color borderTertiaryDark = gray800;

  /// Default disabled border color for disabled states
  /// In components such as input fields and checkboxes
  /// Light: gray-300 | Dark: gray-700
  static Color borderDisabledLight = gray300;
  static Color borderDisabledDark = gray700;

  /// A more subtle (lower contrast) alternative for disabled borders
  /// Such as disabled buttons
  /// Light: gray-200 | Dark: gray-800
  static Color borderDisabledSubtleLight = gray200;
  static Color borderDisabledSubtleDark = gray800;

  /// Default brand border color
  /// Useful for active states in components such as input fields
  /// Light: brand-500 | Dark: brand-400
  static Color borderBrandLight(MaterialColor brandColor) => brandColor[500]!;
  static Color borderBrandDark(MaterialColor brandColor) => brandColor[400]!;

  /// A brand border color that switches to gray when in dark mode
  /// Useful for components such as brand-style variants of banners and footers
  /// Light: brand-600 | Dark: gray-700
  static Color borderBrandAltLight(MaterialColor brandColor) =>
      brandColor[600]!;
  static Color borderBrandAltDark = gray700;

  /// Default error state semantic border color
  /// Useful for error states in components such as input fields and file uploaders
  /// Light: error-500 | Dark: error-400
  static Color borderErrorLight = error500;
  static Color borderErrorDark = error400;

  /// A more subtle (lower contrast) alternative for error state semantic borders
  /// Such as error state input fields
  /// Light: error-300 | Dark: error-400
  static Color borderErrorSubtleLight = error300;
  static Color borderErrorSubtleDark = error400;

  /// Default success state semantic border color
  /// Light: success-500 | Dark: success-400
  static Color borderSuccessLight = success500;
  static Color borderSuccessDark = success400;

  /// A more subtle (lower contrast) alternative for success state semantic borders
  /// Light: success-300 | Dark: success-400
  static Color borderSuccessSubtleLight = success300;
  static Color borderSuccessSubtleDark = success400;

  /// Default warning state semantic border color
  /// Light: warning-500 | Dark: warning-400
  static Color borderWarningLight = warning500;
  static Color borderWarningDark = warning400;

  /// A more subtle (lower contrast) alternative for warning state semantic borders
  /// Light: warning-300 | Dark: warning-400
  static Color borderWarningSubtleLight = warning300;
  static Color borderWarningSubtleDark = warning400;

  // ============================================================================
  // FOREGROUND COLORS
  // ============================================================================

  /// Primary foreground color used for icons, buttons, and UI elements
  /// Light: gray-900 | Dark: white
  static Color fgPrimaryLight = gray900;
  static Color fgPrimaryDark = white;

  /// Secondary foreground color used for icons and UI elements with less prominence
  /// Light: gray-700 | Dark: gray-300
  static Color fgSecondaryLight = gray700;
  static Color fgSecondaryDark = gray300;

  /// Secondary foreground color when in hover state
  /// Light: gray-800 | Dark: gray-200
  static Color fgSecondaryHoverLight = gray800;
  static Color fgSecondaryHoverDark = gray200;

  /// Tertiary foreground color for more subtle icons and UI elements
  /// Light: gray-600 | Dark: gray-400
  static Color fgTertiaryLight = gray600;
  static Color fgTertiaryDark = gray400;

  /// Tertiary foreground color when in hover state
  /// Light: gray-700 | Dark: gray-300
  static Color fgTertiaryHoverLight = gray700;
  static Color fgTertiaryHoverDark = gray300;

  /// Quaternary foreground color for even more subtle icons and UI elements
  /// Light: gray-500 | Dark: gray-400
  static Color fgQuaternaryLight = gray500;
  static Color fgQuaternaryDark = gray400;

  /// Quaternary foreground color when in hover state
  /// Light: gray-600 | Dark: gray-300
  static Color fgQuaternaryHoverLight = gray600;
  static Color fgQuaternaryHoverDark = gray300;

  /// Quinary foreground color for very subtle icons and UI elements
  /// Light: gray-400 | Dark: gray-500
  static Color fgQuinaryLight = gray400;
  static Color fgQuinaryDark = gray500;

  /// Quinary foreground color when in hover state
  /// Light: gray-500 | Dark: gray-400
  static Color fgQuinaryHoverLight = gray500;
  static Color fgQuinaryHoverDark = gray400;

  /// Senary foreground color for the most subtle icons and UI elements
  /// Light: gray-300 | Dark: gray-600
  static Color fgSenaryLight = gray300;
  static Color fgSenaryDark = gray600;

  /// White foreground that is always white regardless of theme
  static Color fgWhite = white;

  /// Disabled state foreground color for icons and UI elements
  /// Light: gray-400 | Dark: gray-500
  static Color fgDisabledLight = gray400;
  static Color fgDisabledDark = gray500;

  /// A more subtle (lower contrast) alternative for disabled foreground
  /// Light: gray-300 | Dark: gray-600
  static Color fgDisabledSubtleLight = gray300;
  static Color fgDisabledSubtleDark = gray600;

  /// Primary brand foreground color for icons and UI elements
  /// Light: brand-600 | Dark: brand-500
  static Color fgBrandPrimaryLight(MaterialColor brandColor) =>
      brandColor[600]!;
  static Color fgBrandPrimaryDark(MaterialColor brandColor) => brandColor[500]!;

  /// Alternative primary brand foreground that switches to gray in dark mode
  /// Light: brand-600 | Dark: gray-300
  static Color fgBrandPrimaryAltLight(MaterialColor brandColor) =>
      brandColor[600]!;
  static Color fgBrandPrimaryAltDark = gray300;

  /// Secondary brand foreground color for less prominent brand elements
  /// Light: brand-500 | Dark: brand-500
  static Color fgBrandSecondaryLight(MaterialColor brandColor) =>
      brandColor[500]!;
  static Color fgBrandSecondaryDark(MaterialColor brandColor) =>
      brandColor[500]!;

  /// Primary error state semantic foreground color
  /// Light: error-600 | Dark: error-500
  static Color fgErrorPrimaryLight = error600;
  static Color fgErrorPrimaryDark = error500;

  /// Secondary error state semantic foreground color
  /// Light: error-500 | Dark: error-400
  static Color fgErrorSecondaryLight = error500;
  static Color fgErrorSecondaryDark = error400;

  /// Primary warning state semantic foreground color
  /// Light: warning-600 | Dark: warning-500
  static Color fgWarningPrimaryLight = warning600;
  static Color fgWarningPrimaryDark = warning500;

  /// Secondary warning state semantic foreground color
  /// Light: warning-500 | Dark: warning-400
  static Color fgWarningSecondaryLight = warning500;
  static Color fgWarningSecondaryDark = warning400;

  /// Primary success state semantic foreground color
  /// Light: success-600 | Dark: success-500
  static Color fgSuccessPrimaryLight = success600;
  static Color fgSuccessPrimaryDark = success500;

  /// Secondary success state semantic foreground color
  /// Light: success-500 | Dark: success-400
  static Color fgSuccessSecondaryLight = success500;
  static Color fgSuccessSecondaryDark = success400;

  // ============================================================================
  // BACKGROUND COLORS
  // ============================================================================

  /// Primary background color for the main application background
  /// Light: white | Dark: gray-950
  static Color bgPrimaryLight = white;
  static Color bgPrimaryDark = gray950;

  /// Alternative primary background with slightly different shade in dark mode
  /// Light: white | Dark: gray-900
  static Color bgPrimaryAltLight = white;
  static Color bgPrimaryAltDark = gray900;

  /// Primary background when in hover state
  /// Light: gray-50 | Dark: gray-800
  static Color bgPrimaryHoverLight = gray50;
  static Color bgPrimaryHoverDark = gray800;

  /// Solid primary background that doesn't adapt much between light and dark
  /// Light: gray-950 | Dark: gray-900
  static Color bgPrimarySolidLight = gray950;
  static Color bgPrimarySolidDark = gray900;

  /// Secondary background for cards, panels, and sections
  /// Light: gray-50 | Dark: gray-900
  static Color bgSecondaryLight = gray50;
  static Color bgSecondaryDark = gray900;

  /// Alternative secondary background with slightly different shade
  /// Light: gray-50 | Dark: gray-950
  static Color bgSecondaryAltLight = gray50;
  static Color bgSecondaryAltDark = gray950;

  /// Secondary background when in hover state
  /// Light: gray-100 | Dark: gray-800
  static Color bgSecondaryHoverLight = gray100;
  static Color bgSecondaryHoverDark = gray800;

  /// A more subtle (lower contrast) alternative for secondary backgrounds
  /// Light: gray-25 | Dark: gray-900
  static Color bgSecondarySubtleLight = gray25;
  static Color bgSecondarySubtleDark = gray900;

  /// Solid secondary background that is consistent across themes
  /// Light: gray-600 | Dark: gray-600
  static Color bgSecondarySolidLight = gray600;
  static Color bgSecondarySolidDark = gray600;

  /// Tertiary background for nested components
  /// Light: gray-100 | Dark: gray-800
  static Color bgTertiaryLight = gray100;
  static Color bgTertiaryDark = gray800;

  /// Quaternary background for deeply nested components
  /// Light: gray-200 | Dark: gray-700
  static Color bgQuaternaryLight = gray200;
  static Color bgQuaternaryDark = gray700;

  /// Active state background color for interactive elements
  /// Light: gray-50 | Dark: gray-800
  static Color bgActiveLight = gray50;
  static Color bgActiveDark = gray800;

  /// Disabled state background color
  /// Light: gray-300 | Dark: gray-600
  static Color bgDisabledLight = gray300;
  static Color bgDisabledDark = gray600;

  /// A more subtle (lower contrast) alternative for disabled backgrounds
  /// Light: gray-50 | Dark: gray-900
  static Color bgDisabledSubtleLight = gray50;
  static Color bgDisabledSubtleDark = gray900;

  /// Overlay background for modals, drawers, and overlays
  /// Light: gray-950 | Dark: gray-800
  static Color bgOverlayLight = gray950;
  static Color bgOverlayDark = gray800;

  /// Primary brand background color
  /// Light: brand-50 | Dark: brand-500
  static Color bgBrandPrimaryLight(MaterialColor brandColor) => brandColor[50]!;
  static Color bgBrandPrimaryDark(MaterialColor brandColor) => brandColor[500]!;

  /// Alternative primary brand background that switches to gray in dark mode
  /// Light: brand-50 | Dark: gray-800
  static Color bgBrandPrimaryAltLight(MaterialColor brandColor) =>
      brandColor[50]!;
  static Color bgBrandPrimaryAltDark = gray800;

  /// Secondary brand background for less prominent brand elements
  /// Light: brand-100 | Dark: brand-600
  static Color bgBrandSecondaryLight(MaterialColor brandColor) =>
      brandColor[100]!;
  static Color bgBrandSecondaryDark(MaterialColor brandColor) =>
      brandColor[600]!;

  /// Solid brand background for buttons and prominent UI elements
  /// Light: brand-600 | Dark: brand-600
  static Color bgBrandSolidLight(MaterialColor brandColor) => brandColor[600]!;
  static Color bgBrandSolidDark(MaterialColor brandColor) => brandColor[600]!;

  /// Solid brand background when in hover state
  /// Light: brand-700 | Dark: brand-500
  static Color bgBrandSolidHoverLight(MaterialColor brandColor) =>
      brandColor[700]!;
  static Color bgBrandSolidHoverDark(MaterialColor brandColor) =>
      brandColor[500]!;

  /// Brand section background for hero sections and featured areas
  /// Light: brand-800 | Dark: gray-800
  static Color bgBrandSectionLight(MaterialColor brandColor) =>
      brandColor[800]!;
  static Color bgBrandSectionDark = gray800;

  /// A more subtle alternative for brand section backgrounds
  /// Light: brand-700 | Dark: gray-950
  static Color bgBrandSectionSubtleLight(MaterialColor brandColor) =>
      brandColor[700]!;
  static Color bgBrandSectionSubtleDark = gray950;

  /// Primary error state semantic background
  /// Light: error-50 | Dark: error-950
  static Color bgErrorPrimaryLight = error50;
  static Color bgErrorPrimaryDark = error950;

  /// Secondary error state semantic background
  /// Light: error-100 | Dark: error-100
  static Color bgErrorSecondaryLight = error100;
  static Color bgErrorSecondaryDark = error100;

  /// Solid error background for error buttons and prominent error states
  /// Light: error-600 | Dark: error-600
  static Color bgErrorSolidLight = error600;
  static Color bgErrorSolidDark = error600;

  /// Primary warning state semantic background
  /// Light: warning-50 | Dark: warning-50
  static Color bgWarningPrimaryLight = warning50;
  static Color bgWarningPrimaryDark = warning50;

  /// Secondary warning state semantic background
  /// Light: warning-100 | Dark: warning-100
  static Color bgWarningSecondaryLight = warning100;
  static Color bgWarningSecondaryDark = warning100;

  /// Solid warning background for warning buttons and prominent warning states
  /// Light: warning-600 | Dark: warning-600
  static Color bgWarningSolidLight = warning600;
  static Color bgWarningSolidDark = warning600;

  /// Primary success state semantic background
  /// Light: success-50 | Dark: success-950
  static Color bgSuccessPrimaryLight = success50;
  static Color bgSuccessPrimaryDark = success950;

  /// Secondary success state semantic background
  /// Light: success-100 | Dark: success-800
  static Color bgSuccessSecondaryLight = success100;
  static Color bgSuccessSecondaryDark = success800;

  /// Solid success background for success buttons and prominent success states
  /// Light: success-600 | Dark: success-600
  static Color bgSuccessSolidLight = success600;
  static Color bgSuccessSolidDark = success600;

  // ============================================================================
  // BASE COLORS
  // ============================================================================

  /// Pure white color
  static Color white = OneColors.white;

  /// Pure black color
  static Color black = OneColors.black;

  // ============================================================================
  // UTILITY COLORS - GRAY
  // ============================================================================

  /// These utility colors provide direct access to all color shades
  /// from the Untitled UI color palette. They are used as building blocks
  /// for semantic color variables above.
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

  // ============================================================================
  // UTILITY COLORS - ERROR
  // ============================================================================

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

  // ============================================================================
  // UTILITY COLORS - WARNING
  // ============================================================================

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

  // ============================================================================
  // UTILITY COLORS - SUCCESS
  // ============================================================================

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

  // ============================================================================
  // UTILITY COLORS - SECONDARY COLORS
  // ============================================================================
  // Additional secondary colors from Untitled UI palette

  // Gray Blue
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

  // Blue Light
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

  // Blue
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

  // Blue Dark
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

  // Indigo
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

  // Purple
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

  // Fuchsia
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

  // Pink
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

  // Orange Dark
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

  // Orange
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

  // Yellow
  static Color yellow50 = OneColors.yellow[50]!;
  static Color yellow100 = OneColors.yellow[100]!;
  static Color yellow200 = OneColors.yellow[200]!;
  static Color yellow300 = OneColors.yellow[300]!;
  static Color yellow400 = OneColors.yellow[400]!;
  static Color yellow500 = OneColors.yellow[500]!;
  static Color yellow600 = OneColors.yellow[600]!;
  static Color yellow700 = OneColors.yellow[700]!;
  static Color yellow800 = OneColors.yellow[800]!;
  static Color yellow900 = OneColors.yellow[900]!;
  static Color yellow950 = OneColors.yellow[950]!;

  // Rose
  static Color rose50 = OneColors.rose[50]!;
  static Color rose100 = OneColors.rose[100]!;
  static Color rose200 = OneColors.rose[200]!;
  static Color rose300 = OneColors.rose[300]!;
  static Color rose400 = OneColors.rose[400]!;
  static Color rose500 = OneColors.rose[500]!;
  static Color rose600 = OneColors.rose[600]!;
  static Color rose700 = OneColors.rose[700]!;
  static Color rose800 = OneColors.rose[800]!;
  static Color rose900 = OneColors.rose[900]!;
  static Color rose950 = OneColors.rose[950]!;

  // Violet
  static Color violet50 = OneColors.violet[50]!;
  static Color violet100 = OneColors.violet[100]!;
  static Color violet200 = OneColors.violet[200]!;
  static Color violet300 = OneColors.violet[300]!;
  static Color violet400 = OneColors.violet[400]!;
  static Color violet500 = OneColors.violet[500]!;
  static Color violet600 = OneColors.violet[600]!;
  static Color violet700 = OneColors.violet[700]!;
  static Color violet800 = OneColors.violet[800]!;
  static Color violet900 = OneColors.violet[900]!;
  static Color violet950 = OneColors.violet[950]!;

  // Teal
  static Color teal50 = OneColors.teal[50]!;
  static Color teal100 = OneColors.teal[100]!;
  static Color teal200 = OneColors.teal[200]!;
  static Color teal300 = OneColors.teal[300]!;
  static Color teal400 = OneColors.teal[400]!;
  static Color teal500 = OneColors.teal[500]!;
  static Color teal600 = OneColors.teal[600]!;
  static Color teal700 = OneColors.teal[700]!;
  static Color teal800 = OneColors.teal[800]!;
  static Color teal900 = OneColors.teal[900]!;
  static Color teal950 = OneColors.teal[950]!;

  // Cyan
  static Color cyan50 = OneColors.cyan[50]!;
  static Color cyan100 = OneColors.cyan[100]!;
  static Color cyan200 = OneColors.cyan[200]!;
  static Color cyan300 = OneColors.cyan[300]!;
  static Color cyan400 = OneColors.cyan[400]!;
  static Color cyan500 = OneColors.cyan[500]!;
  static Color cyan600 = OneColors.cyan[600]!;
  static Color cyan700 = OneColors.cyan[700]!;
  static Color cyan800 = OneColors.cyan[800]!;
  static Color cyan900 = OneColors.cyan[900]!;
  static Color cyan950 = OneColors.cyan[950]!;

  // Moss
  static Color moss50 = OneColors.moss[50]!;
  static Color moss100 = OneColors.moss[100]!;
  static Color moss200 = OneColors.moss[200]!;
  static Color moss300 = OneColors.moss[300]!;
  static Color moss400 = OneColors.moss[400]!;
  static Color moss500 = OneColors.moss[500]!;
  static Color moss600 = OneColors.moss[600]!;
  static Color moss700 = OneColors.moss[700]!;
  static Color moss800 = OneColors.moss[800]!;
  static Color moss900 = OneColors.moss[900]!;
  static Color moss950 = OneColors.moss[950]!;

  // Green Light
  static Color greenLight50 = OneColors.greenLight[50]!;
  static Color greenLight100 = OneColors.greenLight[100]!;
  static Color greenLight200 = OneColors.greenLight[200]!;
  static Color greenLight300 = OneColors.greenLight[300]!;
  static Color greenLight400 = OneColors.greenLight[400]!;
  static Color greenLight500 = OneColors.greenLight[500]!;
  static Color greenLight600 = OneColors.greenLight[600]!;
  static Color greenLight700 = OneColors.greenLight[700]!;
  static Color greenLight800 = OneColors.greenLight[800]!;
  static Color greenLight900 = OneColors.greenLight[900]!;
  static Color greenLight950 = OneColors.greenLight[950]!;

  // Green
  static Color green50 = OneColors.green[50]!;
  static Color green100 = OneColors.green[100]!;
  static Color green200 = OneColors.green[200]!;
  static Color green300 = OneColors.green[300]!;
  static Color green400 = OneColors.green[400]!;
  static Color green500 = OneColors.green[500]!;
  static Color green600 = OneColors.green[600]!;
  static Color green700 = OneColors.green[700]!;
  static Color green800 = OneColors.green[800]!;
  static Color green900 = OneColors.green[900]!;
  static Color green950 = OneColors.green[950]!;
}
