part of '../one_tag.dart';

class OneTagViewModel {
  final OneTagSize size;
  final OneTagType type;
  final String? text;
  final Widget? leadingWidget;
  final Widget? trailingWidget;
  final Function()? onTap;

  OneTagViewModel({
    required this.size,
    required this.type,
    this.text,
    this.leadingWidget,
    this.trailingWidget,
    this.onTap,
  });
}
