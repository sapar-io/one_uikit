import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:one_uikit/one_uikit.dart';
import 'package:one_uikit/widgets/async_value_widget.dart';

class AsyncValueList<T> extends StatelessWidget {
  const AsyncValueList({
    super.key,
    required this.value,
    required this.itemBuilder,
    this.emptyWidget,
    this.padding = const EdgeInsets.only(
      top: 16,
      left: 16,
      right: 16,
      bottom: 100,
    ),
    this.spacing = 12,
    this.scrollDirection = Axis.vertical,
    this.shrinkWrap = false,
    this.physics,
  });

  final AsyncValue<List<T>> value;
  final Widget Function(BuildContext, T, int) itemBuilder;
  final Widget? emptyWidget;
  final EdgeInsetsGeometry padding;
  final double spacing;
  final Axis scrollDirection;
  final bool shrinkWrap;
  final ScrollPhysics? physics;

  @override
  Widget build(BuildContext context) {
    return AsyncValueWidget<List<T>>(
      value: value,
      data: (data) {
        if (data.isEmpty) {
          return Padding(
            padding: padding,
            child: emptyWidget ?? const OneEmpty(),
          );
        }
        return ListView.separated(
          scrollDirection: scrollDirection,
          padding: padding,
          itemCount: data.length,
          shrinkWrap: shrinkWrap,
          physics: physics,
          itemBuilder: (context, index) {
            return itemBuilder(context, data[index], index);
          },
          separatorBuilder: (context, index) {
            return SizedBox(
              height: spacing,
              width: spacing,
            );
          },
        );
      },
      empty: emptyWidget ?? const OneEmpty(),
    );
  }
}
