import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vtah_flutter_intro/colors.dart';
import 'package:vtah_flutter_intro/modules/slides/SlideProgression.dart';
import 'package:vtah_flutter_intro/theme.dart';
import 'package:vtah_flutter_intro/ui/flutter/FlutterAnimatedLogo.dart';
import 'package:vtah_flutter_intro/ui/footer/SlideFooter.dart';
import 'package:vtah_flutter_intro/ui/layout/ScrollableLayout.dart';

import '../../../dimensions.dart';

class SlideTypeRoot extends StatelessWidget {
  const SlideTypeRoot(
      {Key key,
      @required this.title,
      @required this.subtitle,
      this.author,
      @required this.progression})
      : super(key: key);

  final String title;
  final String subtitle;
  final String author;
  final SlideProgression progression;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorsTheme.of(context).primary,
        body: ScrollableLayout(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
              Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: DimensionsTheme.of(context).paddingXL,
                      horizontal: DimensionsTheme.of(context).paddingXL),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(title,
                            style: Theme.of(context)
                                .textTheme
                                .display3
                                .copyWith(color: Colors.white)),
                        Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: DimensionsTheme.of(context).paddingM),
                            child: Text(
                              subtitle,
                              style: Theme.of(context)
                                  .textTheme
                                  .display2
                                  .copyWith(color: Colors.white),
                            ))
                      ])),
              Flexible(flex: 2, child: Center(child: FlutterAnimatedLogo())),
              SlideFooter(
                progression,
                caption: author,
                theme: AmbiantTheme.DARK,
              ),
            ])));
  }
}
