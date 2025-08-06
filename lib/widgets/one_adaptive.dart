import 'package:flutter/material.dart';
import 'package:one_uikit/one_uikit.dart';

enum OneAdaptiveType {
  mobile,
  tablet,
  desktop,
}

extension OneAdaptiveTypeX on OneAdaptiveType {
  bool get isMobile => this == OneAdaptiveType.mobile;
  bool get isTablet => this == OneAdaptiveType.tablet;
  bool get isDesktop => this == OneAdaptiveType.desktop;
}

class OneAdaptive extends StatelessWidget {
  const OneAdaptive({
    super.key,
    this.mobile,
    this.tablet,
    required this.desktop,
  });

  final Widget Function(OneAdaptiveType)? mobile;
  final Widget Function(OneAdaptiveType)? tablet;
  final Widget Function(OneAdaptiveType) desktop;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth <= OneWidth.lg) {
          return mobile?.call(OneAdaptiveType.mobile) ??
              tablet?.call(OneAdaptiveType.mobile) ??
              desktop.call(OneAdaptiveType.mobile);
        } else if (constraints.maxWidth <= OneWidth.x2l) {
          return tablet?.call(OneAdaptiveType.tablet) ??
              mobile?.call(OneAdaptiveType.tablet) ??
              desktop.call(OneAdaptiveType.tablet);
        } else {
          return desktop.call(OneAdaptiveType.desktop);
        }
      },
    );
  }
}

class OneAdaptiveSize extends StatelessWidget {
  const OneAdaptiveSize({
    super.key,
    required this.adaptive,
  });

  final Widget Function(OneAdaptiveType) adaptive;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth <= OneWidth.lg) {
          return adaptive.call(OneAdaptiveType.mobile);
        } else if (constraints.maxWidth <= OneWidth.x2l) {
          return adaptive.call(OneAdaptiveType.tablet);
        } else {
          return adaptive.call(OneAdaptiveType.desktop);
        }
      },
    );
  }
}
