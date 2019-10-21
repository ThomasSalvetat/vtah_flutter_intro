import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vtah_flutter_intro/modules/slides/SlideProgression.dart';
import 'package:vtah_flutter_intro/responsive.theme.dart';
import 'package:vtah_flutter_intro/slide.theme.dart';
import 'package:vtah_flutter_intro/ui/footer/SlideFooter.dart';

class SlideTypeTitle extends StatelessWidget {
  const SlideTypeTitle(
      {Key key,
      @required this.title,
      this.subtitle,
      @required this.progression,
      @required this.child})
      : super(key: key);

  final String title;
  final String subtitle;
  final Widget child;
  final SlideProgression progression;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisSize: MainAxisSize.max, children: <Widget>[
        Container(
            alignment: Alignment.bottomLeft,
            padding: EdgeInsets.symmetric(
                vertical: ResponsiveThemeWidget.of(context)
                    .style
                    .paddingStyle
                    .paddingL,
                horizontal: ResponsiveThemeWidget.of(context)
                    .style
                    .paddingStyle
                    .paddingXL),
            decoration: BoxDecoration(color: SlideTheme.of(context).primary),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                verticalDirection: subtitle != null
                    ? VerticalDirection.down
                    : VerticalDirection.up,
                children: [
                  Text(title,
                      style: ResponsiveThemeWidget.of(context)
                          .style
                          .textStyle
                          .display2
                          .copyWith(color: Colors.white)),
                  Text(
                    subtitle ?? "",
                    style: ResponsiveThemeWidget.of(context)
                        .style
                        .textStyle
                        .headline
                        .copyWith(color: Colors.white),
                  )
                ])),
        Expanded(
            child: Stack(alignment: Alignment.bottomRight, children: [
          Align(
              alignment: ResponsiveThemeWidget.of(context).breakpoint.isVertical
                  ? Alignment.topCenter
                  : Alignment.center,
              child: SingleChildScrollView(
                  child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: ResponsiveThemeWidget.of(context)
                              .style
                              .paddingStyle
                              .paddingXL,
                          vertical: ResponsiveThemeWidget.of(context)
                              .style
                              .paddingStyle
                              .paddingM),
                      child: child))),
          SlideFooter(progression)
        ]))
      ]),
    );
  }
}
