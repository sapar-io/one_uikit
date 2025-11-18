import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';
import 'package:one_uikit/one_uikit.dart';
import 'package:phone_form_field/phone_form_field.dart';

/// Widget previews for OnePhoneField component
///
/// These previews demonstrate all states and variations

double _sectionSpacing = 24.0;

// ============================================================================
// BASIC VARIATIONS
// ============================================================================

@Preview(name: "Phone Field - Basic States")
Widget previewPhoneFieldBasicStates() {
  return Padding(
    padding: const EdgeInsets.all(24.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: _sectionSpacing,
      children: [
        _buildSection(
          label: "Default",
          child: OnePhoneField(
            label: "Phone Number",
            controller: PhoneController(),
          ),
        ),
        _buildSection(
          label: "With Custom Hint",
          child: OnePhoneField(
            label: "Mobile Phone",
            hintText: "+7 (777) 123-45-67",
            controller: PhoneController(),
          ),
        ),
        _buildSection(
          label: "Required Field",
          child: OnePhoneField(
            label: "Phone Number",
            isRequired: true,
            controller: PhoneController(),
          ),
        ),
        _buildSection(
          label: "With Helper Text",
          child: OnePhoneField(
            label: "Phone Number",
            helperText: "We'll send a verification code to this number",
            controller: PhoneController(),
          ),
        ),
      ],
    ),
  );
}

// ============================================================================
// WITH VALUES
// ============================================================================

@Preview(name: "Phone Field - With Values")
Widget previewPhoneFieldWithValues() {
  return Padding(
    padding: const EdgeInsets.all(24.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: _sectionSpacing,
      children: [
        _buildSection(
          label: "Kazakhstan Number",
          child: OnePhoneField(
            label: "Phone Number",
            controller: PhoneController(
              initialValue: PhoneNumber(
                isoCode: IsoCode.KZ,
                nsn: '7771234567',
              ),
            ),
          ),
        ),
        _buildSection(
          label: "US Number",
          child: OnePhoneField(
            label: "Phone Number",
            controller: PhoneController(
              initialValue: PhoneNumber(
                isoCode: IsoCode.US,
                nsn: '5551234567',
              ),
            ),
          ),
        ),
        _buildSection(
          label: "Russian Number",
          child: OnePhoneField(
            label: "Phone Number",
            controller: PhoneController(
              initialValue: PhoneNumber(
                isoCode: IsoCode.RU,
                nsn: '9161234567',
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

// ============================================================================
// ERROR STATES
// ============================================================================

@Preview(name: "Phone Field - Error States")
Widget previewPhoneFieldErrorStates() {
  return Padding(
    padding: const EdgeInsets.all(24.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: _sectionSpacing,
      children: [
        _buildSection(
          label: "With Error Message",
          child: OnePhoneField(
            label: "Phone Number",
            errorText: "Please enter a valid phone number",
            controller: PhoneController(),
          ),
        ),
        _buildSection(
          label: "Required Field Error",
          child: OnePhoneField(
            label: "Phone Number",
            isRequired: true,
            errorText: "Phone number is required",
            controller: PhoneController(),
          ),
        ),
      ],
    ),
  );
}

// ============================================================================
// DISABLED STATE
// ============================================================================

@Preview(name: "Phone Field - Disabled")
Widget previewPhoneFieldDisabled() {
  return Padding(
    padding: const EdgeInsets.all(24.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: _sectionSpacing,
      children: [
        _buildSection(
          label: "Disabled Empty",
          child: OnePhoneField(
            label: "Phone Number",
            enabled: false,
            controller: PhoneController(),
          ),
        ),
        _buildSection(
          label: "Disabled With Value",
          child: OnePhoneField(
            label: "Phone Number",
            enabled: false,
            controller: PhoneController(
              initialValue: PhoneNumber(
                isoCode: IsoCode.KZ,
                nsn: '7771234567',
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

// ============================================================================
// ALL STATES COMPARISON
// ============================================================================

@Preview(name: "Phone Field - All States")
Widget previewPhoneFieldAllStates() {
  return Padding(
    padding: const EdgeInsets.all(24.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: _sectionSpacing,
      children: [
        _buildSection(
          label: "Normal (Empty)",
          child: OnePhoneField(
            label: "Phone Number",
            hintText: "+7 (777) 123-45-67",
            controller: PhoneController(),
          ),
        ),
        _buildSection(
          label: "Normal (With Value)",
          child: OnePhoneField(
            label: "Phone Number",
            controller: PhoneController(
              initialValue: PhoneNumber(
                isoCode: IsoCode.KZ,
                nsn: '7771234567',
              ),
            ),
          ),
        ),
        _buildSection(
          label: "Required",
          child: OnePhoneField(
            label: "Phone Number",
            isRequired: true,
            hintText: "+7 (777) 123-45-67",
            controller: PhoneController(),
          ),
        ),
        _buildSection(
          label: "With Helper",
          child: OnePhoneField(
            label: "Phone Number",
            helperText: "Enter your mobile phone number",
            controller: PhoneController(),
          ),
        ),
        _buildSection(
          label: "With Error",
          child: OnePhoneField(
            label: "Phone Number",
            errorText: "Invalid phone number format",
            controller: PhoneController(),
          ),
        ),
        _buildSection(
          label: "Disabled",
          child: OnePhoneField(
            label: "Phone Number",
            enabled: false,
            controller: PhoneController(
              initialValue: PhoneNumber(
                isoCode: IsoCode.KZ,
                nsn: '7771234567',
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

// ============================================================================
// DIFFERENT COUNTRIES
// ============================================================================

@Preview(name: "Phone Field - Different Countries")
Widget previewPhoneFieldCountries() {
  return Padding(
    padding: const EdgeInsets.all(24.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: _sectionSpacing,
      children: [
        _buildSection(
          label: "Kazakhstan (+7)",
          child: OnePhoneField(
            label: "Phone Number",
            controller: PhoneController(
              initialValue: PhoneNumber(
                isoCode: IsoCode.KZ,
                nsn: '7771234567',
              ),
            ),
          ),
        ),
        _buildSection(
          label: "United States (+1)",
          child: OnePhoneField(
            label: "Phone Number",
            controller: PhoneController(
              initialValue: PhoneNumber(
                isoCode: IsoCode.US,
                nsn: '5551234567',
              ),
            ),
          ),
        ),
        _buildSection(
          label: "Russia (+7)",
          child: OnePhoneField(
            label: "Phone Number",
            controller: PhoneController(
              initialValue: PhoneNumber(
                isoCode: IsoCode.RU,
                nsn: '9161234567',
              ),
            ),
          ),
        ),
        _buildSection(
          label: "United Kingdom (+44)",
          child: OnePhoneField(
            label: "Phone Number",
            controller: PhoneController(
              initialValue: PhoneNumber(
                isoCode: IsoCode.GB,
                nsn: '7700900123',
              ),
            ),
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
