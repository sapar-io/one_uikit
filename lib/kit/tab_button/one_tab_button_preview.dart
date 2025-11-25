import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';
import 'package:one_uikit/one_uikit.dart';

/// Widget previews for OneTabButton component
///
/// These previews demonstrate all tab button types, orientations, sizes, and states
/// Based on Untitled UI Figma Kit specifications

double _sectionSpacing = 24.0;

// ============================================================================
// HORIZONTAL TABS - BUTTON BRAND
// ============================================================================

@Preview(name: "Horizontal - Button Brand")
Widget previewHorizontalButtonBrand() {
  return Padding(
    padding: const EdgeInsets.all(24.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: _sectionSpacing,
      children: [
        _buildSection(
          label: "Size MD - Active/Default",
          child: Row(
            spacing: 0,
            children: [
              OneTabButton(
                viewModel: TabButtonViewModel(
                  text: 'My details',
                  size: TabButtonSize.md,
                  type: TabButtonType.buttonBrand,
                  orientation: TabButtonOrientation.horizontal,
                  isActive: true,
                ),
              ),
              OneTabButton(
                viewModel: TabButtonViewModel(
                  text: 'Profile',
                  size: TabButtonSize.md,
                  type: TabButtonType.buttonBrand,
                  orientation: TabButtonOrientation.horizontal,
                ),
              ),
              OneTabButton(
                viewModel: TabButtonViewModel(
                  text: 'Password',
                  size: TabButtonSize.md,
                  type: TabButtonType.buttonBrand,
                  orientation: TabButtonOrientation.horizontal,
                ),
              ),
              OneTabButton(
                viewModel: TabButtonViewModel(
                  text: 'Team',
                  size: TabButtonSize.md,
                  type: TabButtonType.buttonBrand,
                  orientation: TabButtonOrientation.horizontal,
                ),
              ),
            ],
          ),
        ),
        _buildSection(
          label: "Size SM - Active/Default",
          child: Row(
            spacing: 0,
            children: [
              OneTabButton(
                viewModel: TabButtonViewModel(
                  text: 'My details',
                  size: TabButtonSize.sm,
                  type: TabButtonType.buttonBrand,
                  orientation: TabButtonOrientation.horizontal,
                  isActive: true,
                ),
              ),
              OneTabButton(
                viewModel: TabButtonViewModel(
                  text: 'Profile',
                  size: TabButtonSize.sm,
                  type: TabButtonType.buttonBrand,
                  orientation: TabButtonOrientation.horizontal,
                ),
              ),
              OneTabButton(
                viewModel: TabButtonViewModel(
                  text: 'Password',
                  size: TabButtonSize.sm,
                  type: TabButtonType.buttonBrand,
                  orientation: TabButtonOrientation.horizontal,
                ),
              ),
            ],
          ),
        ),
        _buildSection(
          label: "With Badges",
          child: Row(
            spacing: 0,
            children: [
              OneTabButton(
                viewModel: TabButtonViewModel(
                  text: 'My details',
                  size: TabButtonSize.md,
                  type: TabButtonType.buttonBrand,
                  orientation: TabButtonOrientation.horizontal,
                  isActive: true,
                  badge: BadgeViewModel(
                    text: '10',
                    size: BadgeSize.sm,
                    type: BadgeType.pillColor,
                    icon: BadgeIcon.text,
                    color: BadgeColor.gray,
                  ),
                ),
              ),
              OneTabButton(
                viewModel: TabButtonViewModel(
                  text: 'Profile',
                  size: TabButtonSize.md,
                  type: TabButtonType.buttonBrand,
                  orientation: TabButtonOrientation.horizontal,
                  badge: BadgeViewModel(
                    text: '5',
                    size: BadgeSize.sm,
                    type: BadgeType.pillColor,
                    icon: BadgeIcon.text,
                    color: BadgeColor.gray,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

// ============================================================================
// HORIZONTAL TABS - BUTTON GRAY
// ============================================================================

@Preview(name: "Horizontal - Button Gray")
Widget previewHorizontalButtonGray() {
  return Padding(
    padding: const EdgeInsets.all(24.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: _sectionSpacing,
      children: [
        _buildSection(
          label: "Size MD - Active/Default",
          child: Row(
            spacing: 0,
            children: [
              OneTabButton(
                viewModel: TabButtonViewModel(
                  text: 'My details',
                  size: TabButtonSize.md,
                  type: TabButtonType.buttonGray,
                  orientation: TabButtonOrientation.horizontal,
                  isActive: true,
                ),
              ),
              OneTabButton(
                viewModel: TabButtonViewModel(
                  text: 'Profile',
                  size: TabButtonSize.md,
                  type: TabButtonType.buttonGray,
                  orientation: TabButtonOrientation.horizontal,
                ),
              ),
              OneTabButton(
                viewModel: TabButtonViewModel(
                  text: 'Password',
                  size: TabButtonSize.md,
                  type: TabButtonType.buttonGray,
                  orientation: TabButtonOrientation.horizontal,
                ),
              ),
            ],
          ),
        ),
        _buildSection(
          label: "Size SM - Active/Default",
          child: Row(
            spacing: 0,
            children: [
              OneTabButton(
                viewModel: TabButtonViewModel(
                  text: 'My details',
                  size: TabButtonSize.sm,
                  type: TabButtonType.buttonGray,
                  orientation: TabButtonOrientation.horizontal,
                  isActive: true,
                ),
              ),
              OneTabButton(
                viewModel: TabButtonViewModel(
                  text: 'Profile',
                  size: TabButtonSize.sm,
                  type: TabButtonType.buttonGray,
                  orientation: TabButtonOrientation.horizontal,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

// ============================================================================
// HORIZONTAL TABS - UNDERLINE
// ============================================================================

@Preview(name: "Horizontal - Underline")
Widget previewHorizontalUnderline() {
  return Padding(
    padding: const EdgeInsets.all(24.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: _sectionSpacing,
      children: [
        _buildSection(
          label: "Size MD - Active/Default",
          child: Row(
            spacing: 0,
            children: [
              OneTabButton(
                viewModel: TabButtonViewModel(
                  text: 'My details',
                  size: TabButtonSize.md,
                  type: TabButtonType.underline,
                  orientation: TabButtonOrientation.horizontal,
                  isActive: true,
                ),
              ),
              OneTabButton(
                viewModel: TabButtonViewModel(
                  text: 'Profile',
                  size: TabButtonSize.md,
                  type: TabButtonType.underline,
                  orientation: TabButtonOrientation.horizontal,
                ),
              ),
              OneTabButton(
                viewModel: TabButtonViewModel(
                  text: 'Password',
                  size: TabButtonSize.md,
                  type: TabButtonType.underline,
                  orientation: TabButtonOrientation.horizontal,
                ),
              ),
            ],
          ),
        ),
        _buildSection(
          label: "Size SM - Active/Default",
          child: Row(
            spacing: 0,
            children: [
              OneTabButton(
                viewModel: TabButtonViewModel(
                  text: 'My details',
                  size: TabButtonSize.sm,
                  type: TabButtonType.underline,
                  orientation: TabButtonOrientation.horizontal,
                  isActive: true,
                ),
              ),
              OneTabButton(
                viewModel: TabButtonViewModel(
                  text: 'Profile',
                  size: TabButtonSize.sm,
                  type: TabButtonType.underline,
                  orientation: TabButtonOrientation.horizontal,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

// ============================================================================
// HORIZONTAL TABS - BUTTON WHITE
// ============================================================================

@Preview(name: "Horizontal - Button White")
Widget previewHorizontalButtonWhite() {
  return Padding(
    padding: const EdgeInsets.all(24.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: _sectionSpacing,
      children: [
        _buildSection(
          label: "Size MD - Active/Default",
          child: Row(
            spacing: 0,
            children: [
              OneTabButton(
                viewModel: TabButtonViewModel(
                  text: 'My details',
                  size: TabButtonSize.md,
                  type: TabButtonType.buttonWhite,
                  orientation: TabButtonOrientation.horizontal,
                  isActive: true,
                ),
              ),
              OneTabButton(
                viewModel: TabButtonViewModel(
                  text: 'Profile',
                  size: TabButtonSize.md,
                  type: TabButtonType.buttonWhite,
                  orientation: TabButtonOrientation.horizontal,
                ),
              ),
              OneTabButton(
                viewModel: TabButtonViewModel(
                  text: 'Password',
                  size: TabButtonSize.md,
                  type: TabButtonType.buttonWhite,
                  orientation: TabButtonOrientation.horizontal,
                ),
              ),
            ],
          ),
        ),
        _buildSection(
          label: "Size SM - Active/Default",
          child: Row(
            spacing: 0,
            children: [
              OneTabButton(
                viewModel: TabButtonViewModel(
                  text: 'My details',
                  size: TabButtonSize.sm,
                  type: TabButtonType.buttonWhite,
                  orientation: TabButtonOrientation.horizontal,
                  isActive: true,
                ),
              ),
              OneTabButton(
                viewModel: TabButtonViewModel(
                  text: 'Profile',
                  size: TabButtonSize.sm,
                  type: TabButtonType.buttonWhite,
                  orientation: TabButtonOrientation.horizontal,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

// ============================================================================
// HORIZONTAL TABS - BUTTON MINIMAL
// ============================================================================

@Preview(name: "Horizontal - Button Minimal")
Widget previewHorizontalButtonMinimal() {
  return Padding(
    padding: const EdgeInsets.all(24.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: _sectionSpacing,
      children: [
        _buildSection(
          label: "Size MD - Active/Default",
          child: Row(
            spacing: 0,
            children: [
              OneTabButton(
                viewModel: TabButtonViewModel(
                  text: 'My details',
                  size: TabButtonSize.md,
                  type: TabButtonType.buttonMinimal,
                  orientation: TabButtonOrientation.horizontal,
                  isActive: true,
                ),
              ),
              OneTabButton(
                viewModel: TabButtonViewModel(
                  text: 'Profile',
                  size: TabButtonSize.md,
                  type: TabButtonType.buttonMinimal,
                  orientation: TabButtonOrientation.horizontal,
                ),
              ),
              OneTabButton(
                viewModel: TabButtonViewModel(
                  text: 'Password',
                  size: TabButtonSize.md,
                  type: TabButtonType.buttonMinimal,
                  orientation: TabButtonOrientation.horizontal,
                ),
              ),
            ],
          ),
        ),
        _buildSection(
          label: "Size SM - Active/Default",
          child: Row(
            spacing: 0,
            children: [
              OneTabButton(
                viewModel: TabButtonViewModel(
                  text: 'My details',
                  size: TabButtonSize.sm,
                  type: TabButtonType.buttonMinimal,
                  orientation: TabButtonOrientation.horizontal,
                  isActive: true,
                ),
              ),
              OneTabButton(
                viewModel: TabButtonViewModel(
                  text: 'Profile',
                  size: TabButtonSize.sm,
                  type: TabButtonType.buttonMinimal,
                  orientation: TabButtonOrientation.horizontal,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

// ============================================================================
// VERTICAL TABS - BUTTON BRAND
// ============================================================================

@Preview(name: "Vertical - Button Brand")
Widget previewVerticalButtonBrand() {
  return Padding(
    padding: const EdgeInsets.all(24.0),
    child: Row(
      spacing: _sectionSpacing,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildSection(
          label: "Size MD",
          child: Column(
            spacing: 0,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              OneTabButton(
                viewModel: TabButtonViewModel(
                  text: 'My details',
                  size: TabButtonSize.md,
                  type: TabButtonType.buttonBrand,
                  orientation: TabButtonOrientation.vertical,
                  isActive: true,
                ),
              ),
              OneTabButton(
                viewModel: TabButtonViewModel(
                  text: 'Profile',
                  size: TabButtonSize.md,
                  type: TabButtonType.buttonBrand,
                  orientation: TabButtonOrientation.vertical,
                ),
              ),
              OneTabButton(
                viewModel: TabButtonViewModel(
                  text: 'Password',
                  size: TabButtonSize.md,
                  type: TabButtonType.buttonBrand,
                  orientation: TabButtonOrientation.vertical,
                ),
              ),
            ],
          ),
        ),
        _buildSection(
          label: "Size SM",
          child: Column(
            spacing: 0,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              OneTabButton(
                viewModel: TabButtonViewModel(
                  text: 'My details',
                  size: TabButtonSize.sm,
                  type: TabButtonType.buttonBrand,
                  orientation: TabButtonOrientation.vertical,
                  isActive: true,
                ),
              ),
              OneTabButton(
                viewModel: TabButtonViewModel(
                  text: 'Profile',
                  size: TabButtonSize.sm,
                  type: TabButtonType.buttonBrand,
                  orientation: TabButtonOrientation.vertical,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

// ============================================================================
// VERTICAL TABS - VERTICAL LINE
// ============================================================================

@Preview(name: "Vertical - Vertical Line")
Widget previewVerticalVerticalLine() {
  return Padding(
    padding: const EdgeInsets.all(24.0),
    child: Row(
      spacing: _sectionSpacing,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildSection(
          label: "Size MD",
          child: Column(
            spacing: 0,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              OneTabButton(
                viewModel: TabButtonViewModel(
                  text: 'My details',
                  size: TabButtonSize.md,
                  type: TabButtonType.verticalLine,
                  orientation: TabButtonOrientation.vertical,
                  isActive: true,
                ),
              ),
              OneTabButton(
                viewModel: TabButtonViewModel(
                  text: 'Profile',
                  size: TabButtonSize.md,
                  type: TabButtonType.verticalLine,
                  orientation: TabButtonOrientation.vertical,
                ),
              ),
              OneTabButton(
                viewModel: TabButtonViewModel(
                  text: 'Password',
                  size: TabButtonSize.md,
                  type: TabButtonType.verticalLine,
                  orientation: TabButtonOrientation.vertical,
                ),
              ),
            ],
          ),
        ),
        _buildSection(
          label: "Size SM",
          child: Column(
            spacing: 0,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              OneTabButton(
                viewModel: TabButtonViewModel(
                  text: 'My details',
                  size: TabButtonSize.sm,
                  type: TabButtonType.verticalLine,
                  orientation: TabButtonOrientation.vertical,
                  isActive: true,
                ),
              ),
              OneTabButton(
                viewModel: TabButtonViewModel(
                  text: 'Profile',
                  size: TabButtonSize.sm,
                  type: TabButtonType.verticalLine,
                  orientation: TabButtonOrientation.vertical,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

// ============================================================================
// ALL TYPES COMPARISON
// ============================================================================

@Preview(name: "All Horizontal Types")
Widget previewAllHorizontalTypes() {
  return Padding(
    padding: const EdgeInsets.all(24.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: _sectionSpacing,
      children: [
        _buildSection(
          label: "Button Brand",
          child: Row(
            spacing: 0,
            children: [
              OneTabButton(
                viewModel: TabButtonViewModel(
                  text: 'Active',
                  size: TabButtonSize.md,
                  type: TabButtonType.buttonBrand,
                  orientation: TabButtonOrientation.horizontal,
                  isActive: true,
                ),
              ),
              OneTabButton(
                viewModel: TabButtonViewModel(
                  text: 'Default',
                  size: TabButtonSize.md,
                  type: TabButtonType.buttonBrand,
                  orientation: TabButtonOrientation.horizontal,
                ),
              ),
            ],
          ),
        ),
        _buildSection(
          label: "Button Gray",
          child: Row(
            spacing: 0,
            children: [
              OneTabButton(
                viewModel: TabButtonViewModel(
                  text: 'Active',
                  size: TabButtonSize.md,
                  type: TabButtonType.buttonGray,
                  orientation: TabButtonOrientation.horizontal,
                  isActive: true,
                ),
              ),
              OneTabButton(
                viewModel: TabButtonViewModel(
                  text: 'Default',
                  size: TabButtonSize.md,
                  type: TabButtonType.buttonGray,
                  orientation: TabButtonOrientation.horizontal,
                ),
              ),
            ],
          ),
        ),
        _buildSection(
          label: "Underline",
          child: Row(
            spacing: 0,
            children: [
              OneTabButton(
                viewModel: TabButtonViewModel(
                  text: 'Active',
                  size: TabButtonSize.md,
                  type: TabButtonType.underline,
                  orientation: TabButtonOrientation.horizontal,
                  isActive: true,
                ),
              ),
              OneTabButton(
                viewModel: TabButtonViewModel(
                  text: 'Default',
                  size: TabButtonSize.md,
                  type: TabButtonType.underline,
                  orientation: TabButtonOrientation.horizontal,
                ),
              ),
            ],
          ),
        ),
        _buildSection(
          label: "Button White",
          child: Row(
            spacing: 0,
            children: [
              OneTabButton(
                viewModel: TabButtonViewModel(
                  text: 'Active',
                  size: TabButtonSize.md,
                  type: TabButtonType.buttonWhite,
                  orientation: TabButtonOrientation.horizontal,
                  isActive: true,
                ),
              ),
              OneTabButton(
                viewModel: TabButtonViewModel(
                  text: 'Default',
                  size: TabButtonSize.md,
                  type: TabButtonType.buttonWhite,
                  orientation: TabButtonOrientation.horizontal,
                ),
              ),
            ],
          ),
        ),
        _buildSection(
          label: "Button Minimal",
          child: Row(
            spacing: 0,
            children: [
              OneTabButton(
                viewModel: TabButtonViewModel(
                  text: 'Active',
                  size: TabButtonSize.md,
                  type: TabButtonType.buttonMinimal,
                  orientation: TabButtonOrientation.horizontal,
                  isActive: true,
                ),
              ),
              OneTabButton(
                viewModel: TabButtonViewModel(
                  text: 'Default',
                  size: TabButtonSize.md,
                  type: TabButtonType.buttonMinimal,
                  orientation: TabButtonOrientation.horizontal,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

// ============================================================================
// DISABLED STATE
// ============================================================================

@Preview(name: "Disabled State")
Widget previewDisabledState() {
  return Padding(
    padding: const EdgeInsets.all(24.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: _sectionSpacing,
      children: [
        _buildSection(
          label: "Button Brand - Disabled",
          child: Row(
            spacing: 0,
            children: [
              OneTabButton(
                viewModel: TabButtonViewModel(
                  text: 'Disabled',
                  size: TabButtonSize.md,
                  type: TabButtonType.buttonBrand,
                  orientation: TabButtonOrientation.horizontal,
                  isDisabled: true,
                ),
              ),
            ],
          ),
        ),
        _buildSection(
          label: "Underline - Disabled",
          child: Row(
            spacing: 0,
            children: [
              OneTabButton(
                viewModel: TabButtonViewModel(
                  text: 'Disabled',
                  size: TabButtonSize.md,
                  type: TabButtonType.underline,
                  orientation: TabButtonOrientation.horizontal,
                  isDisabled: true,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

// ============================================================================
// HELPER WIDGETS
// ============================================================================

Widget _buildSection({required String label, required Widget child}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    spacing: 8,
    children: [
      Text(
        label,
        style: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w600,
          color: Colors.grey,
        ),
      ),
      child,
    ],
  );
}
