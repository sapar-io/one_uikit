part of '../one_metric_card.dart';

/// Metric card display type
enum MetricCardType {
  /// Simple card: title, value, trend badge
  simple,

  /// Icon type 1: featured icon at top, title, value, trend badge
  icon1,

  /// Icon type 2: featured icon + title in row, value, trend with text
  icon2,

  /// Icon type 3: small icon left, title/value/trend right
  icon3,

  /// Icon type 4: title top, value + trend badge
  icon4,

  /// Chart type 1: title, value, trend + text, line chart
  chart1,

  /// Chart type 2: icon + title, value + trend + chart right
  chart2,

  /// Chart type 3: icon + title, value, trend + text, area chart
  chart3,

  /// Chart type 4: title, value + trend + text, wave chart
  chart4,
}
