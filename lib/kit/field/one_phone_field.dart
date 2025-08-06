import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:one_uikit/one_uikit.dart';
import 'package:phone_form_field/phone_form_field.dart';

class OnePhoneField extends StatelessWidget {
  final PhoneController controller;
  final bool isRequired;
  final Function(PhoneNumber)? onChanged;

  const OnePhoneField({
    super.key,
    required this.controller,
    required this.isRequired,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        boxShadow: context.shadow.get(OneShadowSize.xs),
      ),
      child: PhoneFormField(
        controller: controller,
        validator: isRequired
            ? PhoneValidator.compose(
                [
                  PhoneValidator.required(context,
                      errorText: 'Номер телефона обязателен'),
                  PhoneValidator.validMobile(context,
                      errorText: 'Неверный номер телефона'),
                ],
              )
            : null,
        onChanged: onChanged,
        keyboardType: TextInputType.phone,
        decoration: const InputDecoration(
          hintText: '(7XX) XXX-XX-XX',
        ),
        autovalidateMode: AutovalidateMode.onUserInteraction,
        countrySelectorNavigator: const CountrySelectorNavigator.page(),
        smartDashesType: SmartDashesType.enabled,
        inputFormatters: [
          KazakhPhoneFormatter(),
        ],
        enabled: true,
        isCountrySelectionEnabled: true,
        isCountryButtonPersistent: true,
        countryButtonStyle: const CountryButtonStyle(
          showDialCode: true,
          showIsoCode: true,
          showFlag: true,
          flagSize: 16,
        ),
      ),
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
