import 'package:flutter/material.dart';
import 'package:multi_dropdown/multiselect_dropdown.dart';
import 'package:one_uikit/one_uikit.dart';

/// Multi-select dropdown field using multiselect_dropdown library
/// Styled to match Untitled UI design system
class OneMultiDropdownField extends StatelessWidget {
  final String? label;
  final bool isRequired;
  final String? helperText;
  final String? errorText;
  final String? hintText;
  final bool isMultiple;
  final MultiSelectController controller;
  final List<ValueItem<dynamic>> values;
  final List<ValueItem<dynamic>> selectedValues;
  final void Function(List<ValueItem<dynamic>>)? onOptionSelected;
  final void Function()? onChanged;
  final bool enabled;

  const OneMultiDropdownField({
    super.key,
    this.label,
    this.isRequired = false,
    this.helperText,
    this.errorText,
    this.hintText,
    required this.isMultiple,
    required this.controller,
    required this.values,
    required this.selectedValues,
    this.onOptionSelected,
    this.onChanged,
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

        // Multi-select dropdown
        AbsorbPointer(
          absorbing: !enabled,
          child: Container(
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
            child: MultiSelectDropDown(
            selectionType: isMultiple ? SelectionType.multi : SelectionType.single,
            searchBackgroundColor:
                context.color.background(BackgroundColorType.primary),
            searchLabel: "Поиск",
            searchEnabled: true,
            hint: hintText ?? label ?? "",
            hintStyle: context.typography.textMdRegular.copyWith(
              color: context.color.text(TextColorType.placeholder),
            ),
            controller: controller,
            onOptionSelected: (options) {
              onOptionSelected?.call(options);
              onChanged?.call();
            },
            onOptionRemoved: (index, option) {
              onChanged?.call();
            },
            inputDecoration: BoxDecoration(
              color: enabled
                  ? context.color.background(BackgroundColorType.primary)
                  : context.color.background(BackgroundColorType.disabledSubtle),
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: hasError
                    ? context.color.border(BorderColorType.errorSubtle)
                    : context.color.border(BorderColorType.primary),
                width: 1,
              ),
            ),
            selectedOptionBackgroundColor:
                context.color.background(BackgroundColorType.primary),
            selectedOptionTextColor:
                context.color.text(TextColorType.secondary),
            selectedOptionIcon: Icon(
              Icons.close,
              size: 12,
              color: context.color.foreground(ForegroundColorType.quinary),
            ),
            dropdownBackgroundColor:
                context.color.background(BackgroundColorType.primary),
            optionsBackgroundColor:
                context.color.background(BackgroundColorType.primary),
            options: values,
            selectedOptions: selectedValues,
            showChipInSingleSelectMode: true,
            chipConfig: ChipConfig(
              wrapType: WrapType.scroll,
              deleteIcon: Icon(
                Icons.close,
                size: 12,
                color: context.color.foreground(ForegroundColorType.quinary),
              ),
              padding: const EdgeInsets.only(left: 5, right: 4, top: 2, bottom: 2),
              labelStyle: context.typography.textSmMedium.copyWith(
                color: context.color.text(TextColorType.secondary),
              ),
              backgroundColor: context.color.background(BackgroundColorType.primary),
              radius: 6,
              spacing: 6,
              deleteIconColor: context.color.foreground(ForegroundColorType.quinary),
              labelPadding: const EdgeInsets.only(left: 5),
            ),
            dropdownHeight: 300,
            optionTextStyle: context.typography.textMdRegular.copyWith(
              color: context.color.text(TextColorType.primary),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
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
