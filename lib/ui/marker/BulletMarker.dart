import 'dart:math' as math;
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vtah_flutter_intro/responsive.theme.dart';
import 'package:vtah_flutter_intro/slide.theme.dart';
import 'package:vtah_flutter_intro/ui/marker/BulletMarkerTheme.dart';

class _BulletMarkerPaint extends CustomPainter {
  final Color color;

  const _BulletMarkerPaint({this.color});

  @override
  void paint(Canvas canvas, Size size) {
    canvas.translate(size.width / 2, 0);
    canvas.rotate(math.pi / 4);
    canvas.drawRect(_buildRect(size), Paint()..color = this.color);
  }

  @override
  bool shouldRepaint(_BulletMarkerPaint oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(_BulletMarkerPaint oldDelegate) => false;

  static Rect _buildRect(Size size) => Rect.fromLTRB(
      0, 0, size.width / math.sqrt(2), size.height / math.sqrt(2));
}

class BulletMarker extends StatelessWidget {
  final double fontSize;
  final BulletMarkerTheme theme;

  const BulletMarker(
      {this.theme = BulletMarkerTheme.SECONDARY, @required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(
            horizontal:
                ResponsiveThemeWidget.of(context).style.paddingStyle.paddingM),
        child: CustomPaint(
            painter: _BulletMarkerPaint(color: _getColorTheme(context, theme)),
            size: Size.square(fontSize * 2 / 3)));
  }

  _getColorTheme(BuildContext context, BulletMarkerTheme theme) {
    switch (theme) {
      case BulletMarkerTheme.SECONDARY:
        return SlideTheme.of(context).secondary;
      case BulletMarkerTheme.WARN:
        return SlideTheme.of(context).warn;
      default:
        return SlideTheme.of(context).primary;
    }
  }
}
