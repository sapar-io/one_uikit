import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';
import 'package:one_uikit/one_uikit.dart';

/// Widget previews for OneTextField component
///
/// These previews demonstrate all states and variations

double _sectionSpacing = 24.0;

// ============================================================================
// BASIC VARIATIONS
// ============================================================================

@Preview(name: "Text Field - Basic States")
Widget previewTextFieldBasicStates() {
  return Padding(
    padding: const EdgeInsets.all(24.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: _sectionSpacing,
      children: [
        _buildSection(
          label: "Default",
          child: OneTextField(
            label: "Email",
            hintText: "Enter your email",
            helperText: "We'll never share your email",
          ),
        ),
        _buildSection(
          label: "Required Field",
          child: OneTextField(
            label: "Full Name",
            isRequired: true,
            hintText: "Enter your full name",
          ),
        ),
        _buildSection(
          label: "With Helper Text",
          child: OneTextField(
            label: "Username",
            hintText: "Choose a username",
            helperText: "Must be 3-20 characters",
          ),
        ),
        _buildSection(
          label: "With Error",
          child: OneTextField(
            label: "Email",
            hintText: "Enter your email",
            errorText: "Please enter a valid email address",
          ),
        ),
        _buildSection(
          label: "Disabled",
          child: OneTextField(
            label: "Disabled Field",
            hintText: "This field is disabled",
            enabled: false,
          ),
        ),
      ],
    ),
  );
}

// ============================================================================
// WITH ICONS
// ============================================================================

@Preview(name: "Text Field - With Icons")
Widget previewTextFieldWithIcons() {
  return Padding(
    padding: const EdgeInsets.all(24.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: _sectionSpacing,
      children: [
        _buildSection(
          label: "Prefix Icon",
          child: OneTextField(
            label: "Search",
            hintText: "Search...",
            prefixIcon: Icon(Icons.search, size: 20),
          ),
        ),
        _buildSection(
          label: "Suffix Icon",
          child: OneTextField(
            label: "Password",
            hintText: "Enter password",
            isPassword: true,
            suffixIcon: Icon(Icons.visibility_off, size: 20),
          ),
        ),
        _buildSection(
          label: "Prefix Text",
          child: OneTextField(
            label: "Website",
            hintText: "yoursite",
            prefixText: "https://",
          ),
        ),
      ],
    ),
  );
}

// ============================================================================
// INPUT TYPES
// ============================================================================

@Preview(name: "Text Field - Input Types")
Widget previewTextFieldInputTypes() {
  return Padding(
    padding: const EdgeInsets.all(24.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: _sectionSpacing,
      children: [
        _buildSection(
          label: "Email Input",
          child: OneTextField(
            label: "Email",
            hintText: "name@example.com",
            keyboardType: TextInputType.emailAddress,
          ),
        ),
        _buildSection(
          label: "Number Input",
          child: OneTextField(
            label: "Age",
            hintText: "Enter your age",
            keyboardType: TextInputType.number,
          ),
        ),
        _buildSection(
          label: "Password Input",
          child: OneTextField(
            label: "Password",
            hintText: "Enter password",
            isPassword: true,
          ),
        ),
        _buildSection(
          label: "Multiline Input",
          child: OneTextField(
            label: "Description",
            hintText: "Enter a description",
            isMultiline: true,
          ),
        ),
      ],
    ),
  );
}

// ============================================================================
// SPECIAL STATES
// ============================================================================

@Preview(name: "Text Field - Special States")
Widget previewTextFieldSpecialStates() {
  return Padding(
    padding: const EdgeInsets.all(24.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: _sectionSpacing,
      children: [
        _buildSection(
          label: "Read Only",
          child: OneTextField(
            label: "Read Only Field",
            controller: TextEditingController(text: "This is read-only"),
            readOnly: true,
          ),
        ),
        _buildSection(
          label: "With Capitalization",
          child: OneTextField(
            label: "Name",
            hintText: "Enter name",
            textCapitalization: TextCapitalization.words,
          ),
        ),
        _buildSection(
          label: "Custom Min/Max Lines",
          child: OneTextField(
            label: "Comments",
            hintText: "Enter comments",
            isMultiline: true,
            minLines: 2,
            maxLines: 4,
          ),
        ),
      ],
    ),
  );
}

// ============================================================================
// ALL STATES COMPARISON
// ============================================================================

@Preview(name: "Text Field - All States")
Widget previewTextFieldAllStates() {
  return Padding(
    padding: const EdgeInsets.all(24.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: _sectionSpacing,
      children: [
        _buildSection(
          label: "Normal",
          child: OneTextField(
            label: "Email",
            hintText: "Enter your email",
          ),
        ),
        _buildSection(
          label: "With Value",
          child: OneTextField(
            label: "Email",
            controller: TextEditingController(text: "user@example.com"),
          ),
        ),
        _buildSection(
          label: "Required",
          child: OneTextField(
            label: "Full Name",
            isRequired: true,
            hintText: "Enter your full name",
          ),
        ),
        _buildSection(
          label: "With Helper",
          child: OneTextField(
            label: "Password",
            hintText: "Enter password",
            helperText: "Must be at least 8 characters",
          ),
        ),
        _buildSection(
          label: "With Error",
          child: OneTextField(
            label: "Email",
            hintText: "Enter your email",
            errorText: "Invalid email format",
          ),
        ),
        _buildSection(
          label: "Disabled",
          child: OneTextField(
            label: "Disabled",
            hintText: "Cannot edit",
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
