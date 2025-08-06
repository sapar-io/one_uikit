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
    return Container(
      width: widget.fullWidth ? double.infinity : null,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(widget.size.borderRadius),
        boxShadow: widget.hierarchy.boxShadow(context),
      ),
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          onTap: widget.isDisabled ? null : widget.onTap,
          onTapDown: _onTapDown,
          onTapUp: _onTapUp,
          onTapCancel: _onTapCancel,
          child: FocusableActionDetector(
            onShowFocusHighlight: _onFocus,
            onShowHoverHighlight: _onFocus,
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
  }

  // * Widgets
  Row _content(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (widget.leadingIcon != null)
          Padding(
            padding: EdgeInsets.only(right: widget.size.spaceBetween),
            child: OneIcons.get(
              widget.leadingIcon,
              size: widget.size.iconSize,
              color: widget.hierarchy.foreground(
                context: context,
                isFocused: _isFocused,
                isPressed: _isPressed,
                isDisabled: widget.isDisabled,
              ),
            ),
          ),
        Text(
          widget.text ?? '',
          style: widget.size.textStyle(context).copyWith(
                color: widget.hierarchy.foreground(
                  context: context,
                  isFocused: _isFocused,
                  isPressed: _isPressed,
                  isDisabled: widget.isDisabled,
                ),
              ),
        ),
        if (widget.trailingIcon != null)
          Padding(
            padding: EdgeInsets.only(left: widget.size.spaceBetween),
            child: OneIcons.get(
              widget.trailingIcon,
              size: widget.size.iconSize,
              color: widget.hierarchy.foreground(
                context: context,
                isFocused: _isFocused,
                isPressed: _isPressed,
                isDisabled: widget.isDisabled,
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
