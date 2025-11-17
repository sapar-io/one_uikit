import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';
import 'package:one_uikit/one_uikit.dart';

/// Widget previews for OneBadge component
///
/// These previews demonstrate all 4 types across all 3 sizes and all colors
/// Based on Untitled UI Figma Kit specifications

// ============================================================================
// PILL COLOR TYPE PREVIEWS
// ============================================================================

double _spacing = 12.0;

@Preview(name: "Pill Color")
Widget previewPillColor() {
  return Column(
    spacing: _spacing,
    children:
        BadgeColor.values
            .map(
              (color) => Row(
                spacing: _spacing,
                mainAxisAlignment: MainAxisAlignment.center,
                children:
                    BadgeSize.values
                        .map(
                          (size) => OneBadge(
                            viewModel: BadgeViewModel(
                              size: size,
                              type: BadgeType.pillColor,
                              icon: BadgeIcon.text,
                              color: color,
                              text: 'Label',
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
// PILL OUTLINE TYPE PREVIEWS
// ============================================================================

@Preview(name: "Pill Outline")
Widget previewPillOutline() {
  return Column(
    spacing: _spacing,
    children:
        BadgeColor.values
            .map(
              (color) => Row(
                spacing: _spacing,
                mainAxisAlignment: MainAxisAlignment.center,
                children:
                    BadgeSize.values
                        .map(
                          (size) => OneBadge(
                            viewModel: BadgeViewModel(
                              size: size,
                              type: BadgeType.pillOutline,
                              icon: BadgeIcon.text,
                              color: color,
                              text: 'Label',
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
// BADGE COLOR TYPE PREVIEWS
// ============================================================================

@Preview(name: "Badge Color")
Widget previewBadgeColor() {
  return Column(
    spacing: _spacing,
    children:
        BadgeColor.values
            .map(
              (color) => Row(
                spacing: _spacing,
                mainAxisAlignment: MainAxisAlignment.center,
                children:
                    BadgeSize.values
                        .map(
                          (size) => OneBadge(
                            viewModel: BadgeViewModel(
                              size: size,
                              type: BadgeType.badgeColor,
                              icon: BadgeIcon.text,
                              color: color,
                              text: 'Label',
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
// BADGE MODERN TYPE PREVIEWS
// ============================================================================

@Preview(name: "Badge Modern")
Widget previewBadgeModern() {
  return Column(
    spacing: _spacing,
    children:
        BadgeColor.values
            .map(
              (color) => Row(
                spacing: _spacing,
                mainAxisAlignment: MainAxisAlignment.center,
                children:
                    BadgeSize.values
                        .map(
                          (size) => OneBadge(
                            viewModel: BadgeViewModel(
                              size: size,
                              type: BadgeType.badgeModern,
                              icon: BadgeIcon.text,
                              color: color,
                              text: 'Label',
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
// WITH ICON LEADING PREVIEWS
// ============================================================================

@Preview(name: "With Icon Leading")
Widget previewWithIconLeading() {
  return Column(
    spacing: _spacing,
    children:
        BadgeColor.values
            .map(
              (color) => Row(
                spacing: _spacing,
                mainAxisAlignment: MainAxisAlignment.center,
                children:
                    BadgeSize.values
                        .map(
                          (size) => OneBadge(
                            viewModel: BadgeViewModel(
                              size: size,
                              type: BadgeType.pillColor,
                              icon: BadgeIcon.iconLeading,
                              color: color,
                              text: 'Label',
                              iconData: GeneralIcon.checkCircle,
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
// WITH ICON TRAILING PREVIEWS
// ============================================================================

@Preview(name: "With Icon Trailing")
Widget previewWithIconTrailing() {
  return Column(
    spacing: _spacing,
    children:
        BadgeColor.values
            .map(
              (color) => Row(
                spacing: _spacing,
                mainAxisAlignment: MainAxisAlignment.center,
                children:
                    BadgeSize.values
                        .map(
                          (size) => OneBadge(
                            viewModel: BadgeViewModel(
                              size: size,
                              type: BadgeType.pillColor,
                              icon: BadgeIcon.iconTrailing,
                              color: color,
                              text: 'Label',
                              iconData: GeneralIcon.xClose,
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
        OneBadge(
          viewModel: BadgeViewModel(
            size: BadgeSize.sm,
            type: BadgeType.pillColor,
            icon: BadgeIcon.text,
            color: BadgeColor.brand,
            text: 'Small',
          ),
        ),
        OneBadge(
          viewModel: BadgeViewModel(
            size: BadgeSize.md,
            type: BadgeType.pillColor,
            icon: BadgeIcon.text,
            color: BadgeColor.brand,
            text: 'Medium',
          ),
        ),
        OneBadge(
          viewModel: BadgeViewModel(
            size: BadgeSize.lg,
            type: BadgeType.pillColor,
            icon: BadgeIcon.text,
            color: BadgeColor.brand,
            text: 'Large',
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
        OneBadge(
          viewModel: BadgeViewModel(
            size: BadgeSize.md,
            type: BadgeType.pillColor,
            icon: BadgeIcon.text,
            color: BadgeColor.brand,
            text: 'Pill Color',
          ),
        ),
        OneBadge(
          viewModel: BadgeViewModel(
            size: BadgeSize.md,
            type: BadgeType.pillOutline,
            icon: BadgeIcon.text,
            color: BadgeColor.brand,
            text: 'Pill Outline',
          ),
        ),
        OneBadge(
          viewModel: BadgeViewModel(
            size: BadgeSize.md,
            type: BadgeType.badgeColor,
            icon: BadgeIcon.text,
            color: BadgeColor.brand,
            text: 'Badge Color',
          ),
        ),
        OneBadge(
          viewModel: BadgeViewModel(
            size: BadgeSize.md,
            type: BadgeType.badgeModern,
            icon: BadgeIcon.text,
            color: BadgeColor.brand,
            text: 'Badge Modern',
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
        OneBadge(
          viewModel: BadgeViewModel(
            size: BadgeSize.md,
            type: BadgeType.pillColor,
            icon: BadgeIcon.text,
            color: BadgeColor.brand,
            text: 'Brand',
          ),
        ),
        OneBadge(
          viewModel: BadgeViewModel(
            size: BadgeSize.md,
            type: BadgeType.pillColor,
            icon: BadgeIcon.text,
            color: BadgeColor.gray,
            text: 'Gray',
          ),
        ),
        OneBadge(
          viewModel: BadgeViewModel(
            size: BadgeSize.md,
            type: BadgeType.pillColor,
            icon: BadgeIcon.text,
            color: BadgeColor.error,
            text: 'Error',
          ),
        ),
        OneBadge(
          viewModel: BadgeViewModel(
            size: BadgeSize.md,
            type: BadgeType.pillColor,
            icon: BadgeIcon.text,
            color: BadgeColor.warning,
            text: 'Warning',
          ),
        ),
        OneBadge(
          viewModel: BadgeViewModel(
            size: BadgeSize.md,
            type: BadgeType.pillColor,
            icon: BadgeIcon.text,
            color: BadgeColor.success,
            text: 'Success',
          ),
        ),
        OneBadge(
          viewModel: BadgeViewModel(
            size: BadgeSize.md,
            type: BadgeType.pillColor,
            icon: BadgeIcon.text,
            color: BadgeColor.blue,
            text: 'Blue',
          ),
        ),
        OneBadge(
          viewModel: BadgeViewModel(
            size: BadgeSize.md,
            type: BadgeType.pillColor,
            icon: BadgeIcon.text,
            color: BadgeColor.blueLight,
            text: 'Blue Light',
          ),
        ),
        OneBadge(
          viewModel: BadgeViewModel(
            size: BadgeSize.md,
            type: BadgeType.pillColor,
            icon: BadgeIcon.text,
            color: BadgeColor.indigo,
            text: 'Indigo',
          ),
        ),
        OneBadge(
          viewModel: BadgeViewModel(
            size: BadgeSize.md,
            type: BadgeType.pillColor,
            icon: BadgeIcon.text,
            color: BadgeColor.purple,
            text: 'Purple',
          ),
        ),
        OneBadge(
          viewModel: BadgeViewModel(
            size: BadgeSize.md,
            type: BadgeType.pillColor,
            icon: BadgeIcon.text,
            color: BadgeColor.pink,
            text: 'Pink',
          ),
        ),
        OneBadge(
          viewModel: BadgeViewModel(
            size: BadgeSize.md,
            type: BadgeType.pillColor,
            icon: BadgeIcon.text,
            color: BadgeColor.orange,
            text: 'Orange',
          ),
        ),
      ],
    ),
  );
}

// ============================================================================
// INTERACTIVE PREVIEW
// ============================================================================

@Preview(name: "Interactive")
Widget previewInteractive() {
  return Center(
    child: Column(
      spacing: 16,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        OneBadge(
          viewModel: BadgeViewModel(
            size: BadgeSize.md,
            type: BadgeType.pillColor,
            icon: BadgeIcon.iconTrailing,
            color: BadgeColor.brand,
            text: 'Clickable Badge',
            iconData: GeneralIcon.xClose,
            onTap: () {
              // Action on tap
            },
          ),
        ),
        OneBadge(
          viewModel: BadgeViewModel(
            size: BadgeSize.lg,
            type: BadgeType.pillOutline,
            icon: BadgeIcon.iconLeading,
            color: BadgeColor.success,
            text: 'With Leading Icon',
            iconData: GeneralIcon.checkCircle,
          ),
        ),
      ],
    ),
  );
}

// ============================================================================
// BADGE GROUP PREVIEWS
// ============================================================================

@Preview(name: "Badge Groups - All Colors")
Widget previewBadgeGroupsAllColors() {
  return Center(
    child: Column(
      spacing: 12,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        OneBadgeGroup(
          badgeText: 'New feature',
          text: "We've just released a new feature",
          badgeColor: BadgeColor.brand,
        ),
        OneBadgeGroup(
          badgeText: 'Error',
          text: 'An error occurred while processing',
          badgeColor: BadgeColor.error,
        ),
        OneBadgeGroup(
          badgeText: 'Warning',
          text: 'Please review your settings',
          badgeColor: BadgeColor.warning,
        ),
        OneBadgeGroup(
          badgeText: 'Success',
          text: 'Your changes have been saved',
          badgeColor: BadgeColor.success,
        ),
        OneBadgeGroup(
          badgeText: 'Update',
          text: 'A new version is available',
          badgeColor: BadgeColor.blue,
        ),
      ],
    ),
  );
}

@Preview(name: "Badge Groups - Variations")
Widget previewBadgeGroupsVariations() {
  return Center(
    child: Column(
      spacing: 12,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        OneBadgeGroup(
          badgeText: 'With Icon',
          text: 'Badge group with arrow icon',
          badgeColor: BadgeColor.brand,
          showIcon: true,
        ),
        OneBadgeGroup(
          badgeText: 'No Icon',
          text: 'Badge group without icon',
          badgeColor: BadgeColor.brand,
          showIcon: false,
        ),
        OneBadgeGroup(
          badgeText: 'Custom Icon',
          text: 'Badge group with custom icon',
          badgeColor: BadgeColor.success,
          icon: AlertsFeedbackIcon.thumbsUp,
        ),
        OneBadgeGroup(
          badgeText: 'Clickable',
          text: 'Click me for an action',
          badgeColor: BadgeColor.purple,
          onTap: () {
            // Action on tap
          },
        ),
      ],
    ),
  );
}

@Preview(name: "Badge Groups - All Badge Colors")
Widget previewBadgeGroupsComprehensive() {
  return Center(
    child: Wrap(
      spacing: 12,
      runSpacing: 12,
      alignment: WrapAlignment.center,
      children: BadgeColor.values
          .map(
            (color) => OneBadgeGroup(
              badgeText: color.name,
              text: 'Sample text',
              badgeColor: color,
            ),
          )
          .toList(),
    ),
  );
}

// ============================================================================
// USING OneBadgeWithText CONVENIENCE WIDGET
// ============================================================================

@Preview(name: "Simple Text Badges")
Widget previewSimpleTextBadges() {
  return Center(
    child: Wrap(
      spacing: 16,
      runSpacing: 16,
      alignment: WrapAlignment.center,
      children: [
        OneBadgeWithText(text: 'New', color: BadgeColor.brand),
        OneBadgeWithText(
          text: 'Sale',
          color: BadgeColor.error,
          type: BadgeType.pillOutline,
        ),
        OneBadgeWithText(
          text: 'Updated',
          color: BadgeColor.success,
          size: BadgeSize.sm,
        ),
        OneBadgeWithText(
          text: 'Beta',
          color: BadgeColor.warning,
          type: BadgeType.badgeModern,
          size: BadgeSize.lg,
        ),
      ],
    ),
  );
}
