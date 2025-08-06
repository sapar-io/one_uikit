import 'package:flutter/material.dart';
import 'package:one_uikit/one_uikit.dart';

class OneValue extends StatelessWidget {
  const OneValue({
    super.key,
    required this.title,
    required this.value,
  });

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("$title:", style: context.typography.textSmSemibold),
        gapW4,
        Expanded(child: Text(value, style: context.typography.textSmRegular)),
      ],
    );
  }
}

class OneValueChild extends StatelessWidget {
  const OneValueChild({
    super.key,
    required this.title,
    required this.child,
  });

  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: OneSpace.s4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("$title:", style: context.typography.textSmSemibold),
          gapW12,
          Expanded(child: child),
        ],
      ),
    );
  }
}
