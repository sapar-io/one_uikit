import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:one_uikit/one_uikit.dart';

class OneTextField extends StatefulWidget {
  final String? label;
  final bool isRequired;
  final String? hintText;
  final String? helperText;
  final String? errorText;
  final TextEditingController? controller;
  final TextInputFormatter? inputFormatter;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final bool isPassword;
  final bool autocorrect;
  final TextCapitalization textCapitalization;
  final bool readOnly;
  final bool enabled;
  final Function(String)? onChanged;
  final VoidCallback? onTap;
  final bool isMultiline;
  final Function(String)? onFieldSubmitted;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? prefixText;
  final int? maxLines;
  final int? minLines;
  final String? initialValue;

  const OneTextField({
    super.key,
    this.label,
    this.isRequired = false,
    this.hintText,
    this.helperText,
    this.errorText,
    this.controller,
    this.inputFormatter,
    this.keyboardType,
    this.validator,
    this.isPassword = false,
    this.autocorrect = true,
    this.textCapitalization = TextCapitalization.none,
    this.readOnly = false,
    this.enabled = true,
    this.onChanged,
    this.onTap,
    this.isMultiline = false,
    this.onFieldSubmitted,
    this.prefixIcon,
    this.suffixIcon,
    this.prefixText,
    this.maxLines,
    this.minLines,
    this.initialValue,
  });

  @override
  State<OneTextField> createState() => _OneTextFieldState();
}

class _OneTextFieldState extends State<OneTextField> {
  final FocusNode _focusNode = FocusNode();

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final hasError = widget.errorText != null;
    final isDisabled = !widget.enabled;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        // Label
        if (widget.label != null)
          Padding(
            padding: const EdgeInsets.only(bottom: 6),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  widget.label!,
                  style: context.typography.textSmMedium.copyWith(
                    color: context.color.text(TextColorType.secondary),
                  ),
                ),
                if (widget.isRequired) ...[
                  const SizedBox(width: 2),
                  Text(
                    '*',
                    style: context.typography.textSmMedium.copyWith(
                      color: context.color.utility(UtilityColorType.brand600),
                    ),
                  ),
                ],
              ],
            ),
          ),

        // Input field
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
          child: TextFormField(
            focusNode: _focusNode,
            minLines: widget.minLines ?? (widget.isMultiline ? 3 : 1),
            maxLines: widget.maxLines ?? (widget.isMultiline ? 5 : 1),
            controller: widget.controller,
            inputFormatters:
                widget.inputFormatter != null ? [widget.inputFormatter!] : null,
            keyboardType:
                widget.isMultiline
                    ? TextInputType.multiline
                    : widget.keyboardType,
            validator: widget.validator,
            obscureText: widget.isPassword,
            autocorrect: widget.autocorrect,
            textCapitalization: widget.textCapitalization,
            readOnly: widget.readOnly,
            enabled: widget.enabled,
            onTap: widget.onTap,
            onChanged: widget.onChanged,
            onFieldSubmitted: widget.onFieldSubmitted,
            style: context.typography.textMdRegular.copyWith(
              color:
                  isDisabled
                      ? context.color.text(TextColorType.disabled)
                      : context.color.text(TextColorType.primary),
            ),
            initialValue: widget.initialValue,
            decoration: InputDecoration(
              hintText: widget.hintText,
              hintStyle: context.typography.textMdRegular.copyWith(
                color: context.color.text(TextColorType.placeholder),
              ),
              prefixIcon: widget.prefixIcon,
              suffixIcon: widget.suffixIcon,
              prefixText: widget.prefixText,
              prefixStyle: context.typography.textMdRegular.copyWith(
                color: context.color.foreground(ForegroundColorType.tertiary),
              ),
              filled: true,
              fillColor:
                  isDisabled
                      ? context.color.background(
                        BackgroundColorType.disabledSubtle,
                      )
                      : context.color.background(BackgroundColorType.primary),
              contentPadding:
                  widget.isMultiline
                      ? const EdgeInsets.symmetric(horizontal: 14, vertical: 12)
                      : const EdgeInsets.symmetric(
                        horizontal: 14,
                        vertical: 10,
                      ),
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
                  color:
                      hasError
                          ? context.color.border(BorderColorType.errorSubtle)
                          : context.color.border(BorderColorType.primary),
                  width: 1,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(
                  color:
                      hasError
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
          ),
        ),

        // Helper text or Error message
        if (widget.helperText != null || widget.errorText != null)
          Padding(
            padding: const EdgeInsets.only(top: 6),
            child: Text(
              widget.errorText ?? widget.helperText ?? '',
              style: context.typography.textSmRegular.copyWith(
                color:
                    hasError
                        ? context.color.text(TextColorType.errorPrimary)
                        : context.color.text(TextColorType.tertiary),
              ),
            ),
          ),
      ],
    );
  }
}
