import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';
import 'package:one_uikit/one_uikit.dart';

/// Widget previews for OneFeaturedIcon component
///
/// These previews demonstrate all 6 types across all 4 sizes and 5 colors
/// Based on Untitled UI Figma Kit specifications

// ============================================================================
// LIGHT TYPE PREVIEWS
// ============================================================================

double _spacing = 12.0;

@Preview(name: "Light")
Widget previewLight() {
  return Column(
    spacing: _spacing,
    children:
        OneFeaturedIconColor.values
            .map(
              (color) => Row(
                spacing: _spacing,
                mainAxisAlignment: MainAxisAlignment.center,
                children:
                    OneFeaturedIconSize.values
                        .map(
                          (size) => OneFeaturedIcon(
                            viewModel: OneFeaturedIconViewModel(
                              icon: AlertsFeedbackIcon.alertCircle,
                              type: OneFeaturedIconType.light,
                              size: size,
                              color: color,
                            ),
                          ),
                        )
                        .toList(),
              ),
            )
            .toList(),
  );
}

// ============================================================================
// GRADIENT TYPE PREVIEWS
// ============================================================================

@Preview(name: "Gradient")
Widget previewGradient() {
  return Column(
    spacing: _spacing,
    children:
        OneFeaturedIconColor.values
            .map(
              (color) => Row(
                spacing: _spacing,
                mainAxisAlignment: MainAxisAlignment.center,
                children:
                    OneFeaturedIconSize.values
                        .map(
                          (size) => OneFeaturedIcon(
                            viewModel: OneFeaturedIconViewModel(
                              icon: AlertsFeedbackIcon.alertCircle,
                              type: OneFeaturedIconType.gradient,
                              size: size,
                              color: color,
                            ),
                          ),
                        )
                        .toList(),
              ),
            )
            .toList(),
  );
}

// ============================================================================
// DARK TYPE PREVIEWS
// ============================================================================

@Preview(name: "Dark")
Widget previewDark() {
  return Column(
    spacing: _spacing,
    children:
        OneFeaturedIconColor.values
            .map(
              (color) => Row(
                spacing: _spacing,
                mainAxisAlignment: MainAxisAlignment.center,
                children:
                    OneFeaturedIconSize.values
                        .map(
                          (size) => OneFeaturedIcon(
                            viewModel: OneFeaturedIconViewModel(
                              icon: AlertsFeedbackIcon.alertCircle,
                              type: OneFeaturedIconType.dark,
                              size: size,
                              color: color,
                            ),
                          ),
                        )
                        .toList(),
              ),
            )
            .toList(),
  );
}

// ============================================================================
// MODERN TYPE PREVIEWS
// ============================================================================

@Preview(name: "Modern")
Widget previewModern() {
  return Column(
    spacing: _spacing,
    children:
        OneFeaturedIconColor.values
            .map(
              (color) => Row(
                spacing: _spacing,
                mainAxisAlignment: MainAxisAlignment.center,
                children:
                    OneFeaturedIconSize.values
                        .map(
                          (size) => OneFeaturedIcon(
                            viewModel: OneFeaturedIconViewModel(
                              icon: AlertsFeedbackIcon.alertCircle,
                              type: OneFeaturedIconType.modern,
                              size: size,
                              color: color,
                            ),
                          ),
                        )
                        .toList(),
              ),
            )
            .toList(),
  );
}

// ============================================================================
// OUTLINE TYPE PREVIEWS
// ============================================================================

@Preview(name: "Outline")
Widget previewOutline() {
  return Column(
    spacing: _spacing,
    children:
        OneFeaturedIconColor.values
            .map(
              (color) => Row(
                spacing: _spacing,
                mainAxisAlignment: MainAxisAlignment.center,
                children:
                    OneFeaturedIconSize.values
                        .map(
                          (size) => OneFeaturedIcon(
                            viewModel: OneFeaturedIconViewModel(
                              icon: AlertsFeedbackIcon.alertCircle,
                              type: OneFeaturedIconType.outline,
                              size: size,
                              color: color,
                            ),
                          ),
                        )
                        .toList(),
              ),
            )
            .toList(),
  );
}

// ============================================================================
// GLASS TYPE PREVIEWS
// ============================================================================

@Preview(name: "Glass")
Widget previewGlass() {
  return Column(
    spacing: _spacing,
    children:
        OneFeaturedIconColor.values
            .map(
              (color) => Row(
                spacing: _spacing,
                mainAxisAlignment: MainAxisAlignment.center,
                children:
                    OneFeaturedIconSize.values
                        .map(
                          (size) => OneFeaturedIcon(
                            viewModel: OneFeaturedIconViewModel(
                              icon: AlertsFeedbackIcon.alertCircle,
                              type: OneFeaturedIconType.glass,
                              size: size,
                              color: color,
                            ),
                          ),
                        )
                        .toList(),
              ),
            )
            .toList(),
  );
}

// ============================================================================
// SIZE COMPARISON PREVIEWS
// ============================================================================

@Preview(name: "All Sizes")
Widget previewAllSizes() {
  return Center(
    child: Wrap(
      spacing: 16,
      runSpacing: 16,
      alignment: WrapAlignment.center,
      children: [
        OneFeaturedIcon(
          viewModel: OneFeaturedIconViewModel(
            icon: AlertsFeedbackIcon.alertCircle,
            type: OneFeaturedIconType.light,
            size: OneFeaturedIconSize.sm,
            color: OneFeaturedIconColor.brand,
          ),
        ),
        OneFeaturedIcon(
          viewModel: OneFeaturedIconViewModel(
            icon: AlertsFeedbackIcon.alertCircle,
            type: OneFeaturedIconType.light,
            size: OneFeaturedIconSize.md,
            color: OneFeaturedIconColor.brand,
          ),
        ),
        OneFeaturedIcon(
          viewModel: OneFeaturedIconViewModel(
            icon: AlertsFeedbackIcon.alertCircle,
            type: OneFeaturedIconType.light,
            size: OneFeaturedIconSize.lg,
            color: OneFeaturedIconColor.brand,
          ),
        ),
        OneFeaturedIcon(
          viewModel: OneFeaturedIconViewModel(
            icon: AlertsFeedbackIcon.alertCircle,
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

@Preview(name: "All Types")
Widget previewAllTypes() {
  return Center(
    child: Wrap(
      spacing: 24,
      runSpacing: 24,
      alignment: WrapAlignment.center,
      children: [
        OneFeaturedIcon(
          viewModel: OneFeaturedIconViewModel(
            icon: AlertsFeedbackIcon.alertCircle,
            type: OneFeaturedIconType.light,
            size: OneFeaturedIconSize.lg,
            color: OneFeaturedIconColor.brand,
          ),
        ),
        OneFeaturedIcon(
          viewModel: OneFeaturedIconViewModel(
            icon: AlertsFeedbackIcon.alertCircle,
            type: OneFeaturedIconType.modern,
            size: OneFeaturedIconSize.lg,
            color: OneFeaturedIconColor.brand,
          ),
        ),
        OneFeaturedIcon(
          viewModel: OneFeaturedIconViewModel(
            icon: AlertsFeedbackIcon.alertCircle,
            type: OneFeaturedIconType.dark,
            size: OneFeaturedIconSize.lg,
            color: OneFeaturedIconColor.brand,
          ),
        ),
        OneFeaturedIcon(
          viewModel: OneFeaturedIconViewModel(
            icon: AlertsFeedbackIcon.alertCircle,
            type: OneFeaturedIconType.outline,
            size: OneFeaturedIconSize.lg,
            color: OneFeaturedIconColor.brand,
          ),
        ),
        OneFeaturedIcon(
          viewModel: OneFeaturedIconViewModel(
            icon: AlertsFeedbackIcon.alertCircle,
            type: OneFeaturedIconType.gradient,
            size: OneFeaturedIconSize.lg,
            color: OneFeaturedIconColor.brand,
          ),
        ),
        OneFeaturedIcon(
          viewModel: OneFeaturedIconViewModel(
            icon: AlertsFeedbackIcon.alertCircle,
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

@Preview(name: "All Colors")
Widget previewAllColors() {
  return Center(
    child: Wrap(
      spacing: 16,
      runSpacing: 16,
      alignment: WrapAlignment.center,
      children: [
        OneFeaturedIcon(
          viewModel: OneFeaturedIconViewModel(
            icon: AlertsFeedbackIcon.alertCircle,
            type: OneFeaturedIconType.light,
            size: OneFeaturedIconSize.lg,
            color: OneFeaturedIconColor.brand,
          ),
        ),
        OneFeaturedIcon(
          viewModel: OneFeaturedIconViewModel(
            icon: AlertsFeedbackIcon.alertCircle,
            type: OneFeaturedIconType.light,
            size: OneFeaturedIconSize.lg,
            color: OneFeaturedIconColor.gray,
          ),
        ),
        OneFeaturedIcon(
          viewModel: OneFeaturedIconViewModel(
            icon: AlertsFeedbackIcon.alertCircle,
            type: OneFeaturedIconType.light,
            size: OneFeaturedIconSize.lg,
            color: OneFeaturedIconColor.error,
          ),
        ),
        OneFeaturedIcon(
          viewModel: OneFeaturedIconViewModel(
            icon: AlertsFeedbackIcon.alertCircle,
            type: OneFeaturedIconType.light,
            size: OneFeaturedIconSize.lg,
            color: OneFeaturedIconColor.warning,
          ),
        ),
        OneFeaturedIcon(
          viewModel: OneFeaturedIconViewModel(
            icon: AlertsFeedbackIcon.alertCircle,
            type: OneFeaturedIconType.light,
            size: OneFeaturedIconSize.lg,
            color: OneFeaturedIconColor.success,
          ),
        ),
      ],
    ),
  );
}
