import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:vtah_flutter_intro/responsive.theme.dart';
import 'package:vtah_flutter_intro/slide.theme.dart';

class TwoPanelsLayer extends StatelessWidget {
  const TwoPanelsLayer(
      {@required this.side2,
      this.alignment = Alignment.centerLeft,
      this.mainAlignment = MainAxisAlignment.center,
      this.crossAlignment = CrossAxisAlignment.start,
      @required this.side1});

  final List<Widget> side1;
  final Widget side2;
  final Alignment alignment;
  final MainAxisAlignment mainAlignment;
  final CrossAxisAlignment crossAlignment;

  @override
  Widget build(BuildContext context) {
    ResponsiveThemeBreakpoint breakpoint =
        ResponsiveThemeWidget.of(context).breakpoint;
    return Wrap(children: [
      Flex(
          direction: breakpoint.isVertical ? Axis.vertical : Axis.horizontal,
          mainAxisSize: MainAxisSize.min,
          children: breakpoint.isVertical
              ? _buildVerticalLayout(context)
              : _buildHorizontalLayout(context))
    ]);
  }

  List<Widget> _buildVerticalLayout(BuildContext context) {
    return [
      _buildSide1(context, Axis.vertical),
      _buildSide2(context, Axis.vertical)
    ];
  }

  List<Widget> _buildHorizontalLayout(BuildContext context) {
    return [
      Flexible(
          fit: FlexFit.tight, child: _buildSide1(context, Axis.horizontal)),
      Flexible(fit: FlexFit.tight, child: _buildSide2(context, Axis.horizontal))
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
    BorderSide borderSide =
        BorderSide(color: SlideTheme.of(context).primary, width: 4.0);
    return Container(
      margin: axis == Axis.vertical
          ? EdgeInsets.symmetric(
              vertical:
                  ResponsiveThemeWidget.of(context).style.paddingStyle.paddingL)
          : EdgeInsets.symmetric(
              horizontal: ResponsiveThemeWidget.of(context)
                  .style
                  .paddingStyle
                  .paddingL),
      padding: axis == Axis.vertical
          ? EdgeInsets.symmetric(
              vertical:
                  ResponsiveThemeWidget.of(context).style.paddingStyle.paddingL)
          : EdgeInsets.symmetric(
              horizontal: ResponsiveThemeWidget.of(context)
                  .style
                  .paddingStyle
                  .paddingL),
      decoration: BoxDecoration(
          border: axis == Axis.vertical
              ? Border(top: borderSide)
              : Border(left: borderSide)),
      child: side2,
    );
  }
}
