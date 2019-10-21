import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vtah_flutter_intro/responsive.theme.dart';
import 'package:vtah_flutter_intro/slide.theme.dart';

class ThreePanelsLayer extends StatelessWidget {
  const ThreePanelsLayer(
      {@required this.side3, @required this.side1, @required this.side2});

  final List<Widget> side1;
  final List<Widget> side2;
  final Widget side3;

  @override
  Widget build(BuildContext context) {
    ResponsiveThemeBreakpoint breakpoint =
        ResponsiveThemeWidget.of(context).breakpoint;
    return Wrap(children: [
      Flex(
          direction: breakpoint.isVertical ? Axis.vertical : Axis.horizontal,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: breakpoint.isVertical
              ? _buildVerticalLayout(context)
              : _buildHorizontalLayout(context))
    ]);
  }

  List<Widget> _buildVerticalLayout(BuildContext context) {
    return [
      _buildSide1(context, Axis.vertical),
      _buildSide2(context, Axis.vertical),
      _buildSide3(context, Axis.vertical)
    ];
  }

  List<Widget> _buildHorizontalLayout(BuildContext context) {
    return [
      Flexible(
          fit: FlexFit.tight, child: _buildSide1(context, Axis.horizontal)),
      Flexible(
          fit: FlexFit.tight, child: _buildSide2(context, Axis.horizontal)),
      _buildSide3(context, Axis.horizontal)
    ];
  }

  Widget _buildSide1(BuildContext context, Axis axis) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: axis == Axis.horizontal
            ? MainAxisAlignment.start
            : MainAxisAlignment.center,
        children: side1);
  }

  Widget _buildSide2(BuildContext context, Axis axis) {
    return Center(child: Wrap(direction: Axis.horizontal, children: side2));
  }

  Widget _buildSide3(BuildContext context, Axis axis) {
    BorderSide borderSide =
        BorderSide(color: SlideTheme.of(context).primary, width: 4.0);
    return Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            border: axis == Axis.vertical
                ? Border(top: borderSide)
                : Border(left: borderSide)),
        child: side3);
  }
}
