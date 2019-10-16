import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vtah_flutter_intro/dimensions.dart';
import 'package:vtah_flutter_intro/examples/CupertinoMaterialSliderDemo.ctt.dart';
import 'package:vtah_flutter_intro/modules/slides/SlideProgression.dart';
import 'package:vtah_flutter_intro/ui/file/CCTFileBuilder.dart';
import 'package:vtah_flutter_intro/ui/slides/item/SlideCodeItem.dart';
import 'package:vtah_flutter_intro/ui/slides/item/SlideListItem.dart';
import 'package:vtah_flutter_intro/ui/slides/layers/ThreePanelsLayer.dart';
import 'package:vtah_flutter_intro/ui/slides/type/SlideTypeTitle.dart';

class SlidesPage28 extends StatelessWidget {
  const SlidesPage28({Key key, @required this.progression}) : super(key: key);
  final SlideProgression progression;

  @override
  Widget build(BuildContext context) {
    return SlideTypeTitle(
      title: 'Cupertino/Material',
      subtitle: 'Slider',
      child: CCTFileBuilder(
          name: "CupertinoMaterialSliderDemo",
          builder: (context, slideDemo) => ThreePanelsLayer(
                  side1: <Widget>[
                    SlideListItem(text: "Saisie avec un slider")
                  ],
                  side2: [
                    SlideCodeItem(content: slideDemo),
                  ],
                  fixed: Padding(
                      padding:
                          EdgeInsets.all(DimensionsTheme.of(context).paddingXL),
                      child: CupertinoMaterialSliderDemo()))),
      progression: progression,
    );
  }
}
