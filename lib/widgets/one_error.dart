import 'package:flutter/material.dart';
import 'package:one_uikit/one_uikit.dart';

class OneError extends StatelessWidget {
  const OneError({
    super.key, 
    required this.error, 
    this.stackTrace,
    this.onRetry,
    this.showDetails = false,
  });

  final Object? error;
  final StackTrace? stackTrace;
  final VoidCallback? onRetry;
  final bool showDetails;

  @override
  Widget build(BuildContext context) {
    final errorMessage = error?.toString() ?? 'Неизвестная ошибка';
    debugPrint('errorMessage: $errorMessage');

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: context.color.background(BackgroundColorType.errorPrimary),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: context.color.border(BorderColorType.error),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                Icons.error_outline,
                color: context.color.foreground(ForegroundColorType.errorPrimary),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  'Произошла ошибка',
                  style: context.typography.textLgSemibold.copyWith(
                    color: context.color.text(TextColorType.errorPrimary),
                  ),
                ),
              ),
            ],
          ),
          gapH8,
          Text(
            error?.toString() ?? 'Неизвестная ошибка',
            style: context.typography.textMdRegular,
          ),
          if (onRetry != null) ...[
            gapH12,
            OneButton(
              viewModel: OneButtonViewModel(
                text: 'Повторить',
                onTap: onRetry,
                hierarchy: OneButtonHierarchy.primary,
                size: OneButtonSize.sm,
              ),
            ),
          ],
        ],
      ),
    );
  }
}