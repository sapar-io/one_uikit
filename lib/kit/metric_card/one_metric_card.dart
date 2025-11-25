import 'package:flutter/material.dart';
import 'package:one_uikit/one_uikit.dart';

part 'data/metric_card_size.dart';
part 'data/metric_card_trend.dart';
part 'data/metric_card_type.dart';
part 'data/metric_card_view_model.dart';

/// Metric card component matching Untitled UI design system
class OneMetricCard extends StatelessWidget {
  const OneMetricCard({
    super.key,
    required this.viewModel,
  });

  final MetricCardViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return OneCard(
      padding: _getPadding(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildContent(context),
          if (viewModel.actions.isNotEmpty) ...[
            const SizedBox(height: 16),
            Container(
              height: 1,
              color: context.color.border(BorderColorType.secondary),
            ),
            const SizedBox(height: 12),
            _buildActions(context),
          ],
        ],
      ),
    );
  }

  EdgeInsets _getPadding() {
    final isDesktop = viewModel.size == MetricCardSize.desktop;
    return EdgeInsets.all(isDesktop ? 20 : 16);
  }

  Widget _buildContent(BuildContext context) {
    return Stack(
      children: [
        _buildMainContent(context),
        if (viewModel.showDropdownIcon)
          Positioned(
            top: 0,
            right: 0,
            child: InkWell(
              onTap: viewModel.onDropdownTap,
              borderRadius: BorderRadius.circular(4),
              child: Padding(
                padding: const EdgeInsets.all(2),
                child: OneIcons.get(
                  GeneralIcon.dotsVertical,
                  size: 20,
                  color: context.color.foreground(ForegroundColorType.quinary),
                ),
              ),
            ),
          ),
      ],
    );
  }

  Widget _buildMainContent(BuildContext context) {
    switch (viewModel.type) {
      case MetricCardType.simple:
        return _buildSimpleLayout(context);
      case MetricCardType.icon1:
        return _buildIcon1Layout(context);
      case MetricCardType.icon2:
        return _buildIcon2Layout(context);
      case MetricCardType.icon3:
        return _buildIcon3Layout(context);
      case MetricCardType.icon4:
        return _buildIcon4Layout(context);
      case MetricCardType.chart1:
        return _buildChart1Layout(context);
      case MetricCardType.chart2:
        return _buildChart2Layout(context);
      case MetricCardType.chart3:
        return _buildChart3Layout(context);
      case MetricCardType.chart4:
        return _buildChart4Layout(context);
    }
  }

  // Simple: title, value, trend badge
  Widget _buildSimpleLayout(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          viewModel.title,
          style: context.typography.textSmMedium.copyWith(
            color: context.color.text(TextColorType.tertiary),
          ),
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            Expanded(
              child: Text(
                viewModel.value,
                style: context.typography.displayXsSemibold.copyWith(
                  color: context.color.text(TextColorType.primary),
                ),
              ),
            ),
            if (viewModel.trend != null) ...[
              const SizedBox(width: 16),
              _buildTrendBadge(context, viewModel.trend!),
            ],
          ],
        ),
      ],
    );
  }

  // Icon1: featured icon at top, title, value, trend badge
  Widget _buildIcon1Layout(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (viewModel.featuredIcon != null) ...[
          viewModel.featuredIcon!,
          const SizedBox(height: 20),
        ],
        Text(
          viewModel.title,
          style: context.typography.textSmMedium.copyWith(
            color: context.color.text(TextColorType.tertiary),
          ),
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            Expanded(
              child: Text(
                viewModel.value,
                style: context.typography.displayXsSemibold.copyWith(
                  color: context.color.text(TextColorType.primary),
                ),
              ),
            ),
            if (viewModel.trend != null) ...[
              const SizedBox(width: 16),
              _buildTrendBadge(context, viewModel.trend!),
            ],
          ],
        ),
      ],
    );
  }

  // Icon2: featured icon + title in row, value, trend with text
  Widget _buildIcon2Layout(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            if (viewModel.featuredIcon != null) ...[
              viewModel.featuredIcon!,
              const SizedBox(width: 12),
            ],
            Expanded(
              child: Text(
                viewModel.title,
                style: context.typography.textMdSemibold.copyWith(
                  color: context.color.text(TextColorType.primary),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              viewModel.value,
              style: context.typography.displayXsSemibold.copyWith(
                color: context.color.text(TextColorType.primary),
              ),
            ),
            if (viewModel.trend != null) ...[
              const SizedBox(height: 12),
              _buildInlineTrendWithText(context, viewModel.trend!),
            ],
          ],
        ),
      ],
    );
  }

  // Icon3: small icon left, title/value/trend right
  Widget _buildIcon3Layout(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (viewModel.featuredIcon != null) ...[
          viewModel.featuredIcon!,
          const SizedBox(width: 16),
        ],
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                viewModel.title,
                style: context.typography.textSmSemibold.copyWith(
                  color: context.color.text(TextColorType.tertiary),
                ),
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      viewModel.value,
                      style: context.typography.displayXsSemibold.copyWith(
                        color: context.color.text(TextColorType.primary),
                      ),
                    ),
                  ),
                  if (viewModel.trend != null) ...[
                    const SizedBox(width: 16),
                    _buildTrendBadge(context, viewModel.trend!),
                  ],
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  // Icon4: title top, value + trend badge
  Widget _buildIcon4Layout(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          viewModel.title,
          style: context.typography.textMdSemibold.copyWith(
            color: context.color.text(TextColorType.primary),
          ),
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            Expanded(
              child: Text(
                viewModel.value,
                style: context.typography.displayXsSemibold.copyWith(
                  color: context.color.text(TextColorType.primary),
                ),
              ),
            ),
            if (viewModel.trend != null) ...[
              const SizedBox(width: 16),
              _buildTrendBadge(context, viewModel.trend!),
            ],
          ],
        ),
      ],
    );
  }

  // Chart1: title, value, trend + text, line chart
  Widget _buildChart1Layout(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          viewModel.title,
          style: context.typography.textSmMedium.copyWith(
            color: context.color.text(TextColorType.tertiary),
          ),
        ),
        const SizedBox(height: 8),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    viewModel.value,
                    style: context.typography.displayXsSemibold.copyWith(
                      color: context.color.text(TextColorType.primary),
                    ),
                  ),
                  if (viewModel.trend != null) ...[
                    const SizedBox(height: 12),
                    _buildInlineTrendWithText(context, viewModel.trend!),
                  ],
                ],
              ),
            ),
          ],
        ),
        if (viewModel.chart != null) ...[
          const SizedBox(height: 20),
          viewModel.chart!,
        ],
      ],
    );
  }

  // Chart2: icon + title, value + trend + chart right
  Widget _buildChart2Layout(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            if (viewModel.featuredIcon != null) ...[
              viewModel.featuredIcon!,
              const SizedBox(width: 12),
            ],
            Expanded(
              child: Text(
                viewModel.title,
                style: context.typography.textMdSemibold.copyWith(
                  color: context.color.text(TextColorType.primary),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    viewModel.value,
                    style: context.typography.displayXsSemibold.copyWith(
                      color: context.color.text(TextColorType.primary),
                    ),
                  ),
                  if (viewModel.trend != null) ...[
                    const SizedBox(width: 8),
                    Padding(
                      padding: const EdgeInsets.only(top: 4),
                      child: _buildInlineTrend(context, viewModel.trend!),
                    ),
                  ],
                ],
              ),
            ),
            if (viewModel.chart != null) ...[
              const SizedBox(width: 16),
              viewModel.chart!,
            ],
          ],
        ),
      ],
    );
  }

  // Chart3: icon + title, value, trend + text, area chart
  Widget _buildChart3Layout(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            if (viewModel.featuredIcon != null) ...[
              viewModel.featuredIcon!,
              const SizedBox(width: 12),
            ],
            Expanded(
              child: Text(
                viewModel.title,
                style: context.typography.textMdSemibold.copyWith(
                  color: context.color.text(TextColorType.primary),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              viewModel.value,
              style: context.typography.displayXsSemibold.copyWith(
                color: context.color.text(TextColorType.primary),
              ),
            ),
            if (viewModel.trend != null) ...[
              const SizedBox(height: 12),
              _buildInlineTrendWithText(context, viewModel.trend!),
            ],
          ],
        ),
        if (viewModel.chart != null) ...[
          const SizedBox(height: 20),
          viewModel.chart!,
        ],
      ],
    );
  }

  // Chart4: title, value + trend + text, wave chart
  Widget _buildChart4Layout(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          viewModel.title,
          style: context.typography.textSmMedium.copyWith(
            color: context.color.text(TextColorType.tertiary),
          ),
        ),
        const SizedBox(height: 8),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    viewModel.value,
                    style: context.typography.displayXsSemibold.copyWith(
                      color: context.color.text(TextColorType.primary),
                    ),
                  ),
                  if (viewModel.trend != null) ...[
                    const SizedBox(height: 8),
                    _buildInlineTrendWithText(context, viewModel.trend!),
                  ],
                ],
              ),
            ),
          ],
        ),
        if (viewModel.chart != null) ...[
          const SizedBox(height: 20),
          viewModel.chart!,
        ],
      ],
    );
  }

  // Trend badge (rounded container with border)
  Widget _buildTrendBadge(BuildContext context, MetricCardTrend trend) {
    final color = trend.isPositive
        ? context.color.text(TextColorType.secondary)
        : context.color.utility(UtilityColorType.error700);

    final iconColor = trend.isPositive
        ? context.color.foreground(ForegroundColorType.successSecondary)
        : context.color.foreground(ForegroundColorType.errorSecondary);

    return Container(
      padding: const EdgeInsets.only(left: 6, right: 8, top: 2, bottom: 2),
      decoration: BoxDecoration(
        color: context.color.background(BackgroundColorType.primary),
        borderRadius: BorderRadius.circular(6),
        border: Border.all(
          color: context.color.border(BorderColorType.primary),
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 2,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          OneIcons.get(
            trend.isPositive ? ArrowsIcon.arrowUp : ArrowsIcon.arrowDown,
            size: 12,
            color: iconColor,
          ),
          const SizedBox(width: 4),
          Text(
            trend.percentage,
            style: context.typography.textSmMedium.copyWith(color: color),
          ),
        ],
      ),
    );
  }

  // Inline trend (icon + percentage, no container)
  Widget _buildInlineTrend(BuildContext context, MetricCardTrend trend) {
    final color = trend.isPositive
        ? context.color.text(TextColorType.successPrimary)
        : context.color.text(TextColorType.errorPrimary);

    final iconColor = trend.isPositive
        ? context.color.foreground(ForegroundColorType.successSecondary)
        : context.color.foreground(ForegroundColorType.errorSecondary);

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        OneIcons.get(
          trend.isPositive ? ArrowsIcon.arrowUp : ArrowsIcon.arrowDown,
          size: 16,
          color: iconColor,
        ),
        const SizedBox(width: 4),
        Text(
          trend.percentage,
          style: context.typography.textSmMedium.copyWith(color: color),
        ),
      ],
    );
  }

  // Inline trend with text (icon + percentage + text)
  Widget _buildInlineTrendWithText(BuildContext context, MetricCardTrend trend) {
    return Row(
      children: [
        _buildInlineTrend(context, trend),
        if (trend.text != null) ...[
          const SizedBox(width: 8),
          Text(
            trend.text!,
            style: context.typography.textSmMedium.copyWith(
              color: context.color.text(TextColorType.tertiary),
            ),
          ),
        ],
      ],
    );
  }

  Widget _buildActions(BuildContext context) {
    if (viewModel.actions.length == 1) {
      return Align(
        alignment: Alignment.centerRight,
        child: viewModel.actions.first,
      );
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: viewModel.actions,
    );
  }
}
