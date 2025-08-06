import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

class OneError extends StatelessWidget {
  const OneError({super.key, required this.error, this.stackTrace});

  final Object? error;
  final StackTrace? stackTrace;

  @override
  Widget build(BuildContext context) {
    final logger = Logger();
    logger.e("WOError", error: error);
    return Text(error.toString());
  }
}

Widget errorFirestoreList(
  BuildContext context,
  Object? error,
  StackTrace stackTrace,
) {
  return OneError(
    error: error,
    stackTrace: stackTrace,
  );
}
