import 'package:flutter/material.dart';

class OneDropdownField extends StatelessWidget {
  const OneDropdownField({
    super.key,
    required this.items,
    this.value,
    required this.onChanged,
    required this.isRequired,
  });

  final List<DropdownMenuItem<dynamic>> items;
  final String? value;
  final Function(dynamic)? onChanged;
  final bool isRequired;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      value: value,
      items: items,
      onChanged: (newValue) {
        if (newValue == null) return;
        onChanged?.call(newValue);
      },
      validator: (value) {
        if (isRequired && value == null) {
          return "Обязательное поле";
        }
        return null;
      },
    );
  }
}
