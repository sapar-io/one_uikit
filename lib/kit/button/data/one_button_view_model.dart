part of '../one_button.dart';

class OneButtonViewModel {
  final OneButtonSize size;
  final OneButtonHierarchy hierarchy;
  final String? text;
  final TextAlign alignment;
  final String? leadingSVG;
  final String? leadingImage;
  final dynamic leadingIcon;
  final dynamic trailingIcon;
  final bool isFocused;
  final bool isLoading;
  final bool isDisabled;
  final bool isActive;
  final Function()? onTap;
  final bool fullWidth;
  final bool textFullWidth;

  const OneButtonViewModel({
    this.size = OneButtonSize.lg,
    this.hierarchy = OneButtonHierarchy.primary,
    this.text,
    this.alignment = TextAlign.center,
    this.leadingSVG,
    this.leadingImage,
    this.leadingIcon,
    this.trailingIcon,
    this.isFocused = false,
    this.isLoading = false,
    this.isDisabled = false,
    this.isActive = false,
    this.onTap,
    this.fullWidth = false,
    this.textFullWidth = false,
  });
}
