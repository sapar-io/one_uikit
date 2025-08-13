import 'package:flutter/material.dart';
import 'package:one_uikit/one_uikit.dart';

extension AppBarWidth on BuildContext {
  PreferredSize? appBarChild(
    Widget child, {
    bool isThin = true,
    bool? centerTitle,
    List<Widget>? actions,
    Widget? leading,
    Widget? bottom,
    // Color? backgroundColor,
    IconThemeData? iconTheme,
  }) {
    final height = bottom == null ? kToolbarHeight : kToolbarHeight * 2;
    final bottomWidget = bottom == null
        ? null
        : PreferredSize(
            preferredSize: const Size.fromHeight(kToolbarHeight),
            child: bottom,
          );

    if (isThin) {
      return PreferredSize(
        preferredSize: Size.fromHeight(height),
        child: Container(
          color: color.background(BackgroundColorType.primary),
          child: Center(
            child: Container(
              constraints:
                  const BoxConstraints(maxWidth: OneGrid.maxWidth + 16 * 2),
              child: AppBar(
                title: child,
                centerTitle: centerTitle,
                leading: leading,
                actions: actions,
                bottom: bottomWidget,
                iconTheme: iconTheme,
              ),
            ),
          ),
        ),
      );
    } else {
      return PreferredSize(
        preferredSize: Size.fromHeight(height),
        child: Container(
          color: color.background(BackgroundColorType.primary),
          child: AppBar(
            title: child,
            centerTitle: centerTitle,
            leading: leading,
            actions: actions,
            bottom: bottomWidget,
            iconTheme: iconTheme,
          ),
        ),
      );
    }
  }

  PreferredSize? appBar(
    String title, {
    bool isThin = true,
    bool? centerTitle,
    List<Widget>? actions,
    Widget? leading,
    Widget? bottom,
  }) {
    return appBarChild(
      Text(title),
      isThin: isThin,
      centerTitle: centerTitle,
      actions: actions,
      leading: leading,
      bottom: bottom,
    );
  }
}
