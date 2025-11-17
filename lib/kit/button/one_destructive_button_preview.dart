import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';
import 'package:one_uikit/one_uikit.dart';

/// Widget previews for OneDestructiveButton component
///
/// These previews demonstrate all hierarchies across all sizes and states

double _spacing = 12.0;
double _rowSpacing = 24.0;

// ============================================================================
// PRIMARY HIERARCHY PREVIEWS
// ============================================================================

@Preview(name: "Primary - All Sizes")
Widget previewPrimaryAllSizes() {
  return Padding(
    padding: const EdgeInsets.all(24.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: _rowSpacing,
      children: [
        // Text only
        _buildRow(
          label: "Text Only",
          widgets:
              OneButtonSize.values
                  .map(
                    (size) => OneDestructiveButton(
                      size: size,
                      hierarchy: OneButtonDestructiveHierarchy.primary,
                      text: "Button CTA",
                      onTap: () {},
                    ),
                  )
                  .toList(),
        ),
        // With leading icon
        _buildRow(
          label: "Leading Icon",
          widgets:
              OneButtonSize.values
                  .map(
                    (size) => OneDestructiveButton(
                      size: size,
                      hierarchy: OneButtonDestructiveHierarchy.primary,
                      text: "Button CTA",
                      leadingIcon: GeneralIcon.placeholder,
                      onTap: () {},
                    ),
                  )
                  .toList(),
        ),
        // With both icons
        _buildRow(
          label: "Both Icons",
          widgets:
              OneButtonSize.values
                  .map(
                    (size) => OneDestructiveButton(
                      size: size,
                      hierarchy: OneButtonDestructiveHierarchy.primary,
                      text: "Button CTA",
                      leadingIcon: GeneralIcon.placeholder,
                      trailingIcon: GeneralIcon.placeholder,
                      onTap: () {},
                    ),
                  )
                  .toList(),
        ),
        // Icon only
        _buildRow(
          label: "Icon Only",
          widgets:
              OneButtonSize.values
                  .map(
                    (size) => OneDestructiveButton(
                      size: size,
                      hierarchy: OneButtonDestructiveHierarchy.primary,
                      leadingIcon: GeneralIcon.placeholder,
                      onTap: () {},
                    ),
                  )
                  .toList(),
        ),
      ],
    ),
  );
}

@Preview(name: "Primary - States")
Widget previewPrimaryStates() {
  return Padding(
    padding: const EdgeInsets.all(24.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: _rowSpacing,
      children: [
        _buildRow(
          label: "Normal",
          widgets: [
            OneDestructiveButton(
              hierarchy: OneButtonDestructiveHierarchy.primary,
              text: "Button CTA",
              leadingIcon: GeneralIcon.placeholder,
              onTap: () {},
            ),
          ],
        ),
        _buildRow(
          label: "Disabled",
          widgets: [
            OneDestructiveButton(
              hierarchy: OneButtonDestructiveHierarchy.primary,
              text: "Button CTA",
              leadingIcon: GeneralIcon.placeholder,
              isDisabled: true,
              onTap: () {},
            ),
          ],
        ),
        _buildRow(
          label: "Loading",
          widgets: [
            OneDestructiveButton(
              hierarchy: OneButtonDestructiveHierarchy.primary,
              text: "Button CTA",
              leadingIcon: GeneralIcon.placeholder,
              isLoading: true,
              onTap: () {},
            ),
          ],
        ),
      ],
    ),
  );
}

// ============================================================================
// SECONDARY HIERARCHY PREVIEWS
// ============================================================================

@Preview(name: "Secondary - All Sizes")
Widget previewSecondaryAllSizes() {
  return Padding(
    padding: const EdgeInsets.all(24.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: _rowSpacing,
      children: [
        _buildRow(
          label: "Text Only",
          widgets:
              OneButtonSize.values
                  .map(
                    (size) => OneDestructiveButton(
                      size: size,
                      hierarchy: OneButtonDestructiveHierarchy.secondary,
                      text: "Button CTA",
                      onTap: () {},
                    ),
                  )
                  .toList(),
        ),
        _buildRow(
          label: "Leading Icon",
          widgets:
              OneButtonSize.values
                  .map(
                    (size) => OneDestructiveButton(
                      size: size,
                      hierarchy: OneButtonDestructiveHierarchy.secondary,
                      text: "Button CTA",
                      leadingIcon: GeneralIcon.placeholder,
                      onTap: () {},
                    ),
                  )
                  .toList(),
        ),
        _buildRow(
          label: "Both Icons",
          widgets:
              OneButtonSize.values
                  .map(
                    (size) => OneDestructiveButton(
                      size: size,
                      hierarchy: OneButtonDestructiveHierarchy.secondary,
                      text: "Button CTA",
                      leadingIcon: GeneralIcon.placeholder,
                      trailingIcon: GeneralIcon.placeholder,
                      onTap: () {},
                    ),
                  )
                  .toList(),
        ),
        _buildRow(
          label: "Icon Only",
          widgets:
              OneButtonSize.values
                  .map(
                    (size) => OneDestructiveButton(
                      size: size,
                      hierarchy: OneButtonDestructiveHierarchy.secondary,
                      leadingIcon: GeneralIcon.placeholder,
                      onTap: () {},
                    ),
                  )
                  .toList(),
        ),
      ],
    ),
  );
}

@Preview(name: "Secondary - States")
Widget previewSecondaryStates() {
  return Padding(
    padding: const EdgeInsets.all(24.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: _rowSpacing,
      children: [
        _buildRow(
          label: "Normal",
          widgets: [
            OneDestructiveButton(
              hierarchy: OneButtonDestructiveHierarchy.secondary,
              text: "Button CTA",
              leadingIcon: GeneralIcon.placeholder,
              onTap: () {},
            ),
          ],
        ),
        _buildRow(
          label: "Disabled",
          widgets: [
            OneDestructiveButton(
              hierarchy: OneButtonDestructiveHierarchy.secondary,
              text: "Button CTA",
              leadingIcon: GeneralIcon.placeholder,
              isDisabled: true,
              onTap: () {},
            ),
          ],
        ),
      ],
    ),
  );
}

// ============================================================================
// TERTIARY HIERARCHY PREVIEWS
// ============================================================================

@Preview(name: "Tertiary - All Sizes")
Widget previewTertiaryAllSizes() {
  return Padding(
    padding: const EdgeInsets.all(24.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: _rowSpacing,
      children: [
        _buildRow(
          label: "Text Only",
          widgets:
              OneButtonSize.values
                  .map(
                    (size) => OneDestructiveButton(
                      size: size,
                      hierarchy: OneButtonDestructiveHierarchy.tertiary,
                      text: "Button CTA",
                      onTap: () {},
                    ),
                  )
                  .toList(),
        ),
        _buildRow(
          label: "Leading Icon",
          widgets:
              OneButtonSize.values
                  .map(
                    (size) => OneDestructiveButton(
                      size: size,
                      hierarchy: OneButtonDestructiveHierarchy.tertiary,
                      text: "Button CTA",
                      leadingIcon: GeneralIcon.placeholder,
                      onTap: () {},
                    ),
                  )
                  .toList(),
        ),
        _buildRow(
          label: "Both Icons",
          widgets:
              OneButtonSize.values
                  .map(
                    (size) => OneDestructiveButton(
                      size: size,
                      hierarchy: OneButtonDestructiveHierarchy.tertiary,
                      text: "Button CTA",
                      leadingIcon: GeneralIcon.placeholder,
                      trailingIcon: GeneralIcon.placeholder,
                      onTap: () {},
                    ),
                  )
                  .toList(),
        ),
        _buildRow(
          label: "Icon Only",
          widgets:
              OneButtonSize.values
                  .map(
                    (size) => OneDestructiveButton(
                      size: size,
                      hierarchy: OneButtonDestructiveHierarchy.tertiary,
                      leadingIcon: GeneralIcon.placeholder,
                      onTap: () {},
                    ),
                  )
                  .toList(),
        ),
      ],
    ),
  );
}

@Preview(name: "Tertiary - States")
Widget previewTertiaryStates() {
  return Padding(
    padding: const EdgeInsets.all(24.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: _rowSpacing,
      children: [
        _buildRow(
          label: "Normal",
          widgets: [
            OneDestructiveButton(
              hierarchy: OneButtonDestructiveHierarchy.tertiary,
              text: "Button CTA",
              leadingIcon: GeneralIcon.placeholder,
              onTap: () {},
            ),
          ],
        ),
        _buildRow(
          label: "Disabled",
          widgets: [
            OneDestructiveButton(
              hierarchy: OneButtonDestructiveHierarchy.tertiary,
              text: "Button CTA",
              leadingIcon: GeneralIcon.placeholder,
              isDisabled: true,
              onTap: () {},
            ),
          ],
        ),
      ],
    ),
  );
}

// ============================================================================
// LINK HIERARCHY PREVIEWS
// ============================================================================

@Preview(name: "Link - All Sizes")
Widget previewLinkAllSizes() {
  return Padding(
    padding: const EdgeInsets.all(24.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: _rowSpacing,
      children: [
        _buildRow(
          label: "Text Only",
          widgets:
              OneButtonSize.values
                  .map(
                    (size) => OneDestructiveButton(
                      size: size,
                      hierarchy: OneButtonDestructiveHierarchy.link,
                      text: "Button CTA",
                      onTap: () {},
                    ),
                  )
                  .toList(),
        ),
        _buildRow(
          label: "Leading Icon",
          widgets:
              OneButtonSize.values
                  .map(
                    (size) => OneDestructiveButton(
                      size: size,
                      hierarchy: OneButtonDestructiveHierarchy.link,
                      text: "Button CTA",
                      leadingIcon: GeneralIcon.placeholder,
                      onTap: () {},
                    ),
                  )
                  .toList(),
        ),
        _buildRow(
          label: "Both Icons",
          widgets:
              OneButtonSize.values
                  .map(
                    (size) => OneDestructiveButton(
                      size: size,
                      hierarchy: OneButtonDestructiveHierarchy.link,
                      text: "Button CTA",
                      leadingIcon: GeneralIcon.placeholder,
                      trailingIcon: GeneralIcon.placeholder,
                      onTap: () {},
                    ),
                  )
                  .toList(),
        ),
      ],
    ),
  );
}

// ============================================================================
// ALL HIERARCHIES COMPARISON
// ============================================================================

@Preview(name: "All Hierarchies")
Widget previewAllHierarchies() {
  return Padding(
    padding: const EdgeInsets.all(24.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: _rowSpacing,
      children: [
        _buildRow(
          label: "Primary",
          widgets: [
            OneDestructiveButton(
              hierarchy: OneButtonDestructiveHierarchy.primary,
              text: "Button CTA",
              leadingIcon: GeneralIcon.placeholder,
              onTap: () {},
            ),
          ],
        ),
        _buildRow(
          label: "Secondary",
          widgets: [
            OneDestructiveButton(
              hierarchy: OneButtonDestructiveHierarchy.secondary,
              text: "Button CTA",
              leadingIcon: GeneralIcon.placeholder,
              onTap: () {},
            ),
          ],
        ),
        _buildRow(
          label: "Tertiary",
          widgets: [
            OneDestructiveButton(
              hierarchy: OneButtonDestructiveHierarchy.tertiary,
              text: "Button CTA",
              leadingIcon: GeneralIcon.placeholder,
              onTap: () {},
            ),
          ],
        ),
        _buildRow(
          label: "Link",
          widgets: [
            OneDestructiveButton(
              hierarchy: OneButtonDestructiveHierarchy.link,
              text: "Button CTA",
              leadingIcon: GeneralIcon.placeholder,
              onTap: () {},
            ),
          ],
        ),
      ],
    ),
  );
}

// ============================================================================
// FULL WIDTH PREVIEW
// ============================================================================

@Preview(name: "Full Width")
Widget previewFullWidth() {
  return Padding(
    padding: const EdgeInsets.all(24.0),
    child: Column(
      spacing: _spacing,
      children: [
        OneDestructiveButton(
          hierarchy: OneButtonDestructiveHierarchy.primary,
          text: "Full Width Primary",
          leadingIcon: GeneralIcon.placeholder,
          fullWidth: true,
          onTap: () {},
        ),
        OneDestructiveButton(
          hierarchy: OneButtonDestructiveHierarchy.secondary,
          text: "Full Width Secondary",
          leadingIcon: GeneralIcon.placeholder,
          fullWidth: true,
          onTap: () {},
        ),
        OneDestructiveButton(
          hierarchy: OneButtonDestructiveHierarchy.tertiary,
          text: "Full Width Tertiary",
          leadingIcon: GeneralIcon.placeholder,
          fullWidth: true,
          onTap: () {},
        ),
      ],
    ),
  );
}

// ============================================================================
// HELPER WIDGETS
// ============================================================================

Widget _buildRow({required String label, required List<Widget> widgets}) {
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
      Wrap(spacing: _spacing, runSpacing: _spacing, children: widgets),
    ],
  );
}
