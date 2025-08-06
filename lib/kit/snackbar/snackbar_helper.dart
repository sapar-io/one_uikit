import 'package:flutter/material.dart';

extension BuildContextExtension on BuildContext {
  void showSnackBar({required String message, bool isError = false}) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: isError ? Colors.red : null,
        duration: const Duration(seconds: 3),
        behavior: SnackBarBehavior.floating,
        showCloseIcon: true,
      ),
    );
  }
}
