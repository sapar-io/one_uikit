import 'package:flutter/material.dart';
import 'package:one_uikit/one_uikit.dart';

class OneFieldLabel extends StatelessWidget {
  const OneFieldLabel({
    super.key,
    required this.label,
    this.isRequired = false,
  });
  final String label;
  final bool isRequired;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: Row(
        children: [
          Text(
            label,
            style: context.typography.textSmMedium.copyWith(
              color: context.color.text(TextColorType.secondary),
            ),
          ),
          const SizedBox(width: 2),
          if (isRequired)
            Text(
              '*',
              style: context.typography.textSmMedium.copyWith(
                color: context.color.text(TextColorType.errorPrimary),
              ),
            ),
        ],
      ),
    );
  }
}
