import 'package:flutter/material.dart';
import 'package:one_uikit/foundation/colors/one_colors.dart';

part 'one_gradients_helper.dart';

class OneGradients {
  // ============================================================================
  // GRAY GRADIENTS
  // ============================================================================

  /// Gray 50 → White (180deg)
  static final LinearGradient gray01 = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [OneColors.grayLightMode[50]!, OneColors.white],
  );

  /// Gray 100 → White (180deg)
  static final LinearGradient gray02 = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [OneColors.grayLightMode[100]!, OneColors.white],
  );

  /// Gray 100 → Gray 25 (180deg)
  static final LinearGradient gray03 = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [OneColors.grayLightMode[100]!, OneColors.grayLightMode[25]!],
  );

  /// Gray 100 → Gray 50 (180deg)
  static final LinearGradient gray04 = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [OneColors.grayLightMode[100]!, OneColors.grayLightMode[50]!],
  );

  /// Gray 200 → Gray 25 (180deg)
  static final LinearGradient gray05 = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [OneColors.grayLightMode[200]!, OneColors.grayLightMode[25]!],
  );

  /// Gray 200 → Gray 50 (180deg)
  static final LinearGradient gray06 = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [OneColors.grayLightMode[200]!, OneColors.grayLightMode[50]!],
  );

  /// Gray 200 → Gray 100 (180deg)
  static final LinearGradient gray07 = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [OneColors.grayLightMode[200]!, OneColors.grayLightMode[100]!],
  );

  /// Gray 600 → Gray 500 (90deg)
  static final LinearGradient gray08 = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [OneColors.grayLightMode[600]!, OneColors.grayLightMode[500]!],
  );

  /// Gray 700 → Gray 600 (45deg)
  static final LinearGradient gray09 = LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    colors: [OneColors.grayLightMode[700]!, OneColors.grayLightMode[600]!],
  );

  /// Gray 800 → Gray 600 (45deg)
  static final LinearGradient gray10 = LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    colors: [OneColors.grayLightMode[800]!, OneColors.grayLightMode[600]!],
  );

  /// Gray 800 → Gray 600 (90deg)
  static final LinearGradient gray11 = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [OneColors.grayLightMode[800]!, OneColors.grayLightMode[600]!],
  );

  /// Gray 800 → Gray 700 (26.5deg)
  static final LinearGradient gray12 = LinearGradient(
    begin: Alignment(-0.89, -0.45),
    end: Alignment(0.89, 0.45),
    colors: [OneColors.grayLightMode[800]!, OneColors.grayLightMode[700]!],
  );

  /// Gray 900 → Gray 600 (45deg)
  static final LinearGradient gray13 = LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    colors: [OneColors.grayLightMode[900]!, OneColors.grayLightMode[600]!],
  );

  /// Gray 900 → Gray 700 (45deg)
  static final LinearGradient gray14 = LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    colors: [OneColors.grayLightMode[900]!, OneColors.grayLightMode[700]!],
  );

  // ============================================================================
  // BRAND GRADIENTS
  // ============================================================================

  /// Brand 600 → Brand 500 (90deg)
  static final LinearGradient brand01 = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [OneColors.brand[600]!, OneColors.brand[500]!],
  );

  /// Brand 700 → Brand 600 (45deg)
  static final LinearGradient brand02 = LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    colors: [OneColors.brand[700]!, OneColors.brand[600]!],
  );

  /// Brand 800 → Brand 600 (45deg)
  static final LinearGradient brand03 = LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    colors: [OneColors.brand[800]!, OneColors.brand[600]!],
  );

  /// Brand 800 → Brand 600 (90deg)
  static final LinearGradient brand04 = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [OneColors.brand[800]!, OneColors.brand[600]!],
  );

  /// Brand 800 → Brand 700 (26.5deg)
  static final LinearGradient brand05 = LinearGradient(
    begin: Alignment(-0.89, -0.45),
    end: Alignment(0.89, 0.45),
    colors: [OneColors.brand[800]!, OneColors.brand[700]!],
  );

  /// Brand 900 → Brand 600 (45deg)
  static final LinearGradient brand06 = LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    colors: [OneColors.brand[900]!, OneColors.brand[600]!],
  );

  /// Brand 900 → Brand 700 (45deg)
  static final LinearGradient brand07 = LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    colors: [OneColors.brand[900]!, OneColors.brand[700]!],
  );

  // ============================================================================
  // LINEAR GRADIENTS
  // ============================================================================

  static const LinearGradient linear01 = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Color(0xFFA5C0EE), Color(0xFFFBC5EC)],
  );

  static const LinearGradient linear02 = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Color(0xFFFBC2EB), Color(0xFFA18CD1)],
  );

  static const LinearGradient linear03 = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Color(0xFFFFD1FF), Color(0xFFFAD0C4)],
  );

  static const LinearGradient linear04 = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFFFAD0C4), Color(0xFFFF9A9E)],
  );

  static const LinearGradient linear05 = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    transform: GradientRotation(4.712389), // 270deg
    colors: [Color(0xFFFCB69F), Color(0xFFFFECD2)],
  );

  static const LinearGradient linear06 = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Color(0xFFFECFEF), Color(0xFFFF989C)],
  );

  static const LinearGradient linear07 = LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    colors: [Color(0xFFFF9DE4), Color(0xFFFFEAF6)],
  );

  static const LinearGradient linear08 = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Color(0xFFE6DEE9), Color(0xFFFDCAF1)],
  );

  static const LinearGradient linear09 = LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    colors: [Color(0xFFA6C0FE), Color(0xFFFFFFF1EB)],
  );

  static const LinearGradient linear10 = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    transform: GradientRotation(0), // 0deg
    colors: [Color(0xFFCFC7F8), Color(0xFFFFBB89)],
  );

  static const LinearGradient linear11 = LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    colors: [Color(0xFFEBBBA7), Color(0xFFFCCB90)],
  );

  static const LinearGradient linear12 = LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    colors: [Color(0xFFD57EEB), Color(0xFF8EC5FC)],
  );

  static const LinearGradient linear13 = LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    colors: [Color(0xFFE0C3FC), Color(0xFF8EC5FC)],
  );

  static const LinearGradient linear14 = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    transform: GradientRotation(0), // 0deg
    colors: [Color(0xFFFED6E3), Color(0xFFA8EDEA)],
  );

  static const LinearGradient linear15 = LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    colors: [Color(0xFFF5F7FA), Color(0xFFC3CFE2)],
  );

  static const LinearGradient linear16 = LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    colors: [Color(0xFFDFD1C5), Color(0xFFFFF6EB)],
  );

  static const LinearGradient linear17 = LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    colors: [Color(0xFFFFF6B7), Color(0xFFFB758A)],
  );

  static const LinearGradient linear18 = LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    colors: [Color(0xFFFF7EC7), Color(0xFFFFED46)],
  );

  static const LinearGradient linear19 = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    transform: GradientRotation(0), // 0deg
    colors: [Color(0xFFFEAFA8), Color(0xFFF5EFEF)],
  );

  static const LinearGradient linear20 = LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    colors: [Color(0xFFFBFCDB), Color(0xFFE9DEFA)],
  );

  static const LinearGradient linear21 = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    transform: GradientRotation(0), // 0deg
    colors: [Color(0xFFFFF1EB), Color(0xFFACE0F9)],
  );

  static const LinearGradient linear22 = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    transform: GradientRotation(0), // 0deg
    colors: [Color(0xFFC1DFC4), Color(0xFFDEECDD)],
  );

  static const LinearGradient linear23 = LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    colors: [Color(0xFFA1C4FD), Color(0xFFC2E9FB)],
  );

  static const LinearGradient linear24 = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    transform: GradientRotation(0), // 0deg
    colors: [Color(0xFFACCBEE), Color(0xFFE7F0FD)],
  );

  static const LinearGradient linear25 = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    transform: GradientRotation(0), // 0deg
    colors: [Color(0xFF84FAB0), Color(0xFF8FFF85)],
  );

  static const LinearGradient linear26 = LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    colors: [Color(0xFF39A0FF), Color(0xFFC5EDF5)],
  );

  static const LinearGradient linear27 = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    transform: GradientRotation(4.712389), // 270deg
    colors: [Color(0xFF74EBD5), Color(0xFF9FACE6)],
  );

  static const LinearGradient linear28 = LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    colors: [Color(0xFF4A879A), Color(0xFFACCBEE)],
  );

  static const LinearGradient linear29 = LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    colors: [Color(0xFF9890E3), Color(0xFFB1F4CF)],
  );

  static const LinearGradient linear30 = LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    colors: [Color(0xFF7CDADA), Color(0xFFF697AA)],
  );

  static const LinearGradient linear31 = LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    colors: [Color(0xFFB1FF96), Color(0xFFFFADF7)],
  );

  static const LinearGradient linear32 = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    transform: GradientRotation(0), // 0deg
    colors: [Color(0xFF96FBC4), Color(0xFFF9F586)],
  );

  static const LinearGradient linear33 = LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    colors: [Color(0xFF4DEF8E), Color(0xFFFFEB3A)],
  );

  static const LinearGradient linear34 = LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    colors: [Color(0xFFF0FF00), Color(0xFF58CFFB)],
  );

  static const LinearGradient linear35 = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    transform: GradientRotation(0), // 0deg
    colors: [Color(0xFFD1FDFF), Color(0xFFFDDB92)],
  );

  static const LinearGradient linear36 = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    transform: GradientRotation(0), // 0deg
    colors: [Color(0xFFEBC0FD), Color(0xFFD9DED8)],
  );

  static const LinearGradient linear37 = LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    colors: [Color(0xFFFFA4F6), Color(0xFFB7DCFF)],
  );

  static const LinearGradient linear38 = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    transform: GradientRotation(0), // 0deg
    colors: [Color(0xFFCD9CF2), Color(0xFFF6F3FF)],
  );

  static const LinearGradient linear39 = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFFF5C8F5), Color(0xFFDADDFA)],
  );

  static const LinearGradient linear40 = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    transform: GradientRotation(0), // 0deg
    colors: [Color(0xFFE6DEE9), Color(0xFFBDC2E8)],
  );

  static const LinearGradient linear41 = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    transform: GradientRotation(0), // 0deg
    colors: [Color(0xFF6A85B6), Color(0xFFBAC8E0)],
  );

  static const LinearGradient linear42 = LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    colors: [Color(0xFF8B8B8B), Color(0xFFEAEAEA)],
  );

  static const LinearGradient linear43 = LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    colors: [Color(0xFFE2B0FF), Color(0xFF9F44D3)],
  );

  static const LinearGradient linear44 = LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    colors: [Color(0xFFCE9FFC), Color(0xFF7367F0)],
  );

  static const LinearGradient linear45 = LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    colors: [Color(0xFF72EDF2), Color(0xFF5151E5)],
  );

  static const LinearGradient linear46 = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    transform: GradientRotation(0), // 0deg
    colors: [Color(0xFFA3BDED), Color(0xFF6991C7)],
  );

  static const LinearGradient linear47 = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    transform: GradientRotation(0), // 0deg
    colors: [Color(0xFFFBC8D4), Color(0xFF9795F0)],
  );

  static const LinearGradient linear48 = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    transform: GradientRotation(0), // 0deg
    colors: [Color(0xFFA7A6CB), Color(0xFF8989BA)],
  );

  static const LinearGradient linear49 = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    transform: GradientRotation(0), // 0deg
    colors: [Color(0xFFD9AFD9), Color(0xFF97D9E1)],
  );

  static const LinearGradient linear50 = LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    colors: [Color(0xFF81FFEF), Color(0xFFF067B4)],
  );

  static const LinearGradient linear51 = LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    colors: [Color(0xFFDCB0ED), Color(0xFF9999CC)],
  );

  static const LinearGradient linear52 = LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    colors: [Color(0xFFFFF5C3), Color(0xFF9452A5)],
  );

  static const LinearGradient linear53 = LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    colors: [Color(0xFFF1CA74), Color(0xFFA64DB6)],
  );

  static const LinearGradient linear54 = LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    colors: [Color(0xFF4D6AD0), Color(0xFFFF9D7E)],
  );

  static const LinearGradient linear55 = LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    colors: [Color(0xFFFFCF71), Color(0xFF2376DD)],
  );

  static const LinearGradient linear56 = LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    colors: [Color(0xFFE8D07A), Color(0xFF5312D6)],
  );

  static const LinearGradient linear57 = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Color(0xFFBFD9FE), Color(0xFFDF89B5)],
  );

  static const LinearGradient linear58 = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    transform: GradientRotation(0), // 0deg
    colors: [Color(0xFFFA71CD), Color(0xFFC471F5)],
  );

  static const LinearGradient linear59 = LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    colors: [Color(0xFF43CBFF), Color(0xFF9708CC)],
  );

  static const LinearGradient linear60 = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Color(0xFF7579FF), Color(0xFFB224EF)],
  );

  static const LinearGradient linear61 = LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    colors: [Color(0xFFAD00FE), Color(0xFF00E0EE)],
  );

  static const LinearGradient linear62 = LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    colors: [Color(0xFF89F7FE), Color(0xFF66A6FF)],
  );

  static const LinearGradient linear63 = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    transform: GradientRotation(0), // 0deg
    colors: [Color(0xFF009EFD), Color(0xFF2AF598)],
  );

  static const LinearGradient linear64 = LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    colors: [Color(0xFFFFB800), Color(0xFFFFF500)],
  );

  static const LinearGradient linear65 = LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    colors: [Color(0xFFFFA8A8), Color(0xFFFCFF00)],
  );

  static const LinearGradient linear66 = LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    colors: [Color(0xFFFF7A00), Color(0xFFFFD439)],
  );

  static const LinearGradient linear67 = LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    colors: [Color(0xFFFFD3A5), Color(0xFFFD6585)],
  );

  static const LinearGradient linear68 = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Color(0xFFF9D423), Color(0xFFE14FAD)],
  );

  static const LinearGradient linear69 = LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    colors: [Color(0xFFF74FAC), Color(0xFFFCB24F)],
  );

  static const LinearGradient linear70 = LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    colors: [Color(0xFFF49062), Color(0xFFFD371F)],
  );

  static const LinearGradient linear71 = LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    colors: [Color(0xFFFF6C6C), Color(0xFFDD7BFF)],
  );

  static const LinearGradient linear72 = LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    colors: [Color(0xFFF97794), Color(0xFF623AA2)],
  );

  static const LinearGradient linear73 = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Color(0xFFC569CF), Color(0xFFEE609C)],
  );

  static const LinearGradient linear74 = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    transform: GradientRotation(0), // 0deg
    colors: [Color(0xFFC7EAFD), Color(0xFFE8198B)],
  );

  static const LinearGradient linear75 = LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    colors: [Color(0xFFF093FB), Color(0xFFF5576C)],
  );

  static const LinearGradient linear76 = LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    colors: [Color(0xFFF6CEEC), Color(0xFFD939CD)],
  );

  static const LinearGradient linear77 = LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    colors: [Color(0xFFEE9AE5), Color(0xFF5961F9)],
  );

  static const LinearGradient linear78 = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    transform: GradientRotation(4.712389), // 270deg
    colors: [Color(0xFF6A11CB), Color(0xFF2575FC)],
  );

  static const LinearGradient linear79 = LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    colors: [Color(0xFF0017E4), Color(0xFF3793FF)],
  );

  static const LinearGradient linear80 = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    transform: GradientRotation(0), // 0deg
    colors: [Color(0xFF00C6FB), Color(0xFF005BEA)],
  );

  static const LinearGradient linear81 = LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    colors: [Color(0xFF4B73FF), Color(0xFF7CF7FF)],
  );

  static const LinearGradient linear82 = LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    colors: [Color(0xFF5EFCE8), Color(0xFF736EFE)],
  );

  static const LinearGradient linear83 = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    transform: GradientRotation(0), // 0deg
    colors: [Color(0xFF7028E4), Color(0xFFE5B2CA)],
  );

  static const LinearGradient linear84 = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    transform: GradientRotation(1.5708), // 90deg
    colors: [Color(0xFF7873F5), Color(0xFFEC77AB)],
  );

  static const LinearGradient linear85 = LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    colors: [Color(0xFFB01EFF), Color(0xFFE1467C)],
  );

  static const LinearGradient linear86 = LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    colors: [Color(0xFFD079EE), Color(0xFF8A88FB)],
  );

  static const LinearGradient linear87 = LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    colors: [Color(0xFFC99FFF), Color(0xFF981ED2)],
  );

  static const LinearGradient linear88 = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    transform: GradientRotation(0), // 0deg
    colors: [Color(0xFF9B23EA), Color(0xFF5F72BD)],
  );

  static const LinearGradient linear89 = LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    colors: [Color(0xFFB39FFF), Color(0xFF6A1ED2)],
  );

  static const LinearGradient linear90 = LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    colors: [Color(0xFF4300B1), Color(0xFFA531DC)],
  );

  static const LinearGradient linear91 = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFF764BA2), Color(0xFF667EEA)],
  );
}
