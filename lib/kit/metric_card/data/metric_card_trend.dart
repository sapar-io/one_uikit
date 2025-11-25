part of '../one_metric_card.dart';

/// Metric card trend data
class MetricCardTrend {
  const MetricCardTrend({
    required this.percentage,
    this.text,
    this.isPositive = true,
    this.displayType = MetricCardTrendDisplayType.badge,
  });

  /// Trend percentage (e.g., "100%")
  final String percentage;

  /// Optional trend text (e.g., "vs last month")
  final String? text;

  /// Whether the trend is positive (green) or negative (red)
  final bool isPositive;

  /// How to display the trend
  final MetricCardTrendDisplayType displayType;
}

/// Trend display type
enum MetricCardTrendDisplayType {
  /// Badge style: rounded container with border
  badge,

  /// Inline style: icon + percentage (no container)
  inline,

  /// Inline with text: icon + percentage + text
  inlineWithText,
}
