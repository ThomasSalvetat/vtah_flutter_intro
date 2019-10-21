import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:vtah_flutter_intro/responsive.theme.dart';
import 'package:vtah_flutter_intro/ui/marker/BulletMarker.dart';
import 'package:vtah_flutter_intro/ui/marker/BulletMarkerTheme.dart';

class SlideListItem extends StatelessWidget {
  const SlideListItem(
      {Key key, @required this.text, this.theme = BulletMarkerTheme.SECONDARY})
      : super(key: key);

  final String text;
  final BulletMarkerTheme theme;

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          BulletMarker(
              theme: theme,
              fontSize: ResponsiveThemeWidget.of(context)
                  .style
                  .textStyle
                  .body1
                  .fontSize),
          Expanded(
              child: Text(
            text,
            style: ResponsiveThemeWidget.of(context).style.textStyle.body1,
          ))
        ]);
  }
}
