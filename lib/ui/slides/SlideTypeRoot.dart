import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vtah_flutter_intro/colors.dart';

import '../../dimensions.dart';

class SlideTypeRoot extends StatelessWidget {
  final String title;
  final String subtitle;

  const SlideTypeRoot({this.title, this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorsTheme.of(context).primary,
        body: Padding(
            padding: EdgeInsets.all(DimensionsTheme.of(context).paddingXL),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    title,
                    style: Theme.of(context)
                        .textTheme
                        .display3
                        .copyWith(color: Colors.white),
                  ),
                  Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: DimensionsTheme.of(context).paddingM,
                          horizontal: DimensionsTheme.of(context).paddingS),
                      child: Text(
                        subtitle,
                        style: Theme.of(context)
                            .textTheme
                            .title
                            .copyWith(color: Colors.white),
                      ))
                ])));
  }
}
