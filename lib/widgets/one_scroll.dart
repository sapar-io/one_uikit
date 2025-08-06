import 'package:flutter/material.dart';
import 'package:one_uikit/one_uikit.dart';

class OneScroll extends StatelessWidget {
  const OneScroll({
    super.key,
    this.child,
    this.children,
    this.padding,
    this.isThin = true,
    this.bottomBigPadding = false,
    this.controller,
    this.addPadding,
    this.physics,
  });

  final Widget? child;
  final List<Widget>? children;
  final bool isThin;
  final EdgeInsets? padding;
  final bool bottomBigPadding;
  final ScrollController? controller;
  final double? addPadding;
  final ScrollPhysics? physics;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: LayoutBuilder(
        builder: (context, constraints) {
          final widgetPadding = padding ??
              (bottomBigPadding
                  ? const EdgeInsets.fromLTRB(16, 16, 16, 100)
                  : const EdgeInsets.all(16));

          if (isThin) {
            return SingleChildScrollView(
              physics: physics,
              controller: controller,
              padding: widgetPadding,
              child: Center(
                child: Container(
                  constraints: BoxConstraints(
                    maxWidth: OneGrid.maxWidth + ((addPadding ?? 0) * 2),
                  ),
                  child: _buildChild(context),
                ),
              ),
            );
          }

          return SingleChildScrollView(
            physics: physics,
            controller: controller,
            padding: widgetPadding,
            child: _buildChild(context),
          );
        },
      ),
    );
  }

  Widget _buildChild(BuildContext context) {
    if (child != null) {
      return child!;
    } else if (children != null) {
      return SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: children!,
        ),
      );
    }
    return const SizedBox.shrink();
  }
}
