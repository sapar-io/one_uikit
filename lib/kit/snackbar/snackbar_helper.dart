import 'package:flutter/material.dart';
import 'package:one_uikit/one_uikit.dart';

extension BuildContextExtension on BuildContext {
  void showSnackBar({
    required String message, 
    bool isError = false,
    Duration? duration,
    VoidCallback? onAction,
    String? actionLabel,
  }) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: typography.textMdRegular.copyWith(
            color: isError 
              ? color.text(TextColorType.errorPrimary)
              : color.text(TextColorType.primary),
          ),
        ),
        backgroundColor: isError 
          ? color.background(BackgroundColorType.errorPrimary)
          : color.background(BackgroundColorType.tertiary),
        duration: duration ?? const Duration(seconds: 4),
        behavior: SnackBarBehavior.floating,
        showCloseIcon: true,
        action: onAction != null && actionLabel != null
          ? SnackBarAction(
              label: actionLabel,
              onPressed: onAction,
              textColor: color.foreground(ForegroundColorType.brandPrimary),
            )
          : null,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}