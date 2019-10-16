import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vtah_flutter_intro/dimensions.dart';
import 'package:vtah_flutter_intro/examples/TextDemo.ctt.dart';
import 'package:vtah_flutter_intro/modules/slides/SlideProgression.dart';
import 'package:vtah_flutter_intro/ui/file/CCTFileBuilder.dart';
import 'package:vtah_flutter_intro/ui/slides/item/SlideCodeItem.dart';
import 'package:vtah_flutter_intro/ui/slides/item/SlideListItem.dart';
import 'package:vtah_flutter_intro/ui/slides/layers/ThreePanelsLayer.dart';
import 'package:vtah_flutter_intro/ui/slides/type/SlideTypeTitle.dart';

class SlidesPage12 extends StatelessWidget {
  const SlidesPage12({Key key, @required this.progression}) : super(key: key);
  final SlideProgression progression;

  @override
  Widget build(BuildContext context) {
    return SlideTypeTitle(
      title: 'Quelques widgets',
      subtitle: 'Text',
      child: CCTFileBuilder(
          name: "TextDemo",
          builder: (context, textDemo) => ThreePanelsLayer(
                  side1: <Widget>[
                    SlideListItem(text: "Afficher du texte"),
                    SlideListItem(
                        text: "Utiliser textStyle pour styliser du texte"),
                    SlideListItem(
                        text:
                            "Utiliser Text.rich() pour styliser du texte de façon avancée"),
                  ],
                  side2: [
                    SlideCodeItem(content: textDemo)
                  ],
                  fixed: Padding(
                      padding:
                          EdgeInsets.all(DimensionsTheme.of(context).paddingXL),
                      child: TextDemo()))),
      progression: progression,
    );
  }
}
