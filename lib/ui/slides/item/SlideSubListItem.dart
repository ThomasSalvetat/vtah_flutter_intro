import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:vtah_flutter_intro/responsive.theme.dart';
import 'package:vtah_flutter_intro/ui/marker/BulletMarkerTheme.dart';
import 'package:vtah_flutter_intro/ui/marker/BulletSubMarker.dart';

class SlideSubListItem extends StatelessWidget {
  const SlideSubListItem(
      {Key key, @required this.text, this.theme = BulletMarkerTheme.PRIMARY})
      : super(key: key);

  final String text;
  final BulletMarkerTheme theme;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(
            vertical:
                ResponsiveThemeWidget.of(context).style.paddingStyle.paddingXS,
            horizontal:
                ResponsiveThemeWidget.of(context).style.paddingStyle.paddingXL),
        child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              BulletSubMarker(
                  theme: theme,
                  size: ResponsiveThemeWidget.of(context)
                      .style
                      .textStyle
                      .body2
                      .fontSize),
              Expanded(
                  child: Text(
                text,
                style: ResponsiveThemeWidget.of(context).style.textStyle.body2,
              ))
            ]));
  }
}
