import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vtah_flutter_intro/dimensions.dart';
import 'package:vtah_flutter_intro/examples/AnimatedContainerDemo.ctt.dart';
import 'package:vtah_flutter_intro/modules/slides/SlideProgression.dart';
import 'package:vtah_flutter_intro/ui/file/CCTFileBuilder.dart';
import 'package:vtah_flutter_intro/ui/slides/item/SlideCodeItem.dart';
import 'package:vtah_flutter_intro/ui/slides/item/SlideListItem.dart';
import 'package:vtah_flutter_intro/ui/slides/layers/ThreePanelsLayer.dart';
import 'package:vtah_flutter_intro/ui/slides/type/SlideTypeTitle.dart';

class SlidesPage30 extends StatelessWidget {
  const SlidesPage30({Key key, @required this.progression}) : super(key: key);
  final SlideProgression progression;

  @override
  Widget build(BuildContext context) {
    return SlideTypeTitle(
      title: 'Animations',
      subtitle: 'AnimatedContainer',
      child: CCTFileBuilder(
          name: "AnimatedContainerDemo",
          builder: (context, animatedContainerDemo) => ThreePanelsLayer(
                  side1: <Widget>[
                    SlideListItem(text: "La version animée d'un Container")
                  ],
                  side2: [
                    SlideCodeItem(content: animatedContainerDemo),
                  ],
                  fixed: Padding(
                      padding:
                          EdgeInsets.all(DimensionsTheme.of(context).paddingXL),
                      child: AnimatedContainerDemo()))),
      progression: progression,
    );
  }
}
