import 'package:flutter/material.dart';
import 'package:one_uikit/one_uikit.dart';

/// Field label with optional required indicator
///
/// Use this for custom field layouts when you need standalone label
class OneFieldLabel extends StatelessWidget {
  const OneFieldLabel({
    super.key,
    required this.label,
    this.isRequired = false,
    this.tooltip,
  });

  final String label;
  final bool isRequired;
  final Widget? tooltip;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            label,
            style: context.typography.textSmMedium.copyWith(
              color: context.color.text(TextColorType.secondary),
            ),
          ),
          if (isRequired) ...[
            const SizedBox(width: 2),
            Text(
              '*',
              style: context.typography.textSmMedium.copyWith(
                color: context.color.utility(UtilityColorType.brand600),
              ),
            ),
          ],
          if (tooltip != null) ...[
            const SizedBox(width: 4),
            tooltip!,
          ],
        ],
      ),
    );
  }
}
