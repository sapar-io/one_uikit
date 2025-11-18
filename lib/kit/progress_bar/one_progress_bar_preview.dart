import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';
import 'package:one_uikit/kit/progress_bar/one_progress_bar.dart';

/// Widget previews for OneProgressBar component
///
/// These previews demonstrate all label types with different progress values
/// Based on Untitled UI Figma Kit specifications

const double _width = 320.0;
const double _spacing = 16.0;

// ============================================================================
// NO LABEL PREVIEWS
// ============================================================================

@Preview(name: "No Label")
Widget previewNoLabel() {
  return Center(
    child: Column(
      spacing: _spacing,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        OneProgressBar(progress: 0.0, width: _width),
        OneProgressBar(progress: 0.1, width: _width),
        OneProgressBar(progress: 0.2, width: _width),
        OneProgressBar(progress: 0.3, width: _width),
        OneProgressBar(progress: 0.4, width: _width),
        OneProgressBar(progress: 0.5, width: _width),
        OneProgressBar(progress: 0.6, width: _width),
        OneProgressBar(progress: 0.7, width: _width),
        OneProgressBar(progress: 0.8, width: _width),
        OneProgressBar(progress: 0.9, width: _width),
        OneProgressBar(progress: 1.0, width: _width),
      ],
    ),
  );
}

// ============================================================================
// RIGHT LABEL PREVIEWS
// ============================================================================

@Preview(name: "Right Label")
Widget previewRightLabel() {
  return Center(
    child: Column(
      spacing: _spacing,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        OneProgressBar(
          progress: 0.0,
          labelType: ProgressBarLabelType.right,
          width: _width,
        ),
        OneProgressBar(
          progress: 0.1,
          labelType: ProgressBarLabelType.right,
          width: _width,
        ),
        OneProgressBar(
          progress: 0.2,
          labelType: ProgressBarLabelType.right,
          width: _width,
        ),
        OneProgressBar(
          progress: 0.3,
          labelType: ProgressBarLabelType.right,
          width: _width,
        ),
        OneProgressBar(
          progress: 0.4,
          labelType: ProgressBarLabelType.right,
          width: _width,
        ),
        OneProgressBar(
          progress: 0.5,
          labelType: ProgressBarLabelType.right,
          width: _width,
        ),
        OneProgressBar(
          progress: 0.6,
          labelType: ProgressBarLabelType.right,
          width: _width,
        ),
        OneProgressBar(
          progress: 0.7,
          labelType: ProgressBarLabelType.right,
          width: _width,
        ),
        OneProgressBar(
          progress: 0.8,
          labelType: ProgressBarLabelType.right,
          width: _width,
        ),
        OneProgressBar(
          progress: 0.9,
          labelType: ProgressBarLabelType.right,
          width: _width,
        ),
        OneProgressBar(
          progress: 1.0,
          labelType: ProgressBarLabelType.right,
          width: _width,
        ),
      ],
    ),
  );
}

// ============================================================================
// BOTTOM LABEL PREVIEWS
// ============================================================================

@Preview(name: "Bottom Label")
Widget previewBottomLabel() {
  return Center(
    child: Column(
      spacing: _spacing,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        OneProgressBar(
          progress: 0.0,
          labelType: ProgressBarLabelType.bottom,
          width: _width,
        ),
        OneProgressBar(
          progress: 0.1,
          labelType: ProgressBarLabelType.bottom,
          width: _width,
        ),
        OneProgressBar(
          progress: 0.2,
          labelType: ProgressBarLabelType.bottom,
          width: _width,
        ),
        OneProgressBar(
          progress: 0.3,
          labelType: ProgressBarLabelType.bottom,
          width: _width,
        ),
        OneProgressBar(
          progress: 0.4,
          labelType: ProgressBarLabelType.bottom,
          width: _width,
        ),
        OneProgressBar(
          progress: 0.5,
          labelType: ProgressBarLabelType.bottom,
          width: _width,
        ),
        OneProgressBar(
          progress: 0.6,
          labelType: ProgressBarLabelType.bottom,
          width: _width,
        ),
        OneProgressBar(
          progress: 0.7,
          labelType: ProgressBarLabelType.bottom,
          width: _width,
        ),
        OneProgressBar(
          progress: 0.8,
          labelType: ProgressBarLabelType.bottom,
          width: _width,
        ),
        OneProgressBar(
          progress: 0.9,
          labelType: ProgressBarLabelType.bottom,
          width: _width,
        ),
        OneProgressBar(
          progress: 1.0,
          labelType: ProgressBarLabelType.bottom,
          width: _width,
        ),
      ],
    ),
  );
}

// ============================================================================
// TOP FLOATING LABEL PREVIEWS
// ============================================================================

@Preview(name: "Top Floating Label")
Widget previewTopFloatingLabel() {
  return Center(
    child: Column(
      spacing: _spacing,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(height: 40), // Space for floating labels
        OneProgressBar(
          progress: 0.0,
          labelType: ProgressBarLabelType.topFloating,
          width: _width,
        ),
        OneProgressBar(
          progress: 0.1,
          labelType: ProgressBarLabelType.topFloating,
          width: _width,
        ),
        OneProgressBar(
          progress: 0.2,
          labelType: ProgressBarLabelType.topFloating,
          width: _width,
        ),
        OneProgressBar(
          progress: 0.3,
          labelType: ProgressBarLabelType.topFloating,
          width: _width,
        ),
        OneProgressBar(
          progress: 0.4,
          labelType: ProgressBarLabelType.topFloating,
          width: _width,
        ),
        OneProgressBar(
          progress: 0.5,
          labelType: ProgressBarLabelType.topFloating,
          width: _width,
        ),
        OneProgressBar(
          progress: 0.6,
          labelType: ProgressBarLabelType.topFloating,
          width: _width,
        ),
        OneProgressBar(
          progress: 0.7,
          labelType: ProgressBarLabelType.topFloating,
          width: _width,
        ),
        OneProgressBar(
          progress: 0.8,
          labelType: ProgressBarLabelType.topFloating,
          width: _width,
        ),
        OneProgressBar(
          progress: 0.9,
          labelType: ProgressBarLabelType.topFloating,
          width: _width,
        ),
        OneProgressBar(
          progress: 1.0,
          labelType: ProgressBarLabelType.topFloating,
          width: _width,
        ),
      ],
    ),
  );
}

// ============================================================================
// BOTTOM FLOATING LABEL PREVIEWS
// ============================================================================

@Preview(name: "Bottom Floating Label")
Widget previewBottomFloatingLabel() {
  return Center(
    child: Column(
      spacing: _spacing,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        OneProgressBar(
          progress: 0.0,
          labelType: ProgressBarLabelType.bottomFloating,
          width: _width,
        ),
        OneProgressBar(
          progress: 0.1,
          labelType: ProgressBarLabelType.bottomFloating,
          width: _width,
        ),
        OneProgressBar(
          progress: 0.2,
          labelType: ProgressBarLabelType.bottomFloating,
          width: _width,
        ),
        OneProgressBar(
          progress: 0.3,
          labelType: ProgressBarLabelType.bottomFloating,
          width: _width,
        ),
        OneProgressBar(
          progress: 0.4,
          labelType: ProgressBarLabelType.bottomFloating,
          width: _width,
        ),
        OneProgressBar(
          progress: 0.5,
          labelType: ProgressBarLabelType.bottomFloating,
          width: _width,
        ),
        OneProgressBar(
          progress: 0.6,
          labelType: ProgressBarLabelType.bottomFloating,
          width: _width,
        ),
        OneProgressBar(
          progress: 0.7,
          labelType: ProgressBarLabelType.bottomFloating,
          width: _width,
        ),
        OneProgressBar(
          progress: 0.8,
          labelType: ProgressBarLabelType.bottomFloating,
          width: _width,
        ),
        OneProgressBar(
          progress: 0.9,
          labelType: ProgressBarLabelType.bottomFloating,
          width: _width,
        ),
        OneProgressBar(
          progress: 1.0,
          labelType: ProgressBarLabelType.bottomFloating,
          width: _width,
        ),
        const SizedBox(height: 40), // Space for floating labels
      ],
    ),
  );
}

// ============================================================================
// COMPARISON PREVIEWS
// ============================================================================

@Preview(name: "All Label Types")
Widget previewAllLabelTypes() {
  return Center(
    child: Column(
      spacing: 24,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          spacing: 8,
          children: [
            const Text('No Label', style: TextStyle(fontWeight: FontWeight.bold)),
            OneProgressBar(progress: 0.5, width: _width),
          ],
        ),
        Column(
          spacing: 8,
          children: [
            const Text('Right Label', style: TextStyle(fontWeight: FontWeight.bold)),
            OneProgressBar(
              progress: 0.5,
              labelType: ProgressBarLabelType.right,
              width: _width,
            ),
          ],
        ),
        Column(
          spacing: 8,
          children: [
            const Text('Bottom Label', style: TextStyle(fontWeight: FontWeight.bold)),
            OneProgressBar(
              progress: 0.5,
              labelType: ProgressBarLabelType.bottom,
              width: _width,
            ),
          ],
        ),
        Column(
          spacing: 8,
          children: [
            const Text('Top Floating', style: TextStyle(fontWeight: FontWeight.bold)),
            OneProgressBar(
              progress: 0.5,
              labelType: ProgressBarLabelType.topFloating,
              width: _width,
            ),
          ],
        ),
        Column(
          spacing: 8,
          children: [
            const Text('Bottom Floating', style: TextStyle(fontWeight: FontWeight.bold)),
            OneProgressBar(
              progress: 0.5,
              labelType: ProgressBarLabelType.bottomFloating,
              width: _width,
            ),
          ],
        ),
      ],
    ),
  );
}

// ============================================================================
// PROGRESS STAGES PREVIEW
// ============================================================================

@Preview(name: "Progress Stages")
Widget previewProgressStages() {
  return Center(
    child: Column(
      spacing: 16,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          spacing: 8,
          children: [
            const Text('0%', style: TextStyle(fontWeight: FontWeight.bold)),
            OneProgressBar(
              progress: 0.0,
              labelType: ProgressBarLabelType.right,
              width: _width,
            ),
          ],
        ),
        Column(
          spacing: 8,
          children: [
            const Text('25%', style: TextStyle(fontWeight: FontWeight.bold)),
            OneProgressBar(
              progress: 0.25,
              labelType: ProgressBarLabelType.right,
              width: _width,
            ),
          ],
        ),
        Column(
          spacing: 8,
          children: [
            const Text('50%', style: TextStyle(fontWeight: FontWeight.bold)),
            OneProgressBar(
              progress: 0.5,
              labelType: ProgressBarLabelType.right,
              width: _width,
            ),
          ],
        ),
        Column(
          spacing: 8,
          children: [
            const Text('75%', style: TextStyle(fontWeight: FontWeight.bold)),
            OneProgressBar(
              progress: 0.75,
              labelType: ProgressBarLabelType.right,
              width: _width,
            ),
          ],
        ),
        Column(
          spacing: 8,
          children: [
            const Text('100%', style: TextStyle(fontWeight: FontWeight.bold)),
            OneProgressBar(
              progress: 1.0,
              labelType: ProgressBarLabelType.right,
              width: _width,
            ),
          ],
        ),
      ],
    ),
  );
}
