import 'package:flutter/material.dart';

part 'one_grid.dart';
part 'one_radius.dart';
part 'one_width.dart';

/// Constant sizes to be used in the app (paddings, gaps, rounded corners etc.)
class OneSpace {
  static const s0 = 0.0;
  static const s2 = 2.0;
  static const s4 = 4.0;
  static const s6 = 6.0;
  static const s8 = 8.0;
  static const s12 = 12.0;
  static const s16 = 16.0;
  static const s20 = 20.0;
  static const s24 = 24.0;
  static const s32 = 32.0;
  static const s48 = 48.0;
  static const s64 = 64.0;
  static const s80 = 80.0;
  static const s96 = 96.0;
  static const s128 = 128.0;
  static const s160 = 160.0;
}

/// Constant gap widths
SizedBox gapW(double space) => SizedBox(width: space);
const gapW2 = SizedBox(width: OneSpace.s2);
const gapW4 = SizedBox(width: OneSpace.s4);
const gapW6 = SizedBox(width: OneSpace.s6);
const gapW8 = SizedBox(width: OneSpace.s8);
const gapW12 = SizedBox(width: OneSpace.s12);
const gapW16 = SizedBox(width: OneSpace.s16);
const gapW20 = SizedBox(width: OneSpace.s20);
const gapW24 = SizedBox(width: OneSpace.s24);
const gapW32 = SizedBox(width: OneSpace.s32);
const gapW48 = SizedBox(width: OneSpace.s48);
const gapW64 = SizedBox(width: OneSpace.s64);
const gapW80 = SizedBox(width: OneSpace.s80);
const gapW96 = SizedBox(width: OneSpace.s96);
const gapW128 = SizedBox(width: OneSpace.s128);
const gapW160 = SizedBox(width: OneSpace.s160);

/// Constant gap heights
SizedBox gapH(double space) => SizedBox(height: space);
const gapH2 = SizedBox(height: OneSpace.s2);
const gapH4 = SizedBox(height: OneSpace.s4);
const gapH6 = SizedBox(height: OneSpace.s6);
const gapH8 = SizedBox(height: OneSpace.s8);
const gapH12 = SizedBox(height: OneSpace.s12);
const gapH16 = SizedBox(height: OneSpace.s16);
const gapH20 = SizedBox(height: OneSpace.s20);
const gapH24 = SizedBox(height: OneSpace.s24);
const gapH32 = SizedBox(height: OneSpace.s32);
const gapH48 = SizedBox(height: OneSpace.s48);
const gapH64 = SizedBox(height: OneSpace.s64);
const gapH80 = SizedBox(height: OneSpace.s80);
const gapH96 = SizedBox(height: OneSpace.s96);
const gapH128 = SizedBox(height: OneSpace.s128);
const gapH160 = SizedBox(height: OneSpace.s160);
