import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vtah_flutter_intro/modules/slides/SlideProgression.dart';
import 'package:vtah_flutter_intro/responsive.theme.dart';

class SlideProgressionViewer extends StatelessWidget {
  final SlideProgression progression;
  final Color color;

  const SlideProgressionViewer(this.progression, {this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(
            vertical:
                ResponsiveThemeWidget.of(context).style.paddingStyle.paddingM,
            horizontal:
                ResponsiveThemeWidget.of(context).style.paddingStyle.paddingS),
        child: Text(
          "${progression.current} / ${progression.total}",
          style: ResponsiveThemeWidget.of(context)
              .style
              .textStyle
              .display1
              .copyWith(color: color),
        ));
  }
}
