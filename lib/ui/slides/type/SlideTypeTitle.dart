import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vtah_flutter_intro/modules/slides/SlideProgression.dart';
import 'package:vtah_flutter_intro/slide.theme.dart';
import 'package:vtah_flutter_intro/ui/footer/SlideFooter.dart';
import 'package:vtah_flutter_intro/ui/layout/ScrollableLayout.dart';

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
        body: ScrollableLayout(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
                alignment: Alignment.bottomLeft,
                padding: EdgeInsets.symmetric(
                    vertical: SlideTheme.of(context).paddingL,
                    horizontal: SlideTheme.of(context).paddingXL),
                decoration:
                    BoxDecoration(color: SlideTheme.of(context).primary),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    verticalDirection: subtitle != null
                        ? VerticalDirection.down
                        : VerticalDirection.up,
                    children: [
                      Text(title,
                          style: Theme.of(context)
                              .textTheme
                              .display2
                              .copyWith(color: Colors.white)),
                      Text(
                        subtitle ?? "",
                        style: Theme.of(context)
                            .textTheme
                            .headline
                            .copyWith(color: Colors.white),
                      )
                    ])),
            Flexible(
                flex: 3,
                fit: FlexFit.tight,
                child: Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: SlideTheme.of(context).paddingXL,
                        vertical: SlideTheme.of(context).paddingM),
                    child: child)),
            SlideFooter(progression),
          ]),
    ));
  }
}
