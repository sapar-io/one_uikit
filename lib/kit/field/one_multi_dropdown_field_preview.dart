import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';
import 'package:multi_dropdown/multiselect_dropdown.dart';
import 'package:one_uikit/one_uikit.dart';

/// Widget previews for OneMultiDropdownField component
///
/// These previews demonstrate all states and variations

double _sectionSpacing = 24.0;

// Sample data for multi-dropdowns
final List<ValueItem<String>> _skills = [
  ValueItem(label: 'Flutter', value: 'flutter'),
  ValueItem(label: 'React', value: 'react'),
  ValueItem(label: 'Angular', value: 'angular'),
  ValueItem(label: 'Vue.js', value: 'vue'),
  ValueItem(label: 'Node.js', value: 'node'),
];

final List<ValueItem<String>> _languages = [
  ValueItem(label: 'English', value: 'en'),
  ValueItem(label: 'Қазақша', value: 'kz'),
  ValueItem(label: 'Русский', value: 'ru'),
  ValueItem(label: 'Spanish', value: 'es'),
];

// ============================================================================
// BASIC VARIATIONS
// ============================================================================

@Preview(name: "Multi Dropdown - Basic States")
Widget previewMultiDropdownBasicStates() {
  return Padding(
    padding: const EdgeInsets.all(24.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: _sectionSpacing,
      children: [
        _buildSection(
          label: "Multi Select",
          child: OneMultiDropdownField(
            label: "Skills",
            isMultiple: true,
            controller: MultiSelectController(),
            values: _skills,
            selectedValues: [],
          ),
        ),
        _buildSection(
          label: "Single Select",
          child: OneMultiDropdownField(
            label: "Primary Language",
            isMultiple: false,
            controller: MultiSelectController(),
            values: _languages,
            selectedValues: [],
          ),
        ),
        _buildSection(
          label: "With Hint",
          child: OneMultiDropdownField(
            label: "Skills",
            hintText: "Select your skills",
            isMultiple: true,
            controller: MultiSelectController(),
            values: _skills,
            selectedValues: [],
          ),
        ),
        _buildSection(
          label: "Required Field",
          child: OneMultiDropdownField(
            label: "Skills",
            isRequired: true,
            hintText: "Select at least one skill",
            isMultiple: true,
            controller: MultiSelectController(),
            values: _skills,
            selectedValues: [],
          ),
        ),
      ],
    ),
  );
}

// ============================================================================
// WITH SELECTED VALUES
// ============================================================================

@Preview(name: "Multi Dropdown - With Selected Values")
Widget previewMultiDropdownWithValues() {
  return Padding(
    padding: const EdgeInsets.all(24.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: _sectionSpacing,
      children: [
        _buildSection(
          label: "Multi Select - 2 Selected",
          child: OneMultiDropdownField(
            label: "Skills",
            isMultiple: true,
            controller: MultiSelectController(),
            values: _skills,
            selectedValues: [
              ValueItem(label: 'Flutter', value: 'flutter'),
              ValueItem(label: 'React', value: 'react'),
            ],
          ),
        ),
        _buildSection(
          label: "Multi Select - 3 Selected",
          child: OneMultiDropdownField(
            label: "Skills",
            isMultiple: true,
            controller: MultiSelectController(),
            values: _skills,
            selectedValues: [
              ValueItem(label: 'Flutter', value: 'flutter'),
              ValueItem(label: 'React', value: 'react'),
              ValueItem(label: 'Node.js', value: 'node'),
            ],
          ),
        ),
        _buildSection(
          label: "Single Select - 1 Selected",
          child: OneMultiDropdownField(
            label: "Primary Language",
            isMultiple: false,
            controller: MultiSelectController(),
            values: _languages,
            selectedValues: [
              ValueItem(label: 'Қазақша', value: 'kz'),
            ],
          ),
        ),
      ],
    ),
  );
}

// ============================================================================
// WITH HELPER AND ERROR TEXTS
// ============================================================================

@Preview(name: "Multi Dropdown - Helper & Error")
Widget previewMultiDropdownHelperError() {
  return Padding(
    padding: const EdgeInsets.all(24.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: _sectionSpacing,
      children: [
        _buildSection(
          label: "With Helper Text",
          child: OneMultiDropdownField(
            label: "Skills",
            hintText: "Select your skills",
            helperText: "You can select multiple skills",
            isMultiple: true,
            controller: MultiSelectController(),
            values: _skills,
            selectedValues: [],
          ),
        ),
        _buildSection(
          label: "With Error",
          child: OneMultiDropdownField(
            label: "Skills",
            hintText: "Select your skills",
            errorText: "Please select at least one skill",
            isMultiple: true,
            controller: MultiSelectController(),
            values: _skills,
            selectedValues: [],
          ),
        ),
      ],
    ),
  );
}

// ============================================================================
// DISABLED STATE
// ============================================================================

@Preview(name: "Multi Dropdown - Disabled")
Widget previewMultiDropdownDisabled() {
  return Padding(
    padding: const EdgeInsets.all(24.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: _sectionSpacing,
      children: [
        _buildSection(
          label: "Disabled Empty",
          child: OneMultiDropdownField(
            label: "Skills",
            hintText: "Select your skills",
            isMultiple: true,
            controller: MultiSelectController(),
            values: _skills,
            selectedValues: [],
            enabled: false,
          ),
        ),
        _buildSection(
          label: "Disabled With Values",
          child: OneMultiDropdownField(
            label: "Skills",
            isMultiple: true,
            controller: MultiSelectController(),
            values: _skills,
            selectedValues: [
              ValueItem(label: 'Flutter', value: 'flutter'),
              ValueItem(label: 'React', value: 'react'),
            ],
            enabled: false,
          ),
        ),
      ],
    ),
  );
}

// ============================================================================
// ALL STATES COMPARISON
// ============================================================================

@Preview(name: "Multi Dropdown - All States")
Widget previewMultiDropdownAllStates() {
  return Padding(
    padding: const EdgeInsets.all(24.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: _sectionSpacing,
      children: [
        _buildSection(
          label: "Normal (Empty)",
          child: OneMultiDropdownField(
            label: "Skills",
            hintText: "Select your skills",
            isMultiple: true,
            controller: MultiSelectController(),
            values: _skills,
            selectedValues: [],
          ),
        ),
        _buildSection(
          label: "Normal (With Values)",
          child: OneMultiDropdownField(
            label: "Skills",
            isMultiple: true,
            controller: MultiSelectController(),
            values: _skills,
            selectedValues: [
              ValueItem(label: 'Flutter', value: 'flutter'),
              ValueItem(label: 'React', value: 'react'),
            ],
          ),
        ),
        _buildSection(
          label: "Required",
          child: OneMultiDropdownField(
            label: "Skills",
            isRequired: true,
            hintText: "Select your skills",
            isMultiple: true,
            controller: MultiSelectController(),
            values: _skills,
            selectedValues: [],
          ),
        ),
        _buildSection(
          label: "With Helper",
          child: OneMultiDropdownField(
            label: "Skills",
            hintText: "Select your skills",
            helperText: "Select multiple skills from the list",
            isMultiple: true,
            controller: MultiSelectController(),
            values: _skills,
            selectedValues: [],
          ),
        ),
        _buildSection(
          label: "With Error",
          child: OneMultiDropdownField(
            label: "Skills",
            hintText: "Select your skills",
            errorText: "At least one skill is required",
            isMultiple: true,
            controller: MultiSelectController(),
            values: _skills,
            selectedValues: [],
          ),
        ),
        _buildSection(
          label: "Disabled",
          child: OneMultiDropdownField(
            label: "Skills",
            isMultiple: true,
            controller: MultiSelectController(),
            values: _skills,
            selectedValues: [
              ValueItem(label: 'Flutter', value: 'flutter'),
            ],
            enabled: false,
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
