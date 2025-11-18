import 'package:flutter/material.dart';
import 'package:one_uikit/one_uikit.dart';

part 'data/tag_size.dart';
part 'data/tag_type.dart';
part 'data/tag_view_model.dart';

class OneTag extends StatefulWidget {
  const OneTag({super.key, required this.viewModel});

  final OneTagViewModel viewModel;

  @override
  State<OneTag> createState() => _OneTagState();
}

class _OneTagState extends State<OneTag> {
  bool _isHovered = false;
  bool _isFocused = false;

  @override
  Widget build(BuildContext context) {
    final isClickable = widget.viewModel.onTap != null;

    return GestureDetector(
      onTap: widget.viewModel.onTap,
      child: MouseRegion(
        onEnter: isClickable ? (_) => setState(() => _isHovered = true) : null,
        onExit: isClickable ? (_) => setState(() => _isHovered = false) : null,
        cursor: isClickable ? SystemMouseCursors.click : SystemMouseCursors.basic,
        child: Focus(
          onFocusChange: isClickable ? (focused) => setState(() => _isFocused = focused) : null,
          child: Container(
            padding: widget.viewModel.size.padding,
            decoration: BoxDecoration(
              color: _getBackgroundColor(context),
              border: Border.all(color: _getBorderColor(context), width: 1.0),
              borderRadius: BorderRadius.circular(6),
              boxShadow: _isFocused && isClickable
                  ? [
                      BoxShadow(
                        color: context.color.utility(UtilityColorType.brand200).withValues(alpha: 0.5),
                        spreadRadius: 0,
                        blurRadius: 0,
                        offset: const Offset(0, 0),
                      ),
                      BoxShadow(
                        color: Colors.white,
                        spreadRadius: 2,
                        blurRadius: 0,
                        offset: const Offset(0, 0),
                      ),
                      BoxShadow(
                        color: context.color.utility(UtilityColorType.brand200),
                        spreadRadius: 4,
                        blurRadius: 0,
                        offset: const Offset(0, 0),
                      ),
                    ]
                  : null,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (widget.viewModel.leadingWidget != null)
                  Padding(
                    padding: const EdgeInsets.only(right: 4),
                    child: widget.viewModel.leadingWidget!,
                  ),
                if (widget.viewModel.text != null)
                  Text(
                    widget.viewModel.text!,
                    style: widget.viewModel.size
                        .textStyle(context)
                        .copyWith(color: _getTextColor(context)),
                  ),
                if (widget.viewModel.trailingWidget != null)
                  Padding(
                    padding: const EdgeInsets.only(left: 4),
                    child: widget.viewModel.trailingWidget!,
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Color _getBackgroundColor(BuildContext context) {
    if (_isHovered && widget.viewModel.onTap != null) {
      return context.color.background(BackgroundColorType.primaryHover);
    }
    return context.color.background(BackgroundColorType.primary);
  }

  Color _getBorderColor(BuildContext context) {
    return context.color.border(BorderColorType.primary);
  }

  Color _getTextColor(BuildContext context) {
    return context.color.text(TextColorType.secondary);
  }
}

extension OneTagSizeX on OneTagSize {
  TextStyle textStyle(BuildContext context) {
    switch (this) {
      case OneTagSize.sm:
        return context.typography.textXsMedium;
      case OneTagSize.md:
        return context.typography.textSmMedium;
      case OneTagSize.lg:
        return context.typography.textSmMedium;
    }
  }

  EdgeInsets get padding {
    switch (this) {
      case OneTagSize.sm:
        return const EdgeInsets.symmetric(horizontal: 8, vertical: 3);
      case OneTagSize.md:
        return const EdgeInsets.symmetric(horizontal: 8, vertical: 2);
      case OneTagSize.lg:
        return const EdgeInsets.symmetric(horizontal: 10, vertical: 4);
    }
  }
}
