import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vtah_flutter_intro/modules/slides/SlideProgression.dart';
import 'package:vtah_flutter_intro/slide.theme.dart';
import 'package:vtah_flutter_intro/theme.dart';
import 'package:vtah_flutter_intro/ui/flutter/FlutterAnimatedLogo.dart';
import 'package:vtah_flutter_intro/ui/footer/SlideFooter.dart';

class SlideTypeRoot extends StatelessWidget {
  const SlideTypeRoot({
    Key key,
    @required this.title,
    @required this.subtitle,
    this.author,
    @required this.progression,
    this.child,
  }) : super(key: key);

  final String title;
  final String subtitle;
  final String author;
  final Widget child;
  final SlideProgression progression;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: SlideTheme.of(context).primary,
        body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: SlideTheme.of(context).paddingXL,
                      horizontal: SlideTheme.of(context).paddingXL),
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
                                vertical: SlideTheme.of(context).paddingM),
                            child: Text(
                              subtitle,
                              style: Theme.of(context)
                                  .textTheme
                                  .display2
                                  .copyWith(color: Colors.white),
                            ))
                      ])),
              Flexible(
                  flex: 2,
                  child: Center(child: child ?? FlutterAnimatedLogo())),
              SlideFooter(
                progression,
                caption: author,
                theme: AmbiantTheme.DARK,
              ),
            ]));
  }
}
