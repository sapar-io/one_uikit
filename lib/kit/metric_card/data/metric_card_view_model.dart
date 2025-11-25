part of '../one_metric_card.dart';

/// View model for metric card
class MetricCardViewModel {
  const MetricCardViewModel({
    required this.title,
    required this.value,
    this.trend,
    this.type = MetricCardType.simple,
    this.size = MetricCardSize.desktop,
    this.featuredIcon,
    this.chart,
    this.actions = const [],
    this.showDropdownIcon = false,
    this.onDropdownTap,
  });

  /// Card title (e.g., "Views 24 hours")
  final String title;

  /// Main value to display (e.g., "2,000")
  final String value;

  /// Trend information (percentage, text, positive/negative)
  final MetricCardTrend? trend;

  /// Display type of the card
  final MetricCardType type;

  /// Size of the card (mobile/desktop)
  final MetricCardSize size;

  /// Optional featured icon widget
  final Widget? featuredIcon;

  /// Optional chart widget
  final Widget? chart;

  /// Action widgets (e.g., buttons, links)
  final List<Widget> actions;

  /// Whether to show dropdown icon (three dots)
  final bool showDropdownIcon;

  /// Callback when dropdown icon is tapped
  final VoidCallback? onDropdownTap;
}
