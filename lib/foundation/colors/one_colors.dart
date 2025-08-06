import 'package:flutter/material.dart';
import 'package:one_uikit/extension/color_extension.dart';

part 'one_colors_helper.dart';
part 'one_colors_variables.dart';

class OneColors {
  // Base
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
  static const Color transparent = Color(0x00000000);

  // Gray
  static const MaterialColor grayLightMode = MaterialColor(
    0xFF667085, // 500 as primary
    <int, Color>{
      25: Color(0xFFFCFCFD),
      50: Color(0xFFF9FAFB),
      100: Color(0xFFF2F4F7),
      200: Color(0xFFE4E7EC),
      300: Color(0xFFD0D5DD),
      400: Color(0xFF98A2B3),
      500: Color(0xFF667085),
      600: Color(0xFF475467),
      700: Color(0xFF344054),
      800: Color(0xFF182230),
      900: Color(0xFF101828),
      950: Color(0xFF0C111D),
    },
  );

  // Gray (dark mode)
  static const MaterialColor grayDarkMode = MaterialColor(
    0xFF94969C, // 500 as primary
    <int, Color>{
      25: Color(0xFFFAFAFA),
      50: Color(0xFFF5F5F6),
      100: Color(0xFFF0F1F1),
      200: Color(0xFFECECED),
      300: Color(0xFFCECFD2),
      400: Color(0xFF94969C),
      500: Color(0xFF85888E),
      600: Color(0xFF61646C),
      700: Color(0xFF333741),
      800: Color(0xFF1F242F),
      900: Color(0xFF161B26),
      950: Color(0xFF0C111D),
    },
  );

  // Brand
  static const MaterialColor brand = MaterialColor(
    0xFF7F56D9, // 500 as primary
    <int, Color>{
      25: Color(0xFFFCFAFF),
      50: Color(0xFFF9F5FF),
      100: Color(0xFFF4EBFF),
      200: Color(0xFFE9D7FE),
      300: Color(0xFFD6BBFB),
      400: Color(0xFFB692F6),
      500: Color(0xFF9E77ED),
      600: Color(0xFF7F56D9),
      700: Color(0xFF6941C6),
      800: Color(0xFF53389E),
      900: Color(0xFF42307D),
      950: Color(0xFF2C1C5F),
    },
  );

  // Error
  static const MaterialColor error = MaterialColor(
    0xFFF04438, // 500 as primary
    <int, Color>{
      25: Color(0xFFFFFBFA),
      50: Color(0xFFFEF3F2),
      100: Color(0xFFFEE4E2),
      200: Color(0xFFFECDCA),
      300: Color(0xFFFDA29B),
      400: Color(0xFFF97066),
      500: Color(0xFFF04438),
      600: Color(0xFFD92D20),
      700: Color(0xFFB42318),
      800: Color(0xFF912018),
      900: Color(0xFF7A271A),
      950: Color(0xFF55160C),
    },
  );

  // Warning
  static const MaterialColor warning = MaterialColor(
    0xFFF79009, // 500 as primary
    <int, Color>{
      25: Color(0xFFFFFCF5),
      50: Color(0xFFFFFAEB),
      100: Color(0xFFFEF0C7),
      200: Color(0xFFFEDF89),
      300: Color(0xFFFEC84B),
      400: Color(0xFFFDB022),
      500: Color(0xFFF79009),
      600: Color(0xFFDC6803),
      700: Color(0xFFB54708),
      800: Color(0xFF93370D),
      900: Color(0xFF7A2E0E),
      950: Color(0xFF4E1D09),
    },
  );

  // Success
  static const MaterialColor success = MaterialColor(
    0xFF17B26A, // 500 as primary
    <int, Color>{
      25: Color(0xFFF6FEF9),
      50: Color(0xFFECFDF3),
      100: Color(0xFFDCFAE6),
      200: Color(0xFFABEFC6),
      300: Color(0xFF75E0A7),
      400: Color(0xFF47CD89),
      500: Color(0xFF17B26A),
      600: Color(0xFF079455),
      700: Color(0xFF067647),
      800: Color(0xFF085D3A),
      900: Color(0xFF074D31),
      950: Color(0xFF053321),
    },
  );

  // Secondary colors
  static const MaterialColor grayBlue = MaterialColor(
    0xFF4E5BA6, // 500 as primary
    <int, Color>{
      25: Color(0xFFFCFCFD),
      50: Color(0xFFF8F9FC),
      100: Color(0xFFEAECF5),
      200: Color(0xFFD5D9EB),
      300: Color(0xFFB3B8DB),
      400: Color(0xFF717BBC),
      500: Color(0xFF4E5BA6),
      600: Color(0xFF3E4784),
      700: Color(0xFF363F72),
      800: Color(0xFF293056),
      900: Color(0xFF101323),
      950: Color(0xFF0D0F1C),
    },
  );

  static const MaterialColor grayCool = MaterialColor(
    0xFF5D6B98, // 500 as primary
    <int, Color>{
      25: Color(0xFFFCFCFD),
      50: Color(0xFFF9F9FB),
      100: Color(0xFFEFF1F5),
      200: Color(0xFFDCDFEA),
      300: Color(0xFFB9C0D4),
      400: Color(0xFF7D89B0),
      500: Color(0xFF5D6B98),
      600: Color(0xFF4A5578),
      700: Color(0xFF404968),
      800: Color(0xFF30374F),
      900: Color(0xFF111322),
      950: Color(0xFF0E101B),
    },
  );

  static const MaterialColor grayModern = MaterialColor(
    0xFF697586, // 500 as primary
    <int, Color>{
      25: Color(0xFFFCFCFD),
      50: Color(0xFFF8FAFC),
      100: Color(0xFFEEF2F6),
      200: Color(0xFFE3E8EF),
      300: Color(0xFFCDD5DF),
      400: Color(0xFF9AA4B2),
      500: Color(0xFF697586),
      600: Color(0xFF4B5565),
      700: Color(0xFF364152),
      800: Color(0xFF202939),
      900: Color(0xFF121926),
      950: Color(0xFF0D121C),
    },
  );

  static const MaterialColor grayNeutral = MaterialColor(
    0xFF9DA4AE, // 500 as primary
    <int, Color>{
      25: Color(0xFFFCFCFD),
      50: Color(0xFFF9FAFB),
      100: Color(0xFFF3F4F6),
      200: Color(0xFFE5E7EB),
      300: Color(0xFFD2D6DB),
      400: Color(0xFF9DA4AE),
      500: Color(0xFF6C737F),
      600: Color(0xFF4D5761),
      700: Color(0xFF384250),
      800: Color(0xFF1F2A37),
      900: Color(0xFF111927),
      950: Color(0xFF0D121C),
    },
  );

  static const MaterialColor grayIron = MaterialColor(
    0xFFA0A0AB, // 500 as primary
    <int, Color>{
      25: Color(0xFFFCFCFC),
      50: Color(0xFFFAFAFA),
      100: Color(0xFFF4F4F5),
      200: Color(0xFFE4E4E7),
      300: Color(0xFFD1D1D6),
      400: Color(0xFFA0A0AB),
      500: Color(0xFF70707B),
      600: Color(0xFF51525C),
      700: Color(0xFF3F3F46),
      800: Color(0xFF26272B),
      900: Color(0xFF1A1A1E),
      950: Color(0xFF131316),
    },
  );

  static const MaterialColor grayTrue = MaterialColor(
    0xFFA3A3A3, // 500 as primary
    <int, Color>{
      25: Color(0xFFFCFCFC),
      50: Color(0xFFF7F7F7),
      100: Color(0xFFF5F5F5),
      200: Color(0xFFE5E5E5),
      300: Color(0xFFD6D6D6),
      400: Color(0xFFA3A3A3),
      500: Color(0xFF737373),
      600: Color(0xFF525252),
      700: Color(0xFF424242),
      800: Color(0xFF292929),
      900: Color(0xFF141414),
      950: Color(0xFF0F0F0F),
    },
  );

  static const MaterialColor grayWarm = MaterialColor(
    0xFFA9A29D, // 500 as primary
    <int, Color>{
      25: Color(0xFFFDFDFC),
      50: Color(0xFFFAFAF9),
      100: Color(0xFFF5F5F4),
      200: Color(0xFFE7E5E4),
      300: Color(0xFFD7D3D0),
      400: Color(0xFFA9A29D),
      500: Color(0xFF79716B),
      600: Color(0xFF57534E),
      700: Color(0xFF44403C),
      800: Color(0xFF292524),
      900: Color(0xFF1C1917),
      950: Color(0xFF171412),
    },
  );

  static const MaterialColor moss = MaterialColor(
    0xFF669F2A, // 500 as primary
    <int, Color>{
      25: Color(0xFFFAFDF7),
      50: Color(0xFFF5FBEE),
      100: Color(0xFFE6F4D7),
      200: Color(0xFFCEEAB0),
      300: Color(0xFFACDC79),
      400: Color(0xFF86CB3C),
      500: Color(0xFF669F2A),
      600: Color(0xFF4F7A21),
      700: Color(0xFF3F621A),
      800: Color(0xFF335015),
      900: Color(0xFF2B4212),
      950: Color(0xFF1A280B),
    },
  );

  static const MaterialColor greenLight = MaterialColor(
    0xFF66C61C, // 500 as primary
    <int, Color>{
      25: Color(0xFFFAFEF5),
      50: Color(0xFFF3FEE7),
      100: Color(0xFFE4FBCC),
      200: Color(0xFFD0F8AB),
      300: Color(0xFFA6EF67),
      400: Color(0xFF85E13A),
      500: Color(0xFF66C61C),
      600: Color(0xFF4CA30D),
      700: Color(0xFF3B7C0F),
      800: Color(0xFF326212),
      900: Color(0xFF2B5314),
      950: Color(0xFF15290A),
    },
  );

  static const MaterialColor green = MaterialColor(
    0xFF3CCB7F, // 500 as primary
    <int, Color>{
      25: Color(0xFFF6FEF9),
      50: Color(0xFFEDFCF2),
      100: Color(0xFFD3F8DF),
      200: Color(0xFFAAF0C4),
      300: Color(0xFF73E2A3),
      400: Color(0xFF3CCB7F),
      500: Color(0xFF16B364),
      600: Color(0xFF099250),
      700: Color(0xFF087443),
      800: Color(0xFF095C37),
      900: Color(0xFF084C2E),
      950: Color(0xFF052E1C),
    },
  );

  static const MaterialColor teal = MaterialColor(
    0xFF15B79E, // 500 as primary
    <int, Color>{
      25: Color(0xFFF6FEFC),
      50: Color(0xFFF0FDF9),
      100: Color(0xFFCCFBEF),
      200: Color(0xFF99F6E0),
      300: Color(0xFF5FE9D0),
      400: Color(0xFF2ED3B7),
      500: Color(0xFF15B79E),
      600: Color(0xFF0E9384),
      700: Color(0xFF107569),
      800: Color(0xFF125D56),
      900: Color(0xFF134E48),
      950: Color(0xFF0A2926),
    },
  );

  static const MaterialColor cyan = MaterialColor(
    0xFF06AED4, // 500 as primary
    <int, Color>{
      25: Color(0xFFF5FEFF),
      50: Color(0xFFECFDFF),
      100: Color(0xFFCFF9FE),
      200: Color(0xFFA5F0FC),
      300: Color(0xFF67E3F9),
      400: Color(0xFF22CCEE),
      500: Color(0xFF06AED4),
      600: Color(0xFF088AB2),
      700: Color(0xFF0E7090),
      800: Color(0xFF155B75),
      900: Color(0xFF164C63),
      950: Color(0xFF0D2D3A),
    },
  );

  static const MaterialColor blueLight = MaterialColor(
    0xFF0BA5EC, // 500 as primary
    <int, Color>{
      25: Color(0xFFF5FBFF),
      50: Color(0xFFF0F9FF),
      100: Color(0xFFE0F2FE),
      200: Color(0xFFB9E6FE),
      300: Color(0xFF7CD4FD),
      400: Color(0xFF36BFFA),
      500: Color(0xFF0BA5EC),
      600: Color(0xFF0086C9),
      700: Color(0xFF026AA2),
      800: Color(0xFF065986),
      900: Color(0xFF0B4A6F),
      950: Color(0xFF062C41),
    },
  );

  static const MaterialColor blue = MaterialColor(
    0xFF2E90FA, // 500 as primary
    <int, Color>{
      25: Color(0xFFF5FAFF),
      50: Color(0xFFEFF8FF),
      100: Color(0xFFD1E9FF),
      200: Color(0xFFB2DDFF),
      300: Color(0xFF84CAFF),
      400: Color(0xFF53B1FD),
      500: Color(0xFF2E90FA),
      600: Color(0xFF1570EF),
      700: Color(0xFF175CD3),
      800: Color(0xFF1849A9),
      900: Color(0xFF194185),
      950: Color(0xFF102A56),
    },
  );

  static const MaterialColor blueDark = MaterialColor(
    0xFF2970FF, // 500 as primary
    <int, Color>{
      25: Color(0xFFF5F8FF),
      50: Color(0xFFEFF4FF),
      100: Color(0xFFD1E0FF),
      200: Color(0xFFB2CCFF),
      300: Color(0xFF84ADFF),
      400: Color(0xFF528BFF),
      500: Color(0xFF2970FF),
      600: Color(0xFF155EEF),
      700: Color(0xFF004EEB),
      800: Color(0xFF0040C1),
      900: Color(0xFF00359E),
      950: Color(0xFF002266),
    },
  );

  static const MaterialColor indigo = MaterialColor(
    0xFF6172F3, // 500 as primary
    <int, Color>{
      25: Color(0xFFF5F8FF),
      50: Color(0xFFEEF4FF),
      100: Color(0xFFE0EAFF),
      200: Color(0xFFC7D7FE),
      300: Color(0xFFA4BCFD),
      400: Color(0xFF8098F9),
      500: Color(0xFF6172F3),
      600: Color(0xFF444CE7),
      700: Color(0xFF3538CD),
      800: Color(0xFF2D31A6),
      900: Color(0xFF2D3282),
      950: Color(0xFF1F235B),
    },
  );

  static const MaterialColor violet = MaterialColor(
    0xFF875BF7, // 500 as primary
    <int, Color>{
      25: Color(0xFFFBFAFF),
      50: Color(0xFFF5F3FF),
      100: Color(0xFFECE9FE),
      200: Color(0xFFDDD6FE),
      300: Color(0xFFC3B5FD),
      400: Color(0xFFA48AFB),
      500: Color(0xFF875BF7),
      600: Color(0xFF7839EE),
      700: Color(0xFF6927DA),
      800: Color(0xFF5720B7),
      900: Color(0xFF491C96),
      950: Color(0xFF2E125E),
    },
  );

  static const MaterialColor purple = MaterialColor(
    0xFF7A5AF8, // 500 as primary
    <int, Color>{
      25: Color(0xFFFAFAFF),
      50: Color(0xFFF4F3FF),
      100: Color(0xFFEBE9FE),
      200: Color(0xFFD9D6FE),
      300: Color(0xFFBDB4FE),
      400: Color(0xFF9B8AFB),
      500: Color(0xFF7A5AF8),
      600: Color(0xFF6938EF),
      700: Color(0xFF5925DC),
      800: Color(0xFF4A1FB8),
      900: Color(0xFF3E1C96),
      950: Color(0xFF27115F),
    },
  );

  static const MaterialColor fuchsia = MaterialColor(
    0xFFD444F1, // 500 as primary
    <int, Color>{
      25: Color(0xFFFEFAFF),
      50: Color(0xFFFDF4FF),
      100: Color(0xFFFBE8FF),
      200: Color(0xFFF6D0FE),
      300: Color(0xFFEEAAFD),
      400: Color(0xFFE478FA),
      500: Color(0xFFD444F1),
      600: Color(0xFFBA24D5),
      700: Color(0xFF9F1AB1),
      800: Color(0xFF821890),
      900: Color(0xFF6F1877),
      950: Color(0xFF47104C),
    },
  );

  static const MaterialColor pink = MaterialColor(
    0xFFEE46BC, // 500 as primary
    <int, Color>{
      25: Color(0xFFFEF6FB),
      50: Color(0xFFFDF2FA),
      100: Color(0xFFFCE7F6),
      200: Color(0xFFFCCEEE),
      300: Color(0xFFFAA7E0),
      400: Color(0xFFF670C7),
      500: Color(0xFFEE46BC),
      600: Color(0xFFDD2590),
      700: Color(0xFFC11574),
      800: Color(0xFF9E165F),
      900: Color(0xFF851651),
      950: Color(0xFF4E0D30),
    },
  );

  static const MaterialColor rose = MaterialColor(
    0xFFF63D68, // 500 as primary
    <int, Color>{
      25: Color(0xFFFFF5F6),
      50: Color(0xFFFFF1F3),
      100: Color(0xFFFFE4E8),
      200: Color(0xFFFECDD6),
      300: Color(0xFFFEA3B4),
      400: Color(0xFFFD6F8E),
      500: Color(0xFFF63D68),
      600: Color(0xFFE31B54),
      700: Color(0xFFC01048),
      800: Color(0xFFA11043),
      900: Color(0xFF89123E),
      950: Color(0xFF510B24),
    },
  );

  static const MaterialColor orangeDark = MaterialColor(
    0xFFFF4405, // 500 as primary
    <int, Color>{
      25: Color(0xFFFFF9F5),
      50: Color(0xFFFFF4ED),
      100: Color(0xFFFFE6D5),
      200: Color(0xFFFFD6AE),
      300: Color(0xFFFF9C66),
      400: Color(0xFFFF692E),
      500: Color(0xFFFF4405),
      600: Color(0xFFE62E05),
      700: Color(0xFFBC1B06),
      800: Color(0xFF97180C),
      900: Color(0xFF771A0D),
      950: Color(0xFF57130A),
    },
  );

  static const MaterialColor orange = MaterialColor(
    0xFFEF6820, // 500 as primary
    <int, Color>{
      25: Color(0xFFFEFAF5),
      50: Color(0xFFFEF6EE),
      100: Color(0xFFFDEAD7),
      200: Color(0xFFF9DBAF),
      300: Color(0xFFF7B27A),
      400: Color(0xFFF38744),
      500: Color(0xFFEF6820),
      600: Color(0xFFE04F16),
      700: Color(0xFFB93815),
      800: Color(0xFF932F19),
      900: Color(0xFF772917),
      950: Color(0xFF511C10),
    },
  );

  static const MaterialColor yellow = MaterialColor(
    0xFFEAAA08, // 500 as primary
    <int, Color>{
      25: Color(0xFFFEFDF0),
      50: Color(0xFFFEFBE8),
      100: Color(0xFFFEF7C3),
      200: Color(0xFFFEEE95),
      300: Color(0xFFFDE272),
      400: Color(0xFFFAC515),
      500: Color(0xFFEAAA08),
      600: Color(0xFFCA8504),
      700: Color(0xFFA15C07),
      800: Color(0xFF854A0E),
      900: Color(0xFF713B12),
      950: Color(0xFF542C0D),
    },
  );

  // OLD Grayscale (wheel delete in the future)
  static const MaterialColor greyscale = MaterialColor(
    0xFFA0AEC0,
    <int, Color>{
      50: Color(0xFFFAFAFA),
      100: Color(0xFFF7FAFC),
      200: Color(0xFFEDF2F7),
      300: Color(0xFFE2E8F0),
      400: Color(0xFFCBD5E0),
      500: Color(0xFFA0AEC0),
      600: Color(0xFF718096),
      700: Color(0xFF4A5568),
      800: Color(0xFF2D3748),
      900: Color(0xFF1A202C),
    },
  );
}
