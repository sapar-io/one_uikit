import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';
import 'package:one_uikit/one_uikit.dart';

/// Widget previews for OneButton component
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
                    (size) => OneButton(
                      viewModel: OneButtonViewModel(
                        size: size,
                        hierarchy: OneButtonHierarchy.primary,
                        text: "Button CTA",
                        onTap: () {},
                      ),
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
                    (size) => OneButton(
                      viewModel: OneButtonViewModel(
                        size: size,
                        hierarchy: OneButtonHierarchy.primary,
                        text: "Button CTA",
                        leadingIcon: GeneralIcon.placeholder,
                        onTap: () {},
                      ),
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
                    (size) => OneButton(
                      viewModel: OneButtonViewModel(
                        size: size,
                        hierarchy: OneButtonHierarchy.primary,
                        text: "Button CTA",
                        leadingIcon: GeneralIcon.placeholder,
                        trailingIcon: GeneralIcon.placeholder,
                        onTap: () {},
                      ),
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
                    (size) => OneButton(
                      viewModel: OneButtonViewModel(
                        size: size,
                        hierarchy: OneButtonHierarchy.primary,
                        leadingIcon: GeneralIcon.placeholder,
                        onTap: () {},
                      ),
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
            OneButton(
              viewModel: OneButtonViewModel(
                hierarchy: OneButtonHierarchy.primary,
                text: "Button CTA",
                leadingIcon: GeneralIcon.placeholder,
                onTap: () {},
              ),
            ),
          ],
        ),
        _buildRow(
          label: "Hover",
          widgets: [
            OneButton(
              viewModel: OneButtonViewModel(
                hierarchy: OneButtonHierarchy.primary,
                text: "Button CTA",
                leadingIcon: GeneralIcon.placeholder,
                isFocused: true,
                onTap: () {},
              ),
            ),
          ],
        ),
        _buildRow(
          label: "Focused",
          widgets: [
            OneButton(
              viewModel: OneButtonViewModel(
                hierarchy: OneButtonHierarchy.primary,
                text: "Button CTA",
                leadingIcon: GeneralIcon.placeholder,
                isFocused: true,
                onTap: () {},
              ),
            ),
          ],
        ),
        _buildRow(
          label: "Disabled",
          widgets: [
            OneButton(
              viewModel: OneButtonViewModel(
                hierarchy: OneButtonHierarchy.primary,
                text: "Button CTA",
                leadingIcon: GeneralIcon.placeholder,
                isDisabled: true,
                onTap: () {},
              ),
            ),
          ],
        ),
        _buildRow(
          label: "Loading",
          widgets: [
            OneButton(
              viewModel: OneButtonViewModel(
                hierarchy: OneButtonHierarchy.primary,
                text: "Button CTA",
                leadingIcon: GeneralIcon.placeholder,
                isLoading: true,
                onTap: () {},
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

// ============================================================================
// SECONDARY GRAY HIERARCHY PREVIEWS
// ============================================================================

@Preview(name: "Secondary Gray - All Sizes")
Widget previewSecondaryGrayAllSizes() {
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
                    (size) => OneButton(
                      viewModel: OneButtonViewModel(
                        size: size,
                        hierarchy: OneButtonHierarchy.secondaryGray,
                        text: "Button CTA",
                        onTap: () {},
                      ),
                    ),
                  )
                  .toList(),
        ),
        _buildRow(
          label: "Leading Icon",
          widgets:
              OneButtonSize.values
                  .map(
                    (size) => OneButton(
                      viewModel: OneButtonViewModel(
                        size: size,
                        hierarchy: OneButtonHierarchy.secondaryGray,
                        text: "Button CTA",
                        leadingIcon: GeneralIcon.placeholder,
                        onTap: () {},
                      ),
                    ),
                  )
                  .toList(),
        ),
        _buildRow(
          label: "Both Icons",
          widgets:
              OneButtonSize.values
                  .map(
                    (size) => OneButton(
                      viewModel: OneButtonViewModel(
                        size: size,
                        hierarchy: OneButtonHierarchy.secondaryGray,
                        text: "Button CTA",
                        leadingIcon: GeneralIcon.placeholder,
                        trailingIcon: GeneralIcon.placeholder,
                        onTap: () {},
                      ),
                    ),
                  )
                  .toList(),
        ),
        _buildRow(
          label: "Icon Only",
          widgets:
              OneButtonSize.values
                  .map(
                    (size) => OneButton(
                      viewModel: OneButtonViewModel(
                        size: size,
                        hierarchy: OneButtonHierarchy.secondaryGray,
                        leadingIcon: GeneralIcon.placeholder,
                        onTap: () {},
                      ),
                    ),
                  )
                  .toList(),
        ),
      ],
    ),
  );
}

@Preview(name: "Secondary Gray - States")
Widget previewSecondaryGrayStates() {
  return Padding(
    padding: const EdgeInsets.all(24.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: _rowSpacing,
      children: [
        _buildRow(
          label: "Normal",
          widgets: [
            OneButton(
              viewModel: OneButtonViewModel(
                hierarchy: OneButtonHierarchy.secondaryGray,
                text: "Button CTA",
                leadingIcon: GeneralIcon.placeholder,
                onTap: () {},
              ),
            ),
          ],
        ),
        _buildRow(
          label: "Hover",
          widgets: [
            OneButton(
              viewModel: OneButtonViewModel(
                hierarchy: OneButtonHierarchy.secondaryGray,
                text: "Button CTA",
                leadingIcon: GeneralIcon.placeholder,
                isFocused: true,
                onTap: () {},
              ),
            ),
          ],
        ),
        _buildRow(
          label: "Focused",
          widgets: [
            OneButton(
              viewModel: OneButtonViewModel(
                hierarchy: OneButtonHierarchy.secondaryGray,
                text: "Button CTA",
                leadingIcon: GeneralIcon.placeholder,
                isFocused: true,
                onTap: () {},
              ),
            ),
          ],
        ),
        _buildRow(
          label: "Disabled",
          widgets: [
            OneButton(
              viewModel: OneButtonViewModel(
                hierarchy: OneButtonHierarchy.secondaryGray,
                text: "Button CTA",
                leadingIcon: GeneralIcon.placeholder,
                isDisabled: true,
                onTap: () {},
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

// ============================================================================
// SECONDARY COLOR HIERARCHY PREVIEWS
// ============================================================================

@Preview(name: "Secondary Color - All Sizes")
Widget previewSecondaryColorAllSizes() {
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
                    (size) => OneButton(
                      viewModel: OneButtonViewModel(
                        size: size,
                        hierarchy: OneButtonHierarchy.secondaryColor,
                        text: "Button CTA",
                        onTap: () {},
                      ),
                    ),
                  )
                  .toList(),
        ),
        _buildRow(
          label: "Leading Icon",
          widgets:
              OneButtonSize.values
                  .map(
                    (size) => OneButton(
                      viewModel: OneButtonViewModel(
                        size: size,
                        hierarchy: OneButtonHierarchy.secondaryColor,
                        text: "Button CTA",
                        leadingIcon: GeneralIcon.placeholder,
                        onTap: () {},
                      ),
                    ),
                  )
                  .toList(),
        ),
        _buildRow(
          label: "Both Icons",
          widgets:
              OneButtonSize.values
                  .map(
                    (size) => OneButton(
                      viewModel: OneButtonViewModel(
                        size: size,
                        hierarchy: OneButtonHierarchy.secondaryColor,
                        text: "Button CTA",
                        leadingIcon: GeneralIcon.placeholder,
                        trailingIcon: GeneralIcon.placeholder,
                        onTap: () {},
                      ),
                    ),
                  )
                  .toList(),
        ),
        _buildRow(
          label: "Icon Only",
          widgets:
              OneButtonSize.values
                  .map(
                    (size) => OneButton(
                      viewModel: OneButtonViewModel(
                        size: size,
                        hierarchy: OneButtonHierarchy.secondaryColor,
                        leadingIcon: GeneralIcon.placeholder,
                        onTap: () {},
                      ),
                    ),
                  )
                  .toList(),
        ),
      ],
    ),
  );
}

@Preview(name: "Secondary Color - States")
Widget previewSecondaryColorStates() {
  return Padding(
    padding: const EdgeInsets.all(24.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: _rowSpacing,
      children: [
        _buildRow(
          label: "Normal",
          widgets: [
            OneButton(
              viewModel: OneButtonViewModel(
                hierarchy: OneButtonHierarchy.secondaryColor,
                text: "Button CTA",
                leadingIcon: GeneralIcon.placeholder,
                onTap: () {},
              ),
            ),
          ],
        ),
        _buildRow(
          label: "Hover",
          widgets: [
            OneButton(
              viewModel: OneButtonViewModel(
                hierarchy: OneButtonHierarchy.secondaryColor,
                text: "Button CTA",
                leadingIcon: GeneralIcon.placeholder,
                isFocused: true,
                onTap: () {},
              ),
            ),
          ],
        ),
        _buildRow(
          label: "Focused",
          widgets: [
            OneButton(
              viewModel: OneButtonViewModel(
                hierarchy: OneButtonHierarchy.secondaryColor,
                text: "Button CTA",
                leadingIcon: GeneralIcon.placeholder,
                isFocused: true,
                onTap: () {},
              ),
            ),
          ],
        ),
        _buildRow(
          label: "Disabled",
          widgets: [
            OneButton(
              viewModel: OneButtonViewModel(
                hierarchy: OneButtonHierarchy.secondaryColor,
                text: "Button CTA",
                leadingIcon: GeneralIcon.placeholder,
                isDisabled: true,
                onTap: () {},
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

// ============================================================================
// TERTIARY GRAY HIERARCHY PREVIEWS
// ============================================================================

@Preview(name: "Tertiary Gray - All Sizes")
Widget previewTertiaryGrayAllSizes() {
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
                    (size) => OneButton(
                      viewModel: OneButtonViewModel(
                        size: size,
                        hierarchy: OneButtonHierarchy.tertiaryGray,
                        text: "Button CTA",
                        onTap: () {},
                      ),
                    ),
                  )
                  .toList(),
        ),
        _buildRow(
          label: "Leading Icon",
          widgets:
              OneButtonSize.values
                  .map(
                    (size) => OneButton(
                      viewModel: OneButtonViewModel(
                        size: size,
                        hierarchy: OneButtonHierarchy.tertiaryGray,
                        text: "Button CTA",
                        leadingIcon: GeneralIcon.placeholder,
                        onTap: () {},
                      ),
                    ),
                  )
                  .toList(),
        ),
        _buildRow(
          label: "Both Icons",
          widgets:
              OneButtonSize.values
                  .map(
                    (size) => OneButton(
                      viewModel: OneButtonViewModel(
                        size: size,
                        hierarchy: OneButtonHierarchy.tertiaryGray,
                        text: "Button CTA",
                        leadingIcon: GeneralIcon.placeholder,
                        trailingIcon: GeneralIcon.placeholder,
                        onTap: () {},
                      ),
                    ),
                  )
                  .toList(),
        ),
        _buildRow(
          label: "Icon Only",
          widgets:
              OneButtonSize.values
                  .map(
                    (size) => OneButton(
                      viewModel: OneButtonViewModel(
                        size: size,
                        hierarchy: OneButtonHierarchy.tertiaryGray,
                        leadingIcon: GeneralIcon.placeholder,
                        onTap: () {},
                      ),
                    ),
                  )
                  .toList(),
        ),
      ],
    ),
  );
}

@Preview(name: "Tertiary Gray - States")
Widget previewTertiaryGrayStates() {
  return Padding(
    padding: const EdgeInsets.all(24.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: _rowSpacing,
      children: [
        _buildRow(
          label: "Normal",
          widgets: [
            OneButton(
              viewModel: OneButtonViewModel(
                hierarchy: OneButtonHierarchy.tertiaryGray,
                text: "Button CTA",
                leadingIcon: GeneralIcon.placeholder,
                onTap: () {},
              ),
            ),
          ],
        ),
        _buildRow(
          label: "Hover",
          widgets: [
            OneButton(
              viewModel: OneButtonViewModel(
                hierarchy: OneButtonHierarchy.tertiaryGray,
                text: "Button CTA",
                leadingIcon: GeneralIcon.placeholder,
                isFocused: true,
                onTap: () {},
              ),
            ),
          ],
        ),
        _buildRow(
          label: "Disabled",
          widgets: [
            OneButton(
              viewModel: OneButtonViewModel(
                hierarchy: OneButtonHierarchy.tertiaryGray,
                text: "Button CTA",
                leadingIcon: GeneralIcon.placeholder,
                isDisabled: true,
                onTap: () {},
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

// ============================================================================
// TERTIARY COLOR HIERARCHY PREVIEWS
// ============================================================================

@Preview(name: "Tertiary Color - All Sizes")
Widget previewTertiaryColorAllSizes() {
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
                    (size) => OneButton(
                      viewModel: OneButtonViewModel(
                        size: size,
                        hierarchy: OneButtonHierarchy.tertiaryColor,
                        text: "Button CTA",
                        onTap: () {},
                      ),
                    ),
                  )
                  .toList(),
        ),
        _buildRow(
          label: "Leading Icon",
          widgets:
              OneButtonSize.values
                  .map(
                    (size) => OneButton(
                      viewModel: OneButtonViewModel(
                        size: size,
                        hierarchy: OneButtonHierarchy.tertiaryColor,
                        text: "Button CTA",
                        leadingIcon: GeneralIcon.placeholder,
                        onTap: () {},
                      ),
                    ),
                  )
                  .toList(),
        ),
        _buildRow(
          label: "Both Icons",
          widgets:
              OneButtonSize.values
                  .map(
                    (size) => OneButton(
                      viewModel: OneButtonViewModel(
                        size: size,
                        hierarchy: OneButtonHierarchy.tertiaryColor,
                        text: "Button CTA",
                        leadingIcon: GeneralIcon.placeholder,
                        trailingIcon: GeneralIcon.placeholder,
                        onTap: () {},
                      ),
                    ),
                  )
                  .toList(),
        ),
        _buildRow(
          label: "Icon Only",
          widgets:
              OneButtonSize.values
                  .map(
                    (size) => OneButton(
                      viewModel: OneButtonViewModel(
                        size: size,
                        hierarchy: OneButtonHierarchy.tertiaryColor,
                        leadingIcon: GeneralIcon.placeholder,
                        onTap: () {},
                      ),
                    ),
                  )
                  .toList(),
        ),
      ],
    ),
  );
}

@Preview(name: "Tertiary Color - States")
Widget previewTertiaryColorStates() {
  return Padding(
    padding: const EdgeInsets.all(24.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: _rowSpacing,
      children: [
        _buildRow(
          label: "Normal",
          widgets: [
            OneButton(
              viewModel: OneButtonViewModel(
                hierarchy: OneButtonHierarchy.tertiaryColor,
                text: "Button CTA",
                leadingIcon: GeneralIcon.placeholder,
                onTap: () {},
              ),
            ),
          ],
        ),
        _buildRow(
          label: "Hover",
          widgets: [
            OneButton(
              viewModel: OneButtonViewModel(
                hierarchy: OneButtonHierarchy.tertiaryColor,
                text: "Button CTA",
                leadingIcon: GeneralIcon.placeholder,
                isFocused: true,
                onTap: () {},
              ),
            ),
          ],
        ),
        _buildRow(
          label: "Disabled",
          widgets: [
            OneButton(
              viewModel: OneButtonViewModel(
                hierarchy: OneButtonHierarchy.tertiaryColor,
                text: "Button CTA",
                leadingIcon: GeneralIcon.placeholder,
                isDisabled: true,
                onTap: () {},
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

// ============================================================================
// LINK GRAY HIERARCHY PREVIEWS
// ============================================================================

@Preview(name: "Link Gray - All Sizes")
Widget previewLinkGrayAllSizes() {
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
                    (size) => OneButton(
                      viewModel: OneButtonViewModel(
                        size: size,
                        hierarchy: OneButtonHierarchy.linkGray,
                        text: "Button CTA",
                        onTap: () {},
                      ),
                    ),
                  )
                  .toList(),
        ),
        _buildRow(
          label: "Leading Icon",
          widgets:
              OneButtonSize.values
                  .map(
                    (size) => OneButton(
                      viewModel: OneButtonViewModel(
                        size: size,
                        hierarchy: OneButtonHierarchy.linkGray,
                        text: "Button CTA",
                        leadingIcon: GeneralIcon.placeholder,
                        onTap: () {},
                      ),
                    ),
                  )
                  .toList(),
        ),
        _buildRow(
          label: "Both Icons",
          widgets:
              OneButtonSize.values
                  .map(
                    (size) => OneButton(
                      viewModel: OneButtonViewModel(
                        size: size,
                        hierarchy: OneButtonHierarchy.linkGray,
                        text: "Button CTA",
                        leadingIcon: GeneralIcon.placeholder,
                        trailingIcon: GeneralIcon.placeholder,
                        onTap: () {},
                      ),
                    ),
                  )
                  .toList(),
        ),
      ],
    ),
  );
}

@Preview(name: "Link Gray - States")
Widget previewLinkGrayStates() {
  return Padding(
    padding: const EdgeInsets.all(24.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: _rowSpacing,
      children: [
        _buildRow(
          label: "Normal",
          widgets: [
            OneButton(
              viewModel: OneButtonViewModel(
                hierarchy: OneButtonHierarchy.linkGray,
                text: "Button CTA",
                leadingIcon: GeneralIcon.placeholder,
                onTap: () {},
              ),
            ),
          ],
        ),
        _buildRow(
          label: "Hover",
          widgets: [
            OneButton(
              viewModel: OneButtonViewModel(
                hierarchy: OneButtonHierarchy.linkGray,
                text: "Button CTA",
                leadingIcon: GeneralIcon.placeholder,
                isFocused: true,
                onTap: () {},
              ),
            ),
          ],
        ),
        _buildRow(
          label: "Active",
          widgets: [
            OneButton(
              viewModel: OneButtonViewModel(
                hierarchy: OneButtonHierarchy.linkGray,
                text: "Button CTA",
                leadingIcon: GeneralIcon.placeholder,
                isActive: true,
                onTap: () {},
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

// ============================================================================
// LINK COLOR HIERARCHY PREVIEWS
// ============================================================================

@Preview(name: "Link Color - All Sizes")
Widget previewLinkColorAllSizes() {
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
                    (size) => OneButton(
                      viewModel: OneButtonViewModel(
                        size: size,
                        hierarchy: OneButtonHierarchy.linkColor,
                        text: "Button CTA",
                        onTap: () {},
                      ),
                    ),
                  )
                  .toList(),
        ),
        _buildRow(
          label: "Leading Icon",
          widgets:
              OneButtonSize.values
                  .map(
                    (size) => OneButton(
                      viewModel: OneButtonViewModel(
                        size: size,
                        hierarchy: OneButtonHierarchy.linkColor,
                        text: "Button CTA",
                        leadingIcon: GeneralIcon.placeholder,
                        onTap: () {},
                      ),
                    ),
                  )
                  .toList(),
        ),
        _buildRow(
          label: "Both Icons",
          widgets:
              OneButtonSize.values
                  .map(
                    (size) => OneButton(
                      viewModel: OneButtonViewModel(
                        size: size,
                        hierarchy: OneButtonHierarchy.linkColor,
                        text: "Button CTA",
                        leadingIcon: GeneralIcon.placeholder,
                        trailingIcon: GeneralIcon.placeholder,
                        onTap: () {},
                      ),
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
            OneButton(
              viewModel: OneButtonViewModel(
                hierarchy: OneButtonHierarchy.primary,
                text: "Button CTA",
                leadingIcon: GeneralIcon.placeholder,
                onTap: () {},
              ),
            ),
          ],
        ),
        _buildRow(
          label: "Secondary Gray",
          widgets: [
            OneButton(
              viewModel: OneButtonViewModel(
                hierarchy: OneButtonHierarchy.secondaryGray,
                text: "Button CTA",
                leadingIcon: GeneralIcon.placeholder,
                onTap: () {},
              ),
            ),
          ],
        ),
        _buildRow(
          label: "Secondary Color",
          widgets: [
            OneButton(
              viewModel: OneButtonViewModel(
                hierarchy: OneButtonHierarchy.secondaryColor,
                text: "Button CTA",
                leadingIcon: GeneralIcon.placeholder,
                onTap: () {},
              ),
            ),
          ],
        ),
        _buildRow(
          label: "Tertiary Gray",
          widgets: [
            OneButton(
              viewModel: OneButtonViewModel(
                hierarchy: OneButtonHierarchy.tertiaryGray,
                text: "Button CTA",
                leadingIcon: GeneralIcon.placeholder,
                onTap: () {},
              ),
            ),
          ],
        ),
        _buildRow(
          label: "Tertiary Color",
          widgets: [
            OneButton(
              viewModel: OneButtonViewModel(
                hierarchy: OneButtonHierarchy.tertiaryColor,
                text: "Button CTA",
                leadingIcon: GeneralIcon.placeholder,
                onTap: () {},
              ),
            ),
          ],
        ),
        _buildRow(
          label: "Link Gray",
          widgets: [
            OneButton(
              viewModel: OneButtonViewModel(
                hierarchy: OneButtonHierarchy.linkGray,
                text: "Button CTA",
                leadingIcon: GeneralIcon.placeholder,
                onTap: () {},
              ),
            ),
          ],
        ),
        _buildRow(
          label: "Link Color",
          widgets: [
            OneButton(
              viewModel: OneButtonViewModel(
                hierarchy: OneButtonHierarchy.linkColor,
                text: "Button CTA",
                leadingIcon: GeneralIcon.placeholder,
                onTap: () {},
              ),
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
        OneButton(
          viewModel: OneButtonViewModel(
            hierarchy: OneButtonHierarchy.primary,
            text: "Full Width Primary",
            leadingIcon: GeneralIcon.placeholder,
            fullWidth: true,
            onTap: () {},
          ),
        ),
        OneButton(
          viewModel: OneButtonViewModel(
            hierarchy: OneButtonHierarchy.secondaryGray,
            text: "Full Width Secondary Gray",
            leadingIcon: GeneralIcon.placeholder,
            fullWidth: true,
            onTap: () {},
          ),
        ),
        OneButton(
          viewModel: OneButtonViewModel(
            hierarchy: OneButtonHierarchy.secondaryColor,
            text: "Full Width Secondary Color",
            leadingIcon: GeneralIcon.placeholder,
            fullWidth: true,
            onTap: () {},
          ),
        ),
        OneButton(
          viewModel: OneButtonViewModel(
            hierarchy: OneButtonHierarchy.tertiaryGray,
            text: "Full Width Tertiary Gray",
            leadingIcon: GeneralIcon.placeholder,
            fullWidth: true,
            onTap: () {},
          ),
        ),
        OneButton(
          viewModel: OneButtonViewModel(
            hierarchy: OneButtonHierarchy.tertiaryColor,
            text: "Full Width Tertiary Color",
            leadingIcon: GeneralIcon.placeholder,
            fullWidth: true,
            onTap: () {},
          ),
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
