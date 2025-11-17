import 'package:flutter/material.dart';
import 'package:one_uikit/one_uikit.dart';

/// Widget previews for OneFeaturedIcon component
///
/// These previews demonstrate all 6 types across all 4 sizes and 5 colors
/// Based on Untitled UI Figma Kit specifications

// ============================================================================
// LIGHT TYPE PREVIEWS
// ============================================================================

@WidgetbookUseCase(name: 'Light - Brand', type: OneFeaturedIcon)
Widget previewLightBrand(BuildContext context) {
  return const Center(
    child: OneFeaturedIcon(
      viewModel: OneFeaturedIconViewModel(
        icon: OneIconsEnum.star,
        type: OneFeaturedIconType.light,
        size: OneFeaturedIconSize.lg,
        color: OneFeaturedIconColor.brand,
      ),
    ),
  );
}

@WidgetbookUseCase(name: 'Light - Gray', type: OneFeaturedIcon)
Widget previewLightGray(BuildContext context) {
  return const Center(
    child: OneFeaturedIcon(
      viewModel: OneFeaturedIconViewModel(
        icon: OneIconsEnum.settings,
        type: OneFeaturedIconType.light,
        size: OneFeaturedIconSize.lg,
        color: OneFeaturedIconColor.gray,
      ),
    ),
  );
}

@WidgetbookUseCase(name: 'Light - Error', type: OneFeaturedIcon)
Widget previewLightError(BuildContext context) {
  return const Center(
    child: OneFeaturedIcon(
      viewModel: OneFeaturedIconViewModel(
        icon: OneIconsEnum.alertTriangle,
        type: OneFeaturedIconType.light,
        size: OneFeaturedIconSize.lg,
        color: OneFeaturedIconColor.error,
      ),
    ),
  );
}

@WidgetbookUseCase(name: 'Light - Warning', type: OneFeaturedIcon)
Widget previewLightWarning(BuildContext context) {
  return const Center(
    child: OneFeaturedIcon(
      viewModel: OneFeaturedIconViewModel(
        icon: OneIconsEnum.alertCircle,
        type: OneFeaturedIconType.light,
        size: OneFeaturedIconSize.lg,
        color: OneFeaturedIconColor.warning,
      ),
    ),
  );
}

@WidgetbookUseCase(name: 'Light - Success', type: OneFeaturedIcon)
Widget previewLightSuccess(BuildContext context) {
  return const Center(
    child: OneFeaturedIcon(
      viewModel: OneFeaturedIconViewModel(
        icon: OneIconsEnum.check,
        type: OneFeaturedIconType.light,
        size: OneFeaturedIconSize.lg,
        color: OneFeaturedIconColor.success,
      ),
    ),
  );
}

// ============================================================================
// MODERN TYPE PREVIEWS
// ============================================================================

@WidgetbookUseCase(name: 'Modern - Brand', type: OneFeaturedIcon)
Widget previewModernBrand(BuildContext context) {
  return const Center(
    child: OneFeaturedIcon(
      viewModel: OneFeaturedIconViewModel(
        icon: OneIconsEnum.star,
        type: OneFeaturedIconType.modern,
        size: OneFeaturedIconSize.lg,
        color: OneFeaturedIconColor.brand,
      ),
    ),
  );
}

@WidgetbookUseCase(name: 'Modern - Gray', type: OneFeaturedIcon)
Widget previewModernGray(BuildContext context) {
  return const Center(
    child: OneFeaturedIcon(
      viewModel: OneFeaturedIconViewModel(
        icon: OneIconsEnum.settings,
        type: OneFeaturedIconType.modern,
        size: OneFeaturedIconSize.lg,
        color: OneFeaturedIconColor.gray,
      ),
    ),
  );
}

// ============================================================================
// DARK TYPE PREVIEWS
// ============================================================================

@WidgetbookUseCase(name: 'Dark - Brand', type: OneFeaturedIcon)
Widget previewDarkBrand(BuildContext context) {
  return const Center(
    child: OneFeaturedIcon(
      viewModel: OneFeaturedIconViewModel(
        icon: OneIconsEnum.star,
        type: OneFeaturedIconType.dark,
        size: OneFeaturedIconSize.lg,
        color: OneFeaturedIconColor.brand,
      ),
    ),
  );
}

@WidgetbookUseCase(name: 'Dark - Error', type: OneFeaturedIcon)
Widget previewDarkError(BuildContext context) {
  return const Center(
    child: OneFeaturedIcon(
      viewModel: OneFeaturedIconViewModel(
        icon: OneIconsEnum.alertTriangle,
        type: OneFeaturedIconType.dark,
        size: OneFeaturedIconSize.lg,
        color: OneFeaturedIconColor.error,
      ),
    ),
  );
}

@WidgetbookUseCase(name: 'Dark - Success', type: OneFeaturedIcon)
Widget previewDarkSuccess(BuildContext context) {
  return const Center(
    child: OneFeaturedIcon(
      viewModel: OneFeaturedIconViewModel(
        icon: OneIconsEnum.check,
        type: OneFeaturedIconType.dark,
        size: OneFeaturedIconSize.lg,
        color: OneFeaturedIconColor.success,
      ),
    ),
  );
}

// ============================================================================
// OUTLINE TYPE PREVIEWS
// ============================================================================

@WidgetbookUseCase(name: 'Outline - Brand', type: OneFeaturedIcon)
Widget previewOutlineBrand(BuildContext context) {
  return const Center(
    child: OneFeaturedIcon(
      viewModel: OneFeaturedIconViewModel(
        icon: OneIconsEnum.star,
        type: OneFeaturedIconType.outline,
        size: OneFeaturedIconSize.lg,
        color: OneFeaturedIconColor.brand,
      ),
    ),
  );
}

@WidgetbookUseCase(name: 'Outline - Error', type: OneFeaturedIcon)
Widget previewOutlineError(BuildContext context) {
  return const Center(
    child: OneFeaturedIcon(
      viewModel: OneFeaturedIconViewModel(
        icon: OneIconsEnum.alertTriangle,
        type: OneFeaturedIconType.outline,
        size: OneFeaturedIconSize.lg,
        color: OneFeaturedIconColor.error,
      ),
    ),
  );
}

// ============================================================================
// GRADIENT TYPE PREVIEWS
// ============================================================================

@WidgetbookUseCase(name: 'Gradient - Brand', type: OneFeaturedIcon)
Widget previewGradientBrand(BuildContext context) {
  return const Center(
    child: OneFeaturedIcon(
      viewModel: OneFeaturedIconViewModel(
        icon: OneIconsEnum.star,
        type: OneFeaturedIconType.gradient,
        size: OneFeaturedIconSize.lg,
        color: OneFeaturedIconColor.brand,
      ),
    ),
  );
}

@WidgetbookUseCase(name: 'Gradient - Success', type: OneFeaturedIcon)
Widget previewGradientSuccess(BuildContext context) {
  return const Center(
    child: OneFeaturedIcon(
      viewModel: OneFeaturedIconViewModel(
        icon: OneIconsEnum.check,
        type: OneFeaturedIconType.gradient,
        size: OneFeaturedIconSize.lg,
        color: OneFeaturedIconColor.success,
      ),
    ),
  );
}

// ============================================================================
// GLASS TYPE PREVIEWS
// ============================================================================

@WidgetbookUseCase(name: 'Glass - Brand', type: OneFeaturedIcon)
Widget previewGlassBrand(BuildContext context) {
  return const Center(
    child: OneFeaturedIcon(
      viewModel: OneFeaturedIconViewModel(
        icon: OneIconsEnum.star,
        type: OneFeaturedIconType.glass,
        size: OneFeaturedIconSize.lg,
        color: OneFeaturedIconColor.brand,
      ),
    ),
  );
}

@WidgetbookUseCase(name: 'Glass - Gray', type: OneFeaturedIcon)
Widget previewGlassGray(BuildContext context) {
  return const Center(
    child: OneFeaturedIcon(
      viewModel: OneFeaturedIconViewModel(
        icon: OneIconsEnum.settings,
        type: OneFeaturedIconType.glass,
        size: OneFeaturedIconSize.lg,
        color: OneFeaturedIconColor.gray,
      ),
    ),
  );
}

// ============================================================================
// SIZE COMPARISON PREVIEWS
// ============================================================================

@WidgetbookUseCase(name: 'All Sizes - Light Brand', type: OneFeaturedIcon)
Widget previewAllSizes(BuildContext context) {
  return Center(
    child: Wrap(
      spacing: 16,
      runSpacing: 16,
      alignment: WrapAlignment.center,
      children: const [
        OneFeaturedIcon(
          viewModel: OneFeaturedIconViewModel(
            icon: OneIconsEnum.star,
            type: OneFeaturedIconType.light,
            size: OneFeaturedIconSize.sm,
            color: OneFeaturedIconColor.brand,
          ),
        ),
        OneFeaturedIcon(
          viewModel: OneFeaturedIconViewModel(
            icon: OneIconsEnum.star,
            type: OneFeaturedIconType.light,
            size: OneFeaturedIconSize.md,
            color: OneFeaturedIconColor.brand,
          ),
        ),
        OneFeaturedIcon(
          viewModel: OneFeaturedIconViewModel(
            icon: OneIconsEnum.star,
            type: OneFeaturedIconType.light,
            size: OneFeaturedIconSize.lg,
            color: OneFeaturedIconColor.brand,
          ),
        ),
        OneFeaturedIcon(
          viewModel: OneFeaturedIconViewModel(
            icon: OneIconsEnum.star,
            type: OneFeaturedIconType.light,
            size: OneFeaturedIconSize.xl,
            color: OneFeaturedIconColor.brand,
          ),
        ),
      ],
    ),
  );
}

// ============================================================================
// TYPE COMPARISON PREVIEWS
// ============================================================================

@WidgetbookUseCase(name: 'All Types - Brand', type: OneFeaturedIcon)
Widget previewAllTypes(BuildContext context) {
  return Center(
    child: Wrap(
      spacing: 24,
      runSpacing: 24,
      alignment: WrapAlignment.center,
      children: const [
        OneFeaturedIcon(
          viewModel: OneFeaturedIconViewModel(
            icon: OneIconsEnum.star,
            type: OneFeaturedIconType.light,
            size: OneFeaturedIconSize.lg,
            color: OneFeaturedIconColor.brand,
          ),
        ),
        OneFeaturedIcon(
          viewModel: OneFeaturedIconViewModel(
            icon: OneIconsEnum.star,
            type: OneFeaturedIconType.modern,
            size: OneFeaturedIconSize.lg,
            color: OneFeaturedIconColor.brand,
          ),
        ),
        OneFeaturedIcon(
          viewModel: OneFeaturedIconViewModel(
            icon: OneIconsEnum.star,
            type: OneFeaturedIconType.dark,
            size: OneFeaturedIconSize.lg,
            color: OneFeaturedIconColor.brand,
          ),
        ),
        OneFeaturedIcon(
          viewModel: OneFeaturedIconViewModel(
            icon: OneIconsEnum.star,
            type: OneFeaturedIconType.outline,
            size: OneFeaturedIconSize.lg,
            color: OneFeaturedIconColor.brand,
          ),
        ),
        OneFeaturedIcon(
          viewModel: OneFeaturedIconViewModel(
            icon: OneIconsEnum.star,
            type: OneFeaturedIconType.gradient,
            size: OneFeaturedIconSize.lg,
            color: OneFeaturedIconColor.brand,
          ),
        ),
        OneFeaturedIcon(
          viewModel: OneFeaturedIconViewModel(
            icon: OneIconsEnum.star,
            type: OneFeaturedIconType.glass,
            size: OneFeaturedIconSize.lg,
            color: OneFeaturedIconColor.brand,
          ),
        ),
      ],
    ),
  );
}

// ============================================================================
// COLOR COMPARISON PREVIEWS
// ============================================================================

@WidgetbookUseCase(name: 'All Colors - Light Type', type: OneFeaturedIcon)
Widget previewAllColors(BuildContext context) {
  return Center(
    child: Wrap(
      spacing: 16,
      runSpacing: 16,
      alignment: WrapAlignment.center,
      children: const [
        OneFeaturedIcon(
          viewModel: OneFeaturedIconViewModel(
            icon: OneIconsEnum.star,
            type: OneFeaturedIconType.light,
            size: OneFeaturedIconSize.lg,
            color: OneFeaturedIconColor.brand,
          ),
        ),
        OneFeaturedIcon(
          viewModel: OneFeaturedIconViewModel(
            icon: OneIconsEnum.settings,
            type: OneFeaturedIconType.light,
            size: OneFeaturedIconSize.lg,
            color: OneFeaturedIconColor.gray,
          ),
        ),
        OneFeaturedIcon(
          viewModel: OneFeaturedIconViewModel(
            icon: OneIconsEnum.alertTriangle,
            type: OneFeaturedIconType.light,
            size: OneFeaturedIconSize.lg,
            color: OneFeaturedIconColor.error,
          ),
        ),
        OneFeaturedIcon(
          viewModel: OneFeaturedIconViewModel(
            icon: OneIconsEnum.alertCircle,
            type: OneFeaturedIconType.light,
            size: OneFeaturedIconSize.lg,
            color: OneFeaturedIconColor.warning,
          ),
        ),
        OneFeaturedIcon(
          viewModel: OneFeaturedIconViewModel(
            icon: OneIconsEnum.check,
            type: OneFeaturedIconType.light,
            size: OneFeaturedIconSize.lg,
            color: OneFeaturedIconColor.success,
          ),
        ),
      ],
    ),
  );
}
