import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vtah_flutter_intro/dimensions.dart';
import 'package:vtah_flutter_intro/examples/CenterDemo.ctt.dart';
import 'package:vtah_flutter_intro/modules/slides/SlideProgression.dart';
import 'package:vtah_flutter_intro/ui/file/CCTFileBuilder.dart';
import 'package:vtah_flutter_intro/ui/slides/item/SlideCodeItem.dart';
import 'package:vtah_flutter_intro/ui/slides/item/SlideListItem.dart';
import 'package:vtah_flutter_intro/ui/slides/layers/ThreePanelsLayer.dart';
import 'package:vtah_flutter_intro/ui/slides/type/SlideTypeTitle.dart';

class SlidesPage15 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SlideTypeTitle(
      title: 'Quelques widgets',
      subtitle: 'Center',
      child: CCTFileBuilder(
          name: "CenterDemo",
          builder: (context, centerDemo) => ThreePanelsLayer(
                  side1: <Widget>[
                    SlideListItem(text: "Centrer son contenu"),
                    SlideListItem(
                        text: "Shorcut Align(align: Alignment.center)"),
                  ],
                  side2: [
                    SlideCodeItem(content: centerDemo)
                  ],
                  fixed: Padding(
                      padding:
                          EdgeInsets.all(DimensionsTheme.of(context).paddingXL),
                      child: CenterDemo()))),
      progression: SlideProgression(current: 15, total: 15),
    );
  }
}
