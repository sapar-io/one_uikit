import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';
import 'package:one_uikit/kit/tag/one_tag.dart';

/// Widget previews for OneTag component
///
/// These previews demonstrate all tag variations:
/// - Text only
/// - Text with close icon
/// - Text with count badge
/// - Text with checkbox
/// - Text with dot indicator
/// - Text with avatar
/// - Text with image
/// All across 3 sizes (sm, md, lg)

double _spacing = 12.0;

// ============================================================================
// TEXT ONLY TAGS
// ============================================================================

@Preview(name: "Text Only - All Sizes")
Widget previewTextOnlySizes() {
  return Center(
    child: Wrap(
      spacing: _spacing,
      runSpacing: _spacing,
      alignment: WrapAlignment.center,
      children: [
        OneTag(
          viewModel: OneTagViewModel(
            size: OneTagSize.sm,
            type: OneTagType.text,
            text: 'Label',
          ),
        ),
        OneTag(
          viewModel: OneTagViewModel(
            size: OneTagSize.md,
            type: OneTagType.text,
            text: 'Label',
          ),
        ),
        OneTag(
          viewModel: OneTagViewModel(
            size: OneTagSize.lg,
            type: OneTagType.text,
            text: 'Label',
          ),
        ),
      ],
    ),
  );
}

@Preview(name: "Text Only - Clickable vs Non-clickable")
Widget previewTextOnlyStates() {
  return Center(
    child: Column(
      spacing: _spacing,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        OneTag(
          viewModel: OneTagViewModel(
            size: OneTagSize.md,
            type: OneTagType.text,
            text: 'Non-clickable',
          ),
        ),
        OneTag(
          viewModel: OneTagViewModel(
            size: OneTagSize.md,
            type: OneTagType.text,
            text: 'Clickable (hover me)',
            onTap: () {},
          ),
        ),
      ],
    ),
  );
}

// ============================================================================
// TEXT WITH CLOSE ICON
// ============================================================================

@Preview(name: "Text with Close Icon")
Widget previewTextWithCloseIcon() {
  return Center(
    child: Wrap(
      spacing: _spacing,
      runSpacing: _spacing,
      alignment: WrapAlignment.center,
      children:
          OneTagSize.values
              .map(
                (size) => OneTag(
                  viewModel: OneTagViewModel(
                    size: size,
                    type: OneTagType.textWithCloseIcon,
                    text: 'Label',
                    trailingWidget: _buildCloseIcon(size),
                    onTap: () {},
                  ),
                ),
              )
              .toList(),
    ),
  );
}

// ============================================================================
// TEXT WITH COUNT BADGE
// ============================================================================

@Preview(name: "Text with Count Badge")
Widget previewTextWithCountBadge() {
  return Center(
    child: Wrap(
      spacing: _spacing,
      runSpacing: _spacing,
      alignment: WrapAlignment.center,
      children:
          OneTagSize.values
              .map(
                (size) => OneTag(
                  viewModel: OneTagViewModel(
                    size: size,
                    type: OneTagType.textWithCountBadge,
                    text: 'Label',
                    trailingWidget: _buildCountBadge(size),
                  ),
                ),
              )
              .toList(),
    ),
  );
}

// ============================================================================
// TEXT WITH CHECKBOX
// ============================================================================

@Preview(name: "Text with Checkbox")
Widget previewTextWithCheckbox() {
  return Center(
    child: Wrap(
      spacing: _spacing,
      runSpacing: _spacing,
      alignment: WrapAlignment.center,
      children:
          OneTagSize.values
              .map(
                (size) => OneTag(
                  viewModel: OneTagViewModel(
                    size: size,
                    type: OneTagType.text,
                    text: 'Label',
                    leadingWidget: _buildCheckbox(size, false),
                  ),
                ),
              )
              .toList(),
    ),
  );
}

@Preview(name: "Text with Checkbox - Checked")
Widget previewTextWithCheckboxChecked() {
  return Center(
    child: Wrap(
      spacing: _spacing,
      runSpacing: _spacing,
      alignment: WrapAlignment.center,
      children:
          OneTagSize.values
              .map(
                (size) => OneTag(
                  viewModel: OneTagViewModel(
                    size: size,
                    type: OneTagType.text,
                    text: 'Label',
                    leadingWidget: _buildCheckbox(size, true),
                  ),
                ),
              )
              .toList(),
    ),
  );
}

// ============================================================================
// TEXT WITH CHECKBOX AND CLOSE ICON
// ============================================================================

@Preview(name: "Checkbox + Text + Close")
Widget previewCheckboxTextClose() {
  return Center(
    child: Wrap(
      spacing: _spacing,
      runSpacing: _spacing,
      alignment: WrapAlignment.center,
      children:
          OneTagSize.values
              .map(
                (size) => OneTag(
                  viewModel: OneTagViewModel(
                    size: size,
                    type: OneTagType.textWithCloseIcon,
                    text: 'Label',
                    leadingWidget: _buildCheckbox(size, false),
                    trailingWidget: _buildCloseIcon(size),
                    onTap: () {},
                  ),
                ),
              )
              .toList(),
    ),
  );
}

// ============================================================================
// TEXT WITH CHECKBOX AND COUNT BADGE
// ============================================================================

@Preview(name: "Checkbox + Text + Count")
Widget previewCheckboxTextCount() {
  return Center(
    child: Wrap(
      spacing: _spacing,
      runSpacing: _spacing,
      alignment: WrapAlignment.center,
      children:
          OneTagSize.values
              .map(
                (size) => OneTag(
                  viewModel: OneTagViewModel(
                    size: size,
                    type: OneTagType.textWithCountBadge,
                    text: 'Label',
                    leadingWidget: _buildCheckbox(size, false),
                    trailingWidget: _buildCountBadge(size),
                  ),
                ),
              )
              .toList(),
    ),
  );
}

// ============================================================================
// TEXT WITH DOT INDICATOR
// ============================================================================

@Preview(name: "Text with Dot")
Widget previewTextWithDot() {
  return Center(
    child: Wrap(
      spacing: _spacing,
      runSpacing: _spacing,
      alignment: WrapAlignment.center,
      children:
          OneTagSize.values
              .map(
                (size) => OneTag(
                  viewModel: OneTagViewModel(
                    size: size,
                    type: OneTagType.textWithDot,
                    text: 'Label',
                    leadingWidget: _buildDot(),
                  ),
                ),
              )
              .toList(),
    ),
  );
}

@Preview(name: "Dot + Text + Close")
Widget previewDotTextClose() {
  return Center(
    child: Wrap(
      spacing: _spacing,
      runSpacing: _spacing,
      alignment: WrapAlignment.center,
      children:
          OneTagSize.values
              .map(
                (size) => OneTag(
                  viewModel: OneTagViewModel(
                    size: size,
                    type: OneTagType.textWithDotAndCloseIcon,
                    text: 'Label',
                    leadingWidget: _buildDot(),
                    trailingWidget: _buildCloseIcon(size),
                    onTap: () {},
                  ),
                ),
              )
              .toList(),
    ),
  );
}

@Preview(name: "Checkbox + Dot + Text")
Widget previewCheckboxDotText() {
  return Center(
    child: Wrap(
      spacing: _spacing,
      runSpacing: _spacing,
      alignment: WrapAlignment.center,
      children:
          OneTagSize.values
              .map(
                (size) => OneTag(
                  viewModel: OneTagViewModel(
                    size: size,
                    type: OneTagType.textWithDotAndCheckbox,
                    text: 'Label',
                    leadingWidget: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        _buildCheckbox(size, false),
                        const SizedBox(width: 4),
                        _buildDot(),
                      ],
                    ),
                  ),
                ),
              )
              .toList(),
    ),
  );
}

@Preview(name: "Checkbox + Dot + Text + Close")
Widget previewCheckboxDotTextClose() {
  return Center(
    child: Wrap(
      spacing: _spacing,
      runSpacing: _spacing,
      alignment: WrapAlignment.center,
      children:
          OneTagSize.values
              .map(
                (size) => OneTag(
                  viewModel: OneTagViewModel(
                    size: size,
                    type: OneTagType.textWithDotAndCloseIcon,
                    text: 'Label',
                    leadingWidget: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        _buildCheckbox(size, false),
                        const SizedBox(width: 4),
                        _buildDot(),
                      ],
                    ),
                    trailingWidget: _buildCloseIcon(size),
                    onTap: () {},
                  ),
                ),
              )
              .toList(),
    ),
  );
}

// ============================================================================
// TEXT WITH AVATAR
// ============================================================================

@Preview(name: "Avatar + Text")
Widget previewAvatarText() {
  return Center(
    child: Wrap(
      spacing: _spacing,
      runSpacing: _spacing,
      alignment: WrapAlignment.center,
      children:
          OneTagSize.values
              .map(
                (size) => OneTag(
                  viewModel: OneTagViewModel(
                    size: size,
                    type: OneTagType.textWithAvatar,
                    text: 'Label',
                    leadingWidget: _buildAvatar(size),
                  ),
                ),
              )
              .toList(),
    ),
  );
}

@Preview(name: "Checkbox + Avatar + Text")
Widget previewCheckboxAvatarText() {
  return Center(
    child: Wrap(
      spacing: _spacing,
      runSpacing: _spacing,
      alignment: WrapAlignment.center,
      children:
          OneTagSize.values
              .map(
                (size) => OneTag(
                  viewModel: OneTagViewModel(
                    size: size,
                    type: OneTagType.textWithAvatarAndCheckbox,
                    text: 'Label',
                    leadingWidget: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        _buildCheckbox(size, false),
                        const SizedBox(width: 4),
                        _buildAvatar(size),
                      ],
                    ),
                  ),
                ),
              )
              .toList(),
    ),
  );
}

@Preview(name: "Avatar + Text + Close")
Widget previewAvatarTextClose() {
  return Center(
    child: Wrap(
      spacing: _spacing,
      runSpacing: _spacing,
      alignment: WrapAlignment.center,
      children:
          OneTagSize.values
              .map(
                (size) => OneTag(
                  viewModel: OneTagViewModel(
                    size: size,
                    type: OneTagType.textWithAvatarAndCloseIcon,
                    text: 'Label',
                    leadingWidget: _buildAvatar(size),
                    trailingWidget: _buildCloseIcon(size),
                    onTap: () {},
                  ),
                ),
              )
              .toList(),
    ),
  );
}

@Preview(name: "Checkbox + Avatar + Text + Count")
Widget previewCheckboxAvatarTextCount() {
  return Center(
    child: Wrap(
      spacing: _spacing,
      runSpacing: _spacing,
      alignment: WrapAlignment.center,
      children:
          OneTagSize.values
              .map(
                (size) => OneTag(
                  viewModel: OneTagViewModel(
                    size: size,
                    type: OneTagType.textWithAvatarAndCountBadgeAndCloseIcon,
                    text: 'Label',
                    leadingWidget: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        _buildCheckbox(size, false),
                        const SizedBox(width: 4),
                        _buildAvatar(size),
                      ],
                    ),
                    trailingWidget: _buildCountBadge(size),
                  ),
                ),
              )
              .toList(),
    ),
  );
}

// ============================================================================
// TEXT WITH IMAGE/FLAG
// ============================================================================

@Preview(name: "Image + Text")
Widget previewImageText() {
  return Center(
    child: Wrap(
      spacing: _spacing,
      runSpacing: _spacing,
      alignment: WrapAlignment.center,
      children:
          OneTagSize.values
              .map(
                (size) => OneTag(
                  viewModel: OneTagViewModel(
                    size: size,
                    type: OneTagType.textWithImage,
                    text: 'Label',
                    leadingWidget: _buildImage(size),
                  ),
                ),
              )
              .toList(),
    ),
  );
}

@Preview(name: "Checkbox + Image + Text")
Widget previewCheckboxImageText() {
  return Center(
    child: Wrap(
      spacing: _spacing,
      runSpacing: _spacing,
      alignment: WrapAlignment.center,
      children:
          OneTagSize.values
              .map(
                (size) => OneTag(
                  viewModel: OneTagViewModel(
                    size: size,
                    type: OneTagType.textWithImageAndCheckbox,
                    text: 'Label',
                    leadingWidget: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        _buildCheckbox(size, false),
                        const SizedBox(width: 4),
                        _buildImage(size),
                      ],
                    ),
                  ),
                ),
              )
              .toList(),
    ),
  );
}

@Preview(name: "Image + Text + Close")
Widget previewImageTextClose() {
  return Center(
    child: Wrap(
      spacing: _spacing,
      runSpacing: _spacing,
      alignment: WrapAlignment.center,
      children:
          OneTagSize.values
              .map(
                (size) => OneTag(
                  viewModel: OneTagViewModel(
                    size: size,
                    type: OneTagType.textWithImageAndCloseIcon,
                    text: 'Label',
                    leadingWidget: _buildImage(size),
                    trailingWidget: _buildCloseIcon(size),
                    onTap: () {},
                  ),
                ),
              )
              .toList(),
    ),
  );
}

@Preview(name: "Checkbox + Image + Text + Count")
Widget previewCheckboxImageTextCount() {
  return Center(
    child: Wrap(
      spacing: _spacing,
      runSpacing: _spacing,
      alignment: WrapAlignment.center,
      children:
          OneTagSize.values
              .map(
                (size) => OneTag(
                  viewModel: OneTagViewModel(
                    size: size,
                    type: OneTagType.textWithImageAndCountBadgeAndCloseIcon,
                    text: 'Label',
                    leadingWidget: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        _buildCheckbox(size, false),
                        const SizedBox(width: 4),
                        _buildImage(size),
                      ],
                    ),
                    trailingWidget: _buildCountBadge(size),
                  ),
                ),
              )
              .toList(),
    ),
  );
}

// ============================================================================
// HELPER WIDGETS
// ============================================================================

Widget _buildCloseIcon(OneTagSize size) {
  final iconSize =
      size == OneTagSize.sm
          ? 10.0
          : size == OneTagSize.md
          ? 12.0
          : 14.0;

  return Container(
    width: iconSize,
    height: iconSize,
    decoration: BoxDecoration(color: Colors.grey[400], shape: BoxShape.circle),
  );
}

Widget _buildCountBadge(OneTagSize size) {
  final padding =
      size == OneTagSize.sm
          ? const EdgeInsets.symmetric(horizontal: 4, vertical: 0)
          : size == OneTagSize.md
          ? const EdgeInsets.symmetric(horizontal: 5, vertical: 0)
          : const EdgeInsets.symmetric(horizontal: 6, vertical: 0);

  return Container(
    padding: padding,
    decoration: BoxDecoration(
      color: Colors.grey[200],
      borderRadius: BorderRadius.circular(3),
    ),
    child: Text(
      '5',
      style: TextStyle(
        fontSize: size == OneTagSize.lg ? 14 : 12,
        fontWeight: FontWeight.w500,
        color: Colors.grey[700],
      ),
    ),
  );
}

Widget _buildCheckbox(OneTagSize size, bool checked) {
  final checkboxSize =
      size == OneTagSize.sm
          ? 14.0
          : size == OneTagSize.md
          ? 16.0
          : 16.0;

  return Container(
    width: checkboxSize,
    height: checkboxSize,
    decoration: BoxDecoration(
      color: checked ? const Color(0xFF7F56D9) : Colors.white,
      border: Border.all(
        color: checked ? const Color(0xFF7F56D9) : Colors.grey[300]!,
        width: 1,
      ),
      borderRadius: BorderRadius.circular(4),
    ),
    child:
        checked ? const Icon(Icons.check, size: 10, color: Colors.white) : null,
  );
}

Widget _buildDot() {
  return Container(
    width: 8,
    height: 8,
    decoration: BoxDecoration(color: Colors.green, shape: BoxShape.circle),
  );
}

Widget _buildAvatar(OneTagSize size) {
  final avatarSize = size == OneTagSize.sm ? 16.0 : 16.0;

  return Container(
    width: avatarSize,
    height: avatarSize,
    decoration: BoxDecoration(
      color: Colors.blue[200],
      shape: BoxShape.circle,
      border: Border.all(color: Colors.white.withOpacity(0.1), width: 0.33),
    ),
  );
}

Widget _buildImage(OneTagSize size) {
  final imageSize = size == OneTagSize.sm ? 16.0 : 16.0;

  return Container(
    width: imageSize,
    height: imageSize,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(2),
      gradient: const LinearGradient(
        colors: [Colors.blue, Colors.red, Colors.yellow],
      ),
    ),
  );
}

// ============================================================================
// COMPREHENSIVE PREVIEW - ALL VARIATIONS
// ============================================================================

@Preview(name: "All Tag Variations")
Widget previewAllVariations() {
  return SingleChildScrollView(
    child: Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 24,
        children: [
          _buildSection('Text Only', [
            OneTag(
              viewModel: OneTagViewModel(
                size: OneTagSize.sm,
                type: OneTagType.text,
                text: 'Label',
              ),
            ),
            OneTag(
              viewModel: OneTagViewModel(
                size: OneTagSize.md,
                type: OneTagType.text,
                text: 'Label',
              ),
            ),
            OneTag(
              viewModel: OneTagViewModel(
                size: OneTagSize.lg,
                type: OneTagType.text,
                text: 'Label',
              ),
            ),
          ]),
          _buildSection('With Close Icon', [
            OneTag(
              viewModel: OneTagViewModel(
                size: OneTagSize.sm,
                type: OneTagType.textWithCloseIcon,
                text: 'Label',
                trailingWidget: _buildCloseIcon(OneTagSize.sm),
                onTap: () {},
              ),
            ),
            OneTag(
              viewModel: OneTagViewModel(
                size: OneTagSize.md,
                type: OneTagType.textWithCloseIcon,
                text: 'Label',
                trailingWidget: _buildCloseIcon(OneTagSize.md),
                onTap: () {},
              ),
            ),
            OneTag(
              viewModel: OneTagViewModel(
                size: OneTagSize.lg,
                type: OneTagType.textWithCloseIcon,
                text: 'Label',
                trailingWidget: _buildCloseIcon(OneTagSize.lg),
                onTap: () {},
              ),
            ),
          ]),
          _buildSection('With Count Badge', [
            OneTag(
              viewModel: OneTagViewModel(
                size: OneTagSize.sm,
                type: OneTagType.textWithCountBadge,
                text: 'Label',
                trailingWidget: _buildCountBadge(OneTagSize.sm),
              ),
            ),
            OneTag(
              viewModel: OneTagViewModel(
                size: OneTagSize.md,
                type: OneTagType.textWithCountBadge,
                text: 'Label',
                trailingWidget: _buildCountBadge(OneTagSize.md),
              ),
            ),
            OneTag(
              viewModel: OneTagViewModel(
                size: OneTagSize.lg,
                type: OneTagType.textWithCountBadge,
                text: 'Label',
                trailingWidget: _buildCountBadge(OneTagSize.lg),
              ),
            ),
          ]),
          _buildSection('With Dot', [
            OneTag(
              viewModel: OneTagViewModel(
                size: OneTagSize.sm,
                type: OneTagType.textWithDot,
                text: 'Label',
                leadingWidget: _buildDot(),
              ),
            ),
            OneTag(
              viewModel: OneTagViewModel(
                size: OneTagSize.md,
                type: OneTagType.textWithDot,
                text: 'Label',
                leadingWidget: _buildDot(),
              ),
            ),
            OneTag(
              viewModel: OneTagViewModel(
                size: OneTagSize.lg,
                type: OneTagType.textWithDot,
                text: 'Label',
                leadingWidget: _buildDot(),
              ),
            ),
          ]),
          _buildSection('With Avatar', [
            OneTag(
              viewModel: OneTagViewModel(
                size: OneTagSize.sm,
                type: OneTagType.textWithAvatar,
                text: 'Label',
                leadingWidget: _buildAvatar(OneTagSize.sm),
              ),
            ),
            OneTag(
              viewModel: OneTagViewModel(
                size: OneTagSize.md,
                type: OneTagType.textWithAvatar,
                text: 'Label',
                leadingWidget: _buildAvatar(OneTagSize.md),
              ),
            ),
            OneTag(
              viewModel: OneTagViewModel(
                size: OneTagSize.lg,
                type: OneTagType.textWithAvatar,
                text: 'Label',
                leadingWidget: _buildAvatar(OneTagSize.lg),
              ),
            ),
          ]),
        ],
      ),
    ),
  );
}

Widget _buildSection(String title, List<Widget> tags) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    spacing: 8,
    children: [
      Text(
        title,
        style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: Colors.black87,
        ),
      ),
      Wrap(spacing: 12, runSpacing: 12, children: tags),
    ],
  );
}
