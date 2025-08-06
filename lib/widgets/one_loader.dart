import 'package:flutter/material.dart';
import 'package:one_uikit/one_uikit.dart';

class OneLoader extends StatelessWidget {
  const OneLoader({super.key, String? title}) : titleText = title;

  final String? titleText;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CircularProgressIndicator(),
          if (titleText != null) ...[
            gapH12,
            Text(titleText!),
          ],
        ],
      ),
    );
  }
}
