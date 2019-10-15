import 'dart:ui';

import 'package:flutter/widgets.dart';
import 'package:vtah_flutter_intro/colors.dart';
import 'package:vtah_flutter_intro/dimensions.dart';
import 'package:vtah_flutter_intro/ui/marker/BulletMarkerTheme.dart';

class _BulletSubMarkerPaint extends CustomPainter {
  final Color color;

  const _BulletSubMarkerPaint({this.color});

  @override
  void paint(Canvas canvas, Size size) {
    double width = size.width;
    double height = size.height;
    canvas.drawCircle(
        Offset(width / 2, height / 2), width, Paint()..color = this.color);
  }

  @override
  bool shouldRepaint(_BulletSubMarkerPaint oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(_BulletSubMarkerPaint oldDelegate) => false;
}

class BulletSubMarker extends StatelessWidget {
  final double size;
  final BulletMarkerTheme theme;

  const BulletSubMarker(
      {this.theme = BulletMarkerTheme.SECONDARY, this.size = 10.0});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(
            horizontal: DimensionsTheme.of(context).paddingM),
        child: CustomPaint(
            painter:
                _BulletSubMarkerPaint(color: _getColorTheme(context, theme)),
            size: Size(size, size * 4)));
  }

  _getColorTheme(BuildContext context, BulletMarkerTheme theme) {
    switch (theme) {
      case BulletMarkerTheme.SECONDARY:
        return ColorsTheme.of(context).secondary;
      case BulletMarkerTheme.WARN:
        return ColorsTheme.of(context).warn;
      default:
        return ColorsTheme.of(context).primary;
    }
  }
}
