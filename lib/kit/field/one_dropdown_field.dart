import 'package:flutter/material.dart';
import 'package:one_uikit/one_uikit.dart';

/// Dropdown field using Flutter's built-in DropdownButtonFormField
/// Styled to match Untitled UI design system
class OneDropdownField<T> extends StatelessWidget {
  final String? label;
  final bool isRequired;
  final String? helperText;
  final String? errorText;
  final String? hintText;
  final List<DropdownMenuItem<T>> items;
  final T? value;
  final Function(T?)? onChanged;
  final bool isExpanded;
  final bool enabled;

  const OneDropdownField({
    super.key,
    this.label,
    this.isRequired = false,
    this.helperText,
    this.errorText,
    this.hintText,
    required this.items,
    this.value,
    required this.onChanged,
    this.isExpanded = true,
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

        // Dropdown field
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
          child: DropdownButtonFormField<T>(
            initialValue: value,
            isExpanded: isExpanded,
            items: items,
            onChanged: enabled ? onChanged : null,
            hint: hintText != null
                ? Text(
                    hintText!,
                    style: context.typography.textMdRegular.copyWith(
                      color: context.color.text(TextColorType.placeholder),
                    ),
                  )
                : null,
            style: context.typography.textMdRegular.copyWith(
              color: enabled
                  ? context.color.text(TextColorType.primary)
                  : context.color.text(TextColorType.disabled),
            ),
            icon: Icon(
              Icons.keyboard_arrow_down,
              color: context.color.foreground(ForegroundColorType.quinary),
            ),
            decoration: InputDecoration(
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
            validator: isRequired
                ? (value) {
                    if (value == null) {
                      return '';
                    }
                    return null;
                  }
                : null,
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
