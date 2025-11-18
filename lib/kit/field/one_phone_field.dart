import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:one_uikit/one_uikit.dart';
import 'package:phone_form_field/phone_form_field.dart';

/// Phone input field based on phone_form_field library
/// Styled to match Untitled UI design system
class OnePhoneField extends StatelessWidget {
  final String? label;
  final bool isRequired;
  final String? helperText;
  final String? errorText;
  final PhoneController controller;
  final Function(PhoneNumber)? onChanged;
  final String? hintText;
  final bool enabled;

  const OnePhoneField({
    super.key,
    this.label,
    this.isRequired = false,
    this.helperText,
    this.errorText,
    required this.controller,
    this.onChanged,
    this.hintText,
    this.enabled = true,
  });

  @override
  Widget build(BuildContext context) {
    final hasError = errorText != null;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        // Label
        if (label != null)
          OneFieldLabel(
            label: label!,
            isRequired: isRequired,
          ),

        // Phone field
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: const Color(0x0D0A0D12),
                offset: const Offset(0, 1),
                blurRadius: 2,
              ),
            ],
          ),
          child: PhoneFormField(
            controller: controller,
            validator: isRequired
                ? PhoneValidator.compose([
                    PhoneValidator.required(context,
                        errorText: 'Номер телефона обязателен'),
                    PhoneValidator.validMobile(context,
                        errorText: 'Неверный номер телефона'),
                  ])
                : null,
            onChanged: onChanged,
            enabled: enabled,
            keyboardType: TextInputType.phone,
            style: context.typography.textMdRegular.copyWith(
              color: enabled
                  ? context.color.text(TextColorType.primary)
                  : context.color.text(TextColorType.disabled),
            ),
            decoration: InputDecoration(
              hintText: hintText ?? '+1 (555) 000-0000',
              hintStyle: context.typography.textMdRegular.copyWith(
                color: context.color.text(TextColorType.placeholder),
              ),
              filled: true,
              fillColor: enabled
                  ? context.color.background(BackgroundColorType.primary)
                  : context.color.background(BackgroundColorType.disabledSubtle),
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(
                  color: context.color.border(BorderColorType.primary),
                  width: 1,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(
                  color: hasError
                      ? context.color.border(BorderColorType.errorSubtle)
                      : context.color.border(BorderColorType.primary),
                  width: 1,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(
                  color: hasError
                      ? context.color.border(BorderColorType.error)
                      : context.color.border(BorderColorType.brand),
                  width: 2,
                ),
              ),
              disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(
                  color: context.color.border(BorderColorType.disabled),
                  width: 1,
                ),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(
                  color: context.color.border(BorderColorType.errorSubtle),
                  width: 1,
                ),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(
                  color: context.color.border(BorderColorType.error),
                  width: 2,
                ),
              ),
              errorStyle: const TextStyle(height: 0),
            ),
            autovalidateMode: AutovalidateMode.onUserInteraction,
            countrySelectorNavigator: const CountrySelectorNavigator.page(),
            smartDashesType: SmartDashesType.enabled,
            inputFormatters: [
              KazakhPhoneFormatter(),
            ],
            isCountrySelectionEnabled: true,
            isCountryButtonPersistent: true,
            countryButtonStyle: CountryButtonStyle(
              showDialCode: true,
              showIsoCode: false,
              showFlag: false,
              flagSize: 16,
              textStyle: context.typography.textMdRegular.copyWith(
                color: context.color.text(TextColorType.secondary),
              ),
            ),
          ),
        ),

        // Helper text or Error message
        if (helperText != null || errorText != null)
          Padding(
            padding: const EdgeInsets.only(top: 6),
            child: Text(
              errorText ?? helperText ?? '',
              style: context.typography.textSmRegular.copyWith(
                color: hasError
                    ? context.color.text(TextColorType.errorPrimary)
                    : context.color.text(TextColorType.tertiary),
              ),
            ),
          ),
      ],
    );
  }
}

class KazakhPhoneFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    var text = newValue.text;

    // Оставляем только цифры
    var digitsOnly = text.replaceAll(RegExp(r'[^\d]'), '');

    // Ограничиваем длину до 10 цифр
    if (digitsOnly.length > 10) {
      return oldValue;
    }

    return TextEditingValue(
      text: digitsOnly,
      selection: TextSelection.collapsed(offset: digitsOnly.length),
    );
  }
}
