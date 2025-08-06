import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:one_uikit/one_uikit.dart';

class OneTextField extends StatelessWidget {
  final InputDecoration decoration;
  final TextEditingController? controller;
  final TextInputFormatter? inputFormatter;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final bool isPassword;
  final bool autocorrect;
  final TextCapitalization textCapitalization;
  final bool readOnly;
  final Function(String)? onChanged;
  final VoidCallback? onTap;
  final bool isMultiline;
  final Function(String)? onFieldSubmitted;
  // Добавьте другие необходимые свойства

  const OneTextField({
    super.key,
    this.decoration = const InputDecoration(),
    this.controller,
    this.inputFormatter,
    this.keyboardType,
    this.validator,
    this.isPassword = false,
    this.autocorrect = true,
    this.textCapitalization = TextCapitalization.none,
    this.readOnly = false,
    this.onChanged,
    this.onTap,
    this.isMultiline = false,
    this.onFieldSubmitted,
    // Инициализируйте другие свойства
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        boxShadow: context.shadow.get(OneShadowSize.xs),
      ),
      child: TextFormField(
        minLines: isMultiline ? 2 : 1,
        maxLines: isMultiline ? 5 : 1,
        decoration: decoration,
        controller: controller,
        inputFormatters: inputFormatter != null ? [inputFormatter!] : null,
        keyboardType: isMultiline ? TextInputType.multiline : keyboardType,
        validator: validator,
        obscureText: isPassword,
        autocorrect: autocorrect,
        textCapitalization: textCapitalization,
        readOnly: readOnly,
        onTap: onTap,
        onChanged: onChanged,
        onFieldSubmitted: onFieldSubmitted,
        // Передайте другие свойства
      ),
    );
  }
}
