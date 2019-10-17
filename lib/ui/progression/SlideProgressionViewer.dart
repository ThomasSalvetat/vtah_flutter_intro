import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vtah_flutter_intro/modules/slides/SlideProgression.dart';
import 'package:vtah_flutter_intro/slide.theme.dart';

class SlideProgressionViewer extends StatelessWidget {
  final SlideProgression progression;
  final Color color;

  const SlideProgressionViewer(this.progression, {this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(
            vertical: SlideTheme.of(context).paddingM,
            horizontal: SlideTheme.of(context).paddingS),
        child: Text(
          "${progression.current} / ${progression.total}",
          style: Theme.of(context).textTheme.display1.copyWith(color: color),
        ));
  }
}
