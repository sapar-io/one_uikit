import 'package:flutter/material.dart';

class OneDropdownField extends StatelessWidget {
  const OneDropdownField({
    super.key,
    required this.items,
    this.value,
    required this.onChanged,
    required this.isRequired,
    this.isExpanded = false,
  });

  final List<DropdownMenuItem<dynamic>> items;
  final String? value;
  final Function(dynamic)? onChanged;
  final bool isRequired;
  final bool isExpanded;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      value: value,
      isExpanded: isExpanded,
      items: items,
      onChanged: (newValue) {
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
