import 'package:flutter/material.dart';
import 'package:one_uikit/one_uikit.dart';

class OneFloating extends StatelessWidget {
  const OneFloating({
    super.key,
    this.icon,
    this.onPressed,
    this.isShow = true,
    this.heroTag,
    this.isLoading = false,
    this.isGray = false,
  });

  final dynamic icon;
  final VoidCallback? onPressed;
  final bool isShow;
  final String? heroTag;
  final bool isLoading;
  final bool isGray;

  @override
  Widget build(BuildContext context) {
    if (!isShow) return const SizedBox.shrink();
    final iconColor = context.color.text(TextColorType.primary);

    if (isGray) {
      return FloatingActionButton.small(
        heroTag: heroTag,
        onPressed: isLoading ? null : onPressed,
        backgroundColor:
            context.color.background(BackgroundColorType.quaternary),
        child: isLoading
            ? SizedBox(
                width: 16,
                height: 16,
                child: CircularProgressIndicator(color: iconColor),
              )
            : OneIcons.get(icon ?? GeneralIcon.plus, color: iconColor),
      );
    }

    return FloatingActionButton(
      heroTag: heroTag,
      onPressed: isLoading ? null : onPressed,
      child: isLoading
          ? const SizedBox(
              width: 20,
              height: 20,
              child: CircularProgressIndicator(color: Colors.white),
            )
          : OneIcons.get(icon ?? GeneralIcon.plus, color: Colors.white),
    );
  }
}
