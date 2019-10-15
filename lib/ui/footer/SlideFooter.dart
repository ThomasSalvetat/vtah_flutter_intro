import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vtah_flutter_intro/dimensions.dart';
import 'package:vtah_flutter_intro/modules/slides/SlideProgression.dart';
import 'package:vtah_flutter_intro/theme.dart';
import 'package:vtah_flutter_intro/ui/progression/SlideProgressionViewer.dart';

class SlideFooter extends StatelessWidget {
  final SlideProgression progression;
  final AmbiantTheme theme;
  final String caption;

  const SlideFooter(this.progression,
      {this.caption = "", this.theme = AmbiantTheme.LIGHT});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(
            vertical: DimensionsTheme.of(context).paddingM,
            horizontal: DimensionsTheme.of(context).paddingXL),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(
            caption,
            style: Theme.of(context)
                .textTheme
                .display1
                .copyWith(color: _getColorFromTheme(theme)),
          ),
          SlideProgressionViewer(progression, color: _getColorFromTheme(theme))
        ]));
  }

  _getColorFromTheme(AmbiantTheme theme) {
    return theme == AmbiantTheme.LIGHT ? Colors.black87 : Colors.white;
  }
}
