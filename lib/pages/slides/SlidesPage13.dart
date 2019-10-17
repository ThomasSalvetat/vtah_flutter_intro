import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vtah_flutter_intro/examples/ContainerDemo.ctt.dart';
import 'package:vtah_flutter_intro/modules/slides/SlideProgression.dart';
import 'package:vtah_flutter_intro/slide.theme.dart';
import 'package:vtah_flutter_intro/ui/file/CCTFileBuilder.dart';
import 'package:vtah_flutter_intro/ui/slides/item/SlideCodeItem.dart';
import 'package:vtah_flutter_intro/ui/slides/item/SlideListItem.dart';
import 'package:vtah_flutter_intro/ui/slides/item/SlideSubListItem.dart';
import 'package:vtah_flutter_intro/ui/slides/layers/ThreePanelsLayer.dart';
import 'package:vtah_flutter_intro/ui/slides/type/SlideTypeTitle.dart';

class SlidesPage13 extends StatelessWidget {
  const SlidesPage13({Key key, @required this.progression}) : super(key: key);
  final SlideProgression progression;

  @override
  Widget build(BuildContext context) {
    return SlideTypeTitle(
      title: 'Quelques widgets',
      subtitle: 'Container',
      child: CCTFileBuilder(
          name: "ContainerDemo",
          builder: (context, containerDemo) => ThreePanelsLayer(
                  side1: <Widget>[
                    SlideListItem(text: "Widget combinant plusieurs aspects :"),
                    SlideSubListItem(text: "Painting"),
                    SlideSubListItem(text: "Positioning"),
                    SlideSubListItem(text: "Sizing"),
                  ],
                  side2: [
                    SlideCodeItem(content: containerDemo)
                  ],
                  fixed: Padding(
                      padding: EdgeInsets.all(SlideTheme.of(context).paddingXL),
                      child: ContainerDemo()))),
      progression: progression,
    );
  }
}
