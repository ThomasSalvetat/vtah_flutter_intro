import 'dart:math' as math;
import 'dart:ui';

import 'package:flutter/widgets.dart';
import 'package:vtah_flutter_intro/colors.dart';
import 'package:vtah_flutter_intro/dimensions.dart';
import 'package:vtah_flutter_intro/ui/marker/BulletMarkerTheme.dart';

class _BulletMarkerPaint extends CustomPainter {
  final Color color;

  const _BulletMarkerPaint({this.color});

  @override
  void paint(Canvas canvas, Size size) {
    double height = size.height;
    double width = size.width;
    canvas.clipRect(Rect.fromLTWH(-width, 0, width * 2, height / 4),
        clipOp: ClipOp.difference);
    canvas.rotate(math.pi / 4);
    canvas.drawRect(_buildRect(size), Paint()..color = this.color);
  }

  @override
  bool shouldRepaint(_BulletMarkerPaint oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(_BulletMarkerPaint oldDelegate) => false;

  static Rect _buildRect(Size size) =>
      Rect.fromLTWH(0, 0, size.width, size.height);
}

class BulletMarker extends StatelessWidget {
  final double size;
  final BulletMarkerTheme theme;

  const BulletMarker(
      {this.theme = BulletMarkerTheme.SECONDARY, this.size = 10.0});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(
            horizontal: DimensionsTheme.of(context).paddingM),
        child: CustomPaint(
            painter: _BulletMarkerPaint(color: _getColorTheme(context, theme)),
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
