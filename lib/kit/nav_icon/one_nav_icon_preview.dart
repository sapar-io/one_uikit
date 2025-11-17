import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';
import 'package:one_uikit/one_uikit.dart';

/// Widget previews for OneNavIcon component
///
/// These previews demonstrate all 3 types across all 4 sizes and 3 colors

double _spacing = 12.0;

// ============================================================================
// LIGHT TYPE PREVIEWS
// ============================================================================

@Preview(name: "Light")
Widget previewLight() {
  return Column(
    spacing: _spacing,
    children:
        OneNavIconColor.values
            .map(
              (color) => Row(
                spacing: _spacing,
                mainAxisAlignment: MainAxisAlignment.center,
                children:
                    OneNavIconSize.values
                        .map(
                          (size) => OneNavIcon(
                            viewModel: OneNavIconViewModel(
                              icon: AlertsFeedbackIcon.alertCircle,
                              type: OneNavIconType.light,
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
        OneNavIconColor.values
            .map(
              (color) => Row(
                spacing: _spacing,
                mainAxisAlignment: MainAxisAlignment.center,
                children:
                    OneNavIconSize.values
                        .map(
                          (size) => OneNavIcon(
                            viewModel: OneNavIconViewModel(
                              icon: AlertsFeedbackIcon.alertCircle,
                              type: OneNavIconType.dark,
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
        OneNavIconColor.values
            .map(
              (color) => Row(
                spacing: _spacing,
                mainAxisAlignment: MainAxisAlignment.center,
                children:
                    OneNavIconSize.values
                        .map(
                          (size) => OneNavIcon(
                            viewModel: OneNavIconViewModel(
                              icon: AlertsFeedbackIcon.alertCircle,
                              type: OneNavIconType.outline,
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
// WITH TEXT PREVIEWS
// ============================================================================

@Preview(name: "Light with Text")
Widget previewLightWithText() {
  return Column(
    spacing: _spacing,
    children: [
      ...OneNavIconColor.values.map(
        (color) => Column(
          spacing: _spacing,
          children:
              OneNavIconSize.values
                  .map(
                    (size) => OneNavIconWithText(
                      viewModel: OneNavIconViewModel(
                        icon: GeneralIcon.check,
                        type: OneNavIconType.light,
                        size: size,
                        color: color,
                      ),
                      text: 'All features and premium support',
                    ),
                  )
                  .toList(),
        ),
      ),
    ],
  );
}

@Preview(name: "Dark with Text")
Widget previewDarkWithText() {
  return Column(
    spacing: _spacing,
    children: [
      ...OneNavIconColor.values.map(
        (color) => Column(
          spacing: _spacing,
          children:
              OneNavIconSize.values
                  .map(
                    (size) => OneNavIconWithText(
                      viewModel: OneNavIconViewModel(
                        icon: GeneralIcon.check,
                        type: OneNavIconType.dark,
                        size: size,
                        color: color,
                      ),
                      text: 'All features and premium support',
                    ),
                  )
                  .toList(),
        ),
      ),
    ],
  );
}

@Preview(name: "Outline with Text")
Widget previewOutlineWithText() {
  return Column(
    spacing: _spacing,
    children: [
      ...OneNavIconColor.values.map(
        (color) => Column(
          spacing: _spacing,
          children:
              OneNavIconSize.values
                  .map(
                    (size) => OneNavIconWithText(
                      viewModel: OneNavIconViewModel(
                        icon: GeneralIcon.check,
                        type: OneNavIconType.outline,
                        size: size,
                        color: color,
                      ),
                      text: 'All features and premium support',
                    ),
                  )
                  .toList(),
        ),
      ),
    ],
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
        OneNavIcon(
          viewModel: OneNavIconViewModel(
            icon: AlertsFeedbackIcon.alertCircle,
            type: OneNavIconType.light,
            size: OneNavIconSize.sm,
            color: OneNavIconColor.brand,
          ),
        ),
        OneNavIcon(
          viewModel: OneNavIconViewModel(
            icon: AlertsFeedbackIcon.alertCircle,
            type: OneNavIconType.light,
            size: OneNavIconSize.md,
            color: OneNavIconColor.brand,
          ),
        ),
        OneNavIcon(
          viewModel: OneNavIconViewModel(
            icon: AlertsFeedbackIcon.alertCircle,
            type: OneNavIconType.light,
            size: OneNavIconSize.lg,
            color: OneNavIconColor.brand,
          ),
        ),
        OneNavIcon(
          viewModel: OneNavIconViewModel(
            icon: AlertsFeedbackIcon.alertCircle,
            type: OneNavIconType.light,
            size: OneNavIconSize.xl,
            color: OneNavIconColor.brand,
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
        OneNavIcon(
          viewModel: OneNavIconViewModel(
            icon: AlertsFeedbackIcon.alertCircle,
            type: OneNavIconType.light,
            size: OneNavIconSize.lg,
            color: OneNavIconColor.brand,
          ),
        ),
        OneNavIcon(
          viewModel: OneNavIconViewModel(
            icon: AlertsFeedbackIcon.alertCircle,
            type: OneNavIconType.dark,
            size: OneNavIconSize.lg,
            color: OneNavIconColor.brand,
          ),
        ),
        OneNavIcon(
          viewModel: OneNavIconViewModel(
            icon: AlertsFeedbackIcon.alertCircle,
            type: OneNavIconType.outline,
            size: OneNavIconSize.lg,
            color: OneNavIconColor.brand,
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
        OneNavIcon(
          viewModel: OneNavIconViewModel(
            icon: AlertsFeedbackIcon.alertCircle,
            type: OneNavIconType.light,
            size: OneNavIconSize.lg,
            color: OneNavIconColor.brand,
          ),
        ),
        OneNavIcon(
          viewModel: OneNavIconViewModel(
            icon: AlertsFeedbackIcon.alertCircle,
            type: OneNavIconType.light,
            size: OneNavIconSize.lg,
            color: OneNavIconColor.gray,
          ),
        ),
        OneNavIcon(
          viewModel: OneNavIconViewModel(
            icon: AlertsFeedbackIcon.alertCircle,
            type: OneNavIconType.light,
            size: OneNavIconSize.lg,
            color: OneNavIconColor.success,
          ),
        ),
      ],
    ),
  );
}
