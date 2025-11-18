import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';
import 'package:one_uikit/one_uikit.dart';

/// Widget previews for OneDropdownField component
///
/// These previews demonstrate all states and variations

double _sectionSpacing = 24.0;

// Sample data for dropdowns
final List<DropdownMenuItem<String>> _countries = [
  DropdownMenuItem(value: 'us', child: Text('United States')),
  DropdownMenuItem(value: 'kz', child: Text('Kazakhstan')),
  DropdownMenuItem(value: 'ru', child: Text('Russia')),
  DropdownMenuItem(value: 'uk', child: Text('United Kingdom')),
];

final List<DropdownMenuItem<int>> _numbers = [
  DropdownMenuItem(value: 1, child: Text('Option 1')),
  DropdownMenuItem(value: 2, child: Text('Option 2')),
  DropdownMenuItem(value: 3, child: Text('Option 3')),
];

// ============================================================================
// BASIC VARIATIONS
// ============================================================================

@Preview(name: "Dropdown - Basic States")
Widget previewDropdownBasicStates() {
  return Padding(
    padding: const EdgeInsets.all(24.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: _sectionSpacing,
      children: [
        _buildSection(
          label: "Default",
          child: OneDropdownField<String>(
            label: "Country",
            items: _countries,
            onChanged: (value) {},
          ),
        ),
        _buildSection(
          label: "With Hint",
          child: OneDropdownField<String>(
            label: "Country",
            hintText: "Select a country",
            items: _countries,
            onChanged: (value) {},
          ),
        ),
        _buildSection(
          label: "Required Field",
          child: OneDropdownField<String>(
            label: "Country",
            isRequired: true,
            hintText: "Select a country",
            items: _countries,
            onChanged: (value) {},
          ),
        ),
        _buildSection(
          label: "With Helper Text",
          child: OneDropdownField<String>(
            label: "Country",
            hintText: "Select a country",
            helperText: "Choose your country of residence",
            items: _countries,
            onChanged: (value) {},
          ),
        ),
        _buildSection(
          label: "With Error",
          child: OneDropdownField<String>(
            label: "Country",
            hintText: "Select a country",
            errorText: "Please select a country",
            items: _countries,
            onChanged: (value) {},
          ),
        ),
      ],
    ),
  );
}

// ============================================================================
// WITH SELECTED VALUES
// ============================================================================

@Preview(name: "Dropdown - With Selected Values")
Widget previewDropdownWithValues() {
  return Padding(
    padding: const EdgeInsets.all(24.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: _sectionSpacing,
      children: [
        _buildSection(
          label: "Selected Value",
          child: OneDropdownField<String>(
            label: "Country",
            value: 'kz',
            items: _countries,
            onChanged: (value) {},
          ),
        ),
        _buildSection(
          label: "Number Selection",
          child: OneDropdownField<int>(
            label: "Priority",
            value: 2,
            items: _numbers,
            onChanged: (value) {},
          ),
        ),
      ],
    ),
  );
}

// ============================================================================
// DISABLED STATE
// ============================================================================

@Preview(name: "Dropdown - Disabled")
Widget previewDropdownDisabled() {
  return Padding(
    padding: const EdgeInsets.all(24.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: _sectionSpacing,
      children: [
        _buildSection(
          label: "Disabled Empty",
          child: OneDropdownField<String>(
            label: "Country",
            hintText: "Select a country",
            items: _countries,
            enabled: false,
            onChanged: (value) {},
          ),
        ),
        _buildSection(
          label: "Disabled With Value",
          child: OneDropdownField<String>(
            label: "Country",
            value: 'kz',
            items: _countries,
            enabled: false,
            onChanged: (value) {},
          ),
        ),
      ],
    ),
  );
}

// ============================================================================
// ALL STATES COMPARISON
// ============================================================================

@Preview(name: "Dropdown - All States")
Widget previewDropdownAllStates() {
  return Padding(
    padding: const EdgeInsets.all(24.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: _sectionSpacing,
      children: [
        _buildSection(
          label: "Normal (Empty)",
          child: OneDropdownField<String>(
            label: "Country",
            hintText: "Select a country",
            items: _countries,
            onChanged: (value) {},
          ),
        ),
        _buildSection(
          label: "Normal (Selected)",
          child: OneDropdownField<String>(
            label: "Country",
            value: 'kz',
            items: _countries,
            onChanged: (value) {},
          ),
        ),
        _buildSection(
          label: "Required",
          child: OneDropdownField<String>(
            label: "Country",
            isRequired: true,
            hintText: "Select a country",
            items: _countries,
            onChanged: (value) {},
          ),
        ),
        _buildSection(
          label: "With Helper",
          child: OneDropdownField<String>(
            label: "Country",
            hintText: "Select a country",
            helperText: "This is a helper text",
            items: _countries,
            onChanged: (value) {},
          ),
        ),
        _buildSection(
          label: "With Error",
          child: OneDropdownField<String>(
            label: "Country",
            hintText: "Select a country",
            errorText: "This field is required",
            items: _countries,
            onChanged: (value) {},
          ),
        ),
        _buildSection(
          label: "Disabled",
          child: OneDropdownField<String>(
            label: "Country",
            value: 'kz',
            items: _countries,
            enabled: false,
            onChanged: (value) {},
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
