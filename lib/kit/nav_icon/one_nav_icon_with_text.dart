import 'package:flutter/material.dart';
import 'package:one_uikit/one_uikit.dart';

/// Navigation Icon with Text component
///
/// Combines OneNavIcon with text label
/// Text style automatically adjusts based on icon size
class OneNavIconWithText extends StatelessWidget {
  const OneNavIconWithText({
    super.key,
    required this.viewModel,
    required this.text,
    this.gap = 12,
  });

  final OneNavIconViewModel viewModel;
  final String text;
  final double gap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: _getIconPadding(),
          child: OneNavIcon(viewModel: viewModel),
        ),
        SizedBox(width: gap),
        Expanded(
          child: Text(
            text,
            style: _getTextStyle(context),
          ),
        ),
      ],
    );
  }

  /// Get padding for icon to align with text
  EdgeInsets _getIconPadding() {
    switch (viewModel.size) {
      case OneNavIconSize.sm:
      case OneNavIconSize.md:
        return const EdgeInsets.only(top: 2);
      case OneNavIconSize.lg:
      case OneNavIconSize.xl:
        return EdgeInsets.zero;
    }
  }

  /// Get text style based on icon size
  TextStyle _getTextStyle(BuildContext context) {
    final baseStyle = switch (viewModel.size) {
      OneNavIconSize.sm || OneNavIconSize.md => context.typography.textMdRegular,
      OneNavIconSize.lg || OneNavIconSize.xl => context.typography.textLgRegular,
    };

    return baseStyle.copyWith(
      color: context.color.text(TextColorType.tertiary),
    );
  }
}
