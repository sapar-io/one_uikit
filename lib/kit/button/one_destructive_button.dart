part of 'one_button.dart';

class OneDestructiveButton extends StatefulWidget {
  const OneDestructiveButton({
    super.key,
    this.size = OneButtonSize.lg,
    this.hierarchy = OneButtonDestructiveHierarchy.primary,
    this.text,
    this.leadingIcon,
    this.trailingIcon,
    this.isLoading = false,
    this.isDisabled = false,
    this.onTap,
    this.fullWidth = false,
  });

  final OneButtonSize size;
  final OneButtonDestructiveHierarchy hierarchy;
  final String? text;
  final dynamic leadingIcon;
  final dynamic trailingIcon;
  final bool isLoading;
  final bool isDisabled;
  final Function()? onTap;
  final bool fullWidth;

  @override
  State<OneDestructiveButton> createState() => _OneDestructiveButtonState();
}

class _OneDestructiveButtonState extends State<OneDestructiveButton> {
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

  // * Build
  @override
  Widget build(BuildContext context) {
    final button = Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(widget.size.borderRadius),
        boxShadow: widget.hierarchy.boxShadow(context),
      ),
      child: MouseRegion(
        cursor: widget.isDisabled ? SystemMouseCursors.basic : SystemMouseCursors.click,
        child: GestureDetector(
          onTap: widget.isDisabled ? null : widget.onTap,
          onTapDown: widget.isDisabled ? null : _onTapDown,
          onTapUp: widget.isDisabled ? null : _onTapUp,
          onTapCancel: widget.isDisabled ? null : _onTapCancel,
          child: FocusableActionDetector(
            onShowFocusHighlight: widget.isDisabled ? null : _onFocus,
            onShowHoverHighlight: widget.isDisabled ? null : _onFocus,
            child: Container(
              padding: widget.size.padding,
              decoration: BoxDecoration(
                color: widget.hierarchy.background(
                  context: context,
                  isFocused: _isFocused,
                  isPressed: _isPressed,
                  isDisabled: widget.isDisabled,
                ),
                border: widget.hierarchy.withBorder
                    ? Border.all(
                        color: widget.hierarchy.borderColor(context),
                        width: 1.0,
                      )
                    : null,
                borderRadius: BorderRadius.circular(widget.size.borderRadius),
              ),
              child: widget.isLoading ? _loader() : _content(context),
            ),
          ),
        ),
      ),
    );

    if (widget.fullWidth) {
      return SizedBox(
        width: double.infinity,
        child: button,
      );
    }
    return button;
  }

  // * Widgets
  Row _content(BuildContext context) {
    final foregroundColor = widget.hierarchy.foreground(
      context: context,
      isFocused: _isFocused,
      isPressed: _isPressed,
      isDisabled: widget.isDisabled,
    );

    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (widget.leadingIcon != null)
          Padding(
            padding: EdgeInsets.only(right: widget.size.spaceBetween),
            child: OneIcons.get(
              widget.leadingIcon,
              size: widget.size.iconSize,
              color: foregroundColor,
            ),
          ),
        if (widget.text != null && widget.text!.isNotEmpty)
          Flexible(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: OneSpace.s2),
              child: Text(
                widget.text!,
                textAlign: TextAlign.center,
                style: widget.size.textStyle(context).copyWith(
                      color: foregroundColor,
                    ),
              ),
            ),
          ),
        if (widget.trailingIcon != null)
          Padding(
            padding: EdgeInsets.only(left: widget.size.spaceBetween),
            child: OneIcons.get(
              widget.trailingIcon,
              size: widget.size.iconSize,
              color: foregroundColor,
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
