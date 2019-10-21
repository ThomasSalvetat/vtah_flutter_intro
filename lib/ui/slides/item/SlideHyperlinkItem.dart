import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:vtah_flutter_intro/responsive.theme.dart';
import 'package:vtah_flutter_intro/ui/marker/BulletMarker.dart';
import 'package:vtah_flutter_intro/ui/marker/BulletMarkerTheme.dart';
import 'package:vtah_flutter_intro/ui/text/HyperlinkText.dart';

class SlideHyperlinkItem extends StatelessWidget {
  const SlideHyperlinkItem({Key key, @required this.link, this.text})
      : super(key: key);

  final String link;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(
            vertical:
                ResponsiveThemeWidget.of(context).style.paddingStyle.paddingXS),
        child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              BulletMarker(
                  theme: BulletMarkerTheme.WARN,
                  fontSize: ResponsiveThemeWidget.of(context)
                      .style
                      .textStyle
                      .body2
                      .fontSize),
              Expanded(
                  child: HyperlinkText(
                      url: link,
                      text: text,
                      style: ResponsiveThemeWidget.of(context)
                          .style
                          .textStyle
                          .body2))
            ]));
  }
}
