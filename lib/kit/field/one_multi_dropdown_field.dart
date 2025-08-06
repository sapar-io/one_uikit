import 'package:flutter/material.dart';
import 'package:multi_dropdown/multiselect_dropdown.dart';
import 'package:one_uikit/one_uikit.dart';

class OneMultiDropdownField extends StatelessWidget {
  const OneMultiDropdownField({
    super.key,
    required this.isMultiple,
    required this.controller,
    required this.values,
    required this.selectedValues,
    this.label,
    this.onOptionSelected,
    this.onChanged,
  });

  final bool isMultiple;
  final MultiSelectController controller;
  final List<ValueItem<dynamic>> values;
  final List<ValueItem<dynamic>> selectedValues;
  final String? label;
  final void Function(List<ValueItem<dynamic>>)? onOptionSelected;
  final void Function()? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(OneRadius.md),
        boxShadow: context.shadow.get(OneShadowSize.xs),
      ),
      child: MultiSelectDropDown(
        selectionType: isMultiple ? SelectionType.multi : SelectionType.single,
        searchBackgroundColor:
            context.color.background(BackgroundColorType.primary),
        searchLabel: "Поиск",
        searchEnabled: true,
        hint: label ?? "",
        controller: controller,
        onOptionSelected: (options) {
          onOptionSelected?.call(options);
          onChanged?.call();
        },
        onOptionRemoved: (index, option) {
          onChanged?.call();
        },
        inputDecoration: BoxDecoration(
          color: context.color.background(BackgroundColorType.primary),
          borderRadius: BorderRadius.circular(OneRadius.md),
          border: Border.all(
            color: Theme.of(context).colorScheme.outline,
            width: 1,
          ),
        ),
        selectedOptionBackgroundColor:
            context.color.background(BackgroundColorType.secondary),
        selectedOptionTextColor:
            context.color.foreground(ForegroundColorType.brandPrimary),
        dropdownBackgroundColor:
            context.color.background(BackgroundColorType.primary),
        optionsBackgroundColor:
            context.color.background(BackgroundColorType.primary),
        options: values,
        selectedOptions: selectedValues,
        showChipInSingleSelectMode: true,
        chipConfig: ChipConfig(
          wrapType: WrapType.scroll,
          deleteIcon: const Icon(Icons.close),
          deleteIconColor: context.color.utility(UtilityColorType.gray600),
          padding: const EdgeInsets.only(left: 12, right: 6),
          labelStyle: context.typography.textSmMedium
              .copyWith(color: context.color.utility(UtilityColorType.gray600)),
          backgroundColor:
              context.color.background(BackgroundColorType.secondary),
        ),
        dropdownHeight: 300,
        optionTextStyle: context.typography.textSmMedium,
      ),
    );
  }
}
