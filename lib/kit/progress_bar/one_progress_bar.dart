import 'package:flutter/material.dart';
import 'package:one_uikit/foundation/colors/one_colors.dart';
import 'package:one_uikit/foundation/effect_style/one_shadow.dart';
import 'package:one_uikit/foundation/typography/one_typography.dart';

/// Progress bar label position type
enum ProgressBarLabelType {
  /// No label displayed
  none,

  /// Label displayed on the right side of the progress bar
  right,

  /// Label displayed below the progress bar
  bottom,

  /// Floating label above the progress indicator
  topFloating,

  /// Floating label below the progress indicator
  bottomFloating,
}

/// OneProgressBar - A customizable progress bar component
///
/// Example usage:
/// ```dart
/// OneProgressBar(
///   progress: 0.5, // 50%
///   labelType: ProgressBarLabelType.right,
/// )
/// ```
class OneProgressBar extends StatelessWidget {
  const OneProgressBar({
    super.key,
    required this.progress,
    this.labelType = ProgressBarLabelType.none,
    this.width,
  }) : assert(
         progress >= 0 && progress <= 1,
         'Progress must be between 0 and 1',
       );

  /// Progress value from 0.0 to 1.0
  final double progress;

  /// Label display type
  final ProgressBarLabelType labelType;

  /// Custom width for the progress bar (default is double.infinity)
  final double? width;

  @override
  Widget build(BuildContext context) {
    final progressPercent = (progress * 100).round();
    final progressText = '$progressPercent%';

    switch (labelType) {
      case ProgressBarLabelType.none:
        return _buildProgressBar(context);

      case ProgressBarLabelType.right:
        return Row(
          children: [
            Expanded(child: _buildProgressBar(context)),
            const SizedBox(width: 12),
            Text(
              progressText,
              style: context.typography.textSmMedium.copyWith(
                color: context.color.text(TextColorType.secondary),
              ),
            ),
          ],
        );

      case ProgressBarLabelType.bottom:
        return Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            _buildProgressBar(context),
            const SizedBox(height: 8),
            Text(
              progressText,
              style: context.typography.textSmMedium.copyWith(
                color: context.color.text(TextColorType.secondary),
              ),
            ),
          ],
        );

      case ProgressBarLabelType.topFloating:
        return _buildProgressBarWithFloatingLabel(
          context,
          progressText,
          isTop: true,
        );

      case ProgressBarLabelType.bottomFloating:
        return _buildProgressBarWithFloatingLabel(
          context,
          progressText,
          isTop: false,
        );
    }
  }

  Widget _buildProgressBar(BuildContext context) {
    return SizedBox(
      width: width ?? double.infinity,
      height: 8,
      child: Stack(
        children: [
          // Background track
          Container(
            width: double.infinity,
            height: 8,
            decoration: BoxDecoration(
              color: context.color.background(BackgroundColorType.quaternary),
              borderRadius: BorderRadius.circular(100),
            ),
          ),
          // Progress indicator
          if (progress > 0)
            LayoutBuilder(
              builder: (context, constraints) {
                final progressWidth = constraints.maxWidth * progress;
                return Container(
                  width: progressWidth,
                  height: 8,
                  decoration: BoxDecoration(
                    color: context.color.foreground(
                      ForegroundColorType.brandPrimary,
                    ),
                    borderRadius: BorderRadius.circular(100),
                  ),
                );
              },
            ),
        ],
      ),
    );
  }

  Widget _buildProgressBarWithFloatingLabel(
    BuildContext context,
    String text, {
    required bool isTop,
  }) {
    return SizedBox(
      width: width ?? double.infinity,
      height: 8,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          // Background track
          Container(
            width: double.infinity,
            height: 8,
            decoration: BoxDecoration(
              color: context.color.background(BackgroundColorType.quaternary),
              borderRadius: BorderRadius.circular(100),
            ),
          ),
          // Progress indicator with floating label
          if (progress > 0)
            LayoutBuilder(
              builder: (context, constraints) {
                final progressWidth = constraints.maxWidth * progress;

                return Stack(
                  clipBehavior: Clip.none,
                  children: [
                    // Progress bar
                    Container(
                      width: progressWidth,
                      height: 8,
                      decoration: BoxDecoration(
                        color: context.color.foreground(
                          ForegroundColorType.brandPrimary,
                        ),
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                    // Floating label positioned at the end of progress
                    Positioned(
                      left: progressWidth - 20, // Center on progress end
                      top: isTop ? -42 : 16,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 8,
                        ),
                        decoration: BoxDecoration(
                          color: context.color.background(
                            BackgroundColorType.primaryAlt,
                          ),
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: context.color.border(BorderColorType.secondary),
                            width: 1,
                          ),
                          boxShadow: context.shadow.get(OneShadowSize.lg),
                        ),
                        child: Text(
                          text,
                          style: context.typography.textXsSemibold.copyWith(
                            color: context.color.text(TextColorType.secondary),
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
        ],
      ),
    );
  }
}
