import 'package:flutter/material.dart';
import 'package:one_uikit/extension/color_extension.dart';
import 'package:one_uikit/foundation/colors/one_colors.dart';

enum OneShadowSize {
  skeumorphic,
  xs,
  sm,
  md,
  lg,
  xl,
  xxl,
  xxxl,
}

extension BuildContextShadow on BuildContext {
  OneShadow get shadow => OneShadow(this);
}

class OneShadow {
  final BuildContext context;

  OneShadow(this.context);

  List<BoxShadow> get(OneShadowSize size) {
    final isLight = Theme.of(context).brightness == Brightness.light;
    final color = Theme.of(context).colorScheme.primary;
    final brandColor = color.materialColor;

    switch (size) {
      case OneShadowSize.skeumorphic:
        return [
          BoxShadow(
            color:
                OneColorsHelper.shadow(ShadowColorType.xs, isLight, brandColor),
            offset: const Offset(0, 1),
            blurRadius: 2,
          ),
        ];
      case OneShadowSize.xs:
        return [
          BoxShadow(
            color:
                OneColorsHelper.shadow(ShadowColorType.xs, isLight, brandColor),
            offset: const Offset(0, 1),
            blurRadius: 2,
          ),
        ];
      case OneShadowSize.sm:
        return [
          BoxShadow(
            color: OneColorsHelper.shadow(
                ShadowColorType.sm1, isLight, brandColor),
            offset: const Offset(0, 1),
            blurRadius: 3,
          ),
          BoxShadow(
            color: OneColorsHelper.shadow(
                ShadowColorType.sm2, isLight, brandColor),
            offset: const Offset(0, 1),
            blurRadius: 2,
          ),
        ];
      case OneShadowSize.md:
        return [
          BoxShadow(
            color: OneColorsHelper.shadow(
                ShadowColorType.md1, isLight, brandColor),
            offset: const Offset(0, 4),
            blurRadius: 8,
            spreadRadius: -2,
          ),
          BoxShadow(
            color: OneColorsHelper.shadow(
                ShadowColorType.md2, isLight, brandColor),
            offset: const Offset(0, 2),
            blurRadius: 4,
            spreadRadius: -2,
          ),
        ];
      case OneShadowSize.lg:
        return [
          BoxShadow(
            color: OneColorsHelper.shadow(
                ShadowColorType.lg1, isLight, brandColor),
            offset: const Offset(0, 12),
            blurRadius: 16,
            spreadRadius: -4,
          ),
          BoxShadow(
            color: OneColorsHelper.shadow(
                ShadowColorType.lg2, isLight, brandColor),
            offset: const Offset(0, 4),
            blurRadius: 6,
            spreadRadius: -2,
          ),
        ];
      case OneShadowSize.xl:
        return [
          BoxShadow(
            color: OneColorsHelper.shadow(
                ShadowColorType.xl1, isLight, brandColor),
            offset: const Offset(0, 20),
            blurRadius: 24,
            spreadRadius: -4,
          ),
          BoxShadow(
            color: OneColorsHelper.shadow(
                ShadowColorType.xl2, isLight, brandColor),
            offset: const Offset(0, 8),
            blurRadius: 8,
            spreadRadius: -4,
          ),
        ];
      case OneShadowSize.xxl:
        return [
          BoxShadow(
            color: OneColorsHelper.shadow(
                ShadowColorType.xxl, isLight, brandColor),
            offset: const Offset(0, 24),
            blurRadius: 48,
            spreadRadius: -12,
          ),
        ];
      case OneShadowSize.xxxl:
        return [
          BoxShadow(
            color: OneColorsHelper.shadow(
                ShadowColorType.xxxl, isLight, brandColor),
            offset: const Offset(0, 32),
            blurRadius: 64,
            spreadRadius: -12,
          ),
        ];
    }
  }
}
