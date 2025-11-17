import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:one_uikit/one_uikit.dart';

part 'data/one_button_destructive_hierarchy.dart';
part 'data/one_button_hierarchy.dart';
part 'data/one_button_size.dart';
part 'data/one_button_view_model.dart';
part 'one_destructive_button.dart';

class OneButton extends StatefulWidget {
  const OneButton({
    super.key,
    this.viewModel = const OneButtonViewModel(),
  });

  final OneButtonViewModel viewModel;

  @override
  State<OneButton> createState() => _OneButtonState();
}

class _OneButtonState extends State<OneButton> {
  // * Variables
  bool _isFocused = false;
  bool _isPressed = false;

  // * Methods
  void _onFocus(bool? value) {
    setState(() => _isFocused = value ?? false);
  }

  void _onTapDown(TapDownDetails details) {
    setState(() => _isPressed = true);
  }

  void _onTapUp(TapUpDetails details) {
    setState(() => _isPressed = false);
  }

  void _onTapCancel() {
    setState(() => _isPressed = false);
  }

  // * Init
  @override
  void initState() {
    super.initState();
    _isFocused = widget.viewModel.isFocused;
  }

  // * Build
  @override
  Widget build(BuildContext context) {
    final button = Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(widget.viewModel.size.borderRadius),
        boxShadow: widget.viewModel.hierarchy.boxShadow(context),
      ),
      child: MouseRegion(
        cursor: widget.viewModel.isDisabled ? SystemMouseCursors.basic : SystemMouseCursors.click,
        child: GestureDetector(
          onTap: widget.viewModel.isDisabled ? null : widget.viewModel.onTap,
          onTapDown: widget.viewModel.isDisabled ? null : _onTapDown,
          onTapUp: widget.viewModel.isDisabled ? null : _onTapUp,
          onTapCancel: widget.viewModel.isDisabled ? null : _onTapCancel,
          child: FocusableActionDetector(
            onShowFocusHighlight: widget.viewModel.isDisabled ? null : _onFocus,
            onShowHoverHighlight: widget.viewModel.isDisabled ? null : _onFocus,
            child: Container(
              padding: widget.viewModel.size.padding,
              decoration: BoxDecoration(
                color: widget.viewModel.hierarchy.background(
                  context: context,
                  isFocused: _isFocused,
                  isPressed: _isPressed,
                  isDisabled: widget.viewModel.isDisabled,
                ),
                border: widget.viewModel.hierarchy.withBorder
                    ? Border.all(
                        color: widget.viewModel.hierarchy.borderColor(context),
                        width: 1.0,
                      )
                    : null,
                borderRadius: BorderRadius.circular(widget.viewModel.size.borderRadius),
              ),
              child: widget.viewModel.isLoading ? _loader() : _content(context),
            ),
          ),
        ),
      ),
    );

    if (widget.viewModel.fullWidth) {
      return SizedBox(
        width: double.infinity,
        child: button,
      );
    }
    return button;
  }

  // * Widgets
  Row _content(BuildContext context) {
    final text = Padding(
      padding: const EdgeInsets.symmetric(horizontal: OneSpace.s2),
      child: Text(
        widget.viewModel.text ?? '',
        textAlign: widget.viewModel.alignment,
        softWrap: true, // Разрешаем перенос текста
        maxLines: null, // Разрешаем неограниченное количество строк
        overflow: TextOverflow.visible,
        style: widget.viewModel.size.textStyle(context).copyWith(
              color: widget.viewModel.hierarchy.foreground(
                context: context,
                isFocused: _isFocused,
                isPressed: _isPressed,
                isDisabled: widget.viewModel.isDisabled,
                isActive: widget.viewModel.isActive,
              ),
            ),
      ),
    );

    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment:
          widget.viewModel.alignment == TextAlign.left
              ? MainAxisAlignment.start
              : widget.viewModel.alignment == TextAlign.right
                  ? MainAxisAlignment.end
                  : MainAxisAlignment.center,
      children: [
        if (widget.viewModel.leadingImage != null)
          Padding(
            padding: EdgeInsets.only(right: widget.viewModel.size.spaceBetween),
            child: OneImage(
              imageUrl: widget.viewModel.leadingImage!,
              width: widget.viewModel.size.iconSize,
              height: widget.viewModel.size.iconSize,
              radius: OneRadius.xxl,
            ),
          ),
        if (widget.viewModel.leadingSVG != null)
          Padding(
            padding: EdgeInsets.only(right: widget.viewModel.size.spaceBetween),
            child: SvgPicture.asset(widget.viewModel.leadingSVG!),
          ),
        if (widget.viewModel.leadingIcon != null)
          Padding(
            padding: EdgeInsets.only(right: widget.viewModel.size.spaceBetween),
            child: OneIcons.get(
              widget.viewModel.leadingIcon,
              size: widget.viewModel.size.iconSize,
              color: widget.viewModel.hierarchy.foreground(
                context: context,
                isFocused: _isFocused,
                isPressed: _isPressed,
                isDisabled: widget.viewModel.isDisabled,
                isActive: widget.viewModel.isActive,
              ),
            ),
          ),
        widget.viewModel.textFullWidth
            ? Expanded(child: text)
            : Flexible(child: text),
        if (widget.viewModel.trailingIcon != null)
          Padding(
            padding: EdgeInsets.only(left: widget.viewModel.size.spaceBetween),
            child: OneIcons.get(
              widget.viewModel.trailingIcon,
              size: widget.viewModel.size.iconSize,
              color: widget.viewModel.hierarchy.foreground(
                context: context,
                isFocused: _isFocused,
                isPressed: _isPressed,
                isDisabled: widget.viewModel.isDisabled,
                isActive: widget.viewModel.isActive,
              ),
            ),
          ),
      ],
    );
  }

  Center _loader() {
    return const Center(
      child: CircularProgressIndicator(
        color: OneColors.white,
      ),
    );
  }
}
