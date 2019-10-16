import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vtah_flutter_intro/dimensions.dart';
import 'package:vtah_flutter_intro/examples/PaddingDemo.ctt.dart';
import 'package:vtah_flutter_intro/modules/slides/SlideProgression.dart';
import 'package:vtah_flutter_intro/ui/file/CCTFileBuilder.dart';
import 'package:vtah_flutter_intro/ui/slides/item/SlideCodeItem.dart';
import 'package:vtah_flutter_intro/ui/slides/item/SlideListItem.dart';
import 'package:vtah_flutter_intro/ui/slides/layers/ThreePanelsLayer.dart';
import 'package:vtah_flutter_intro/ui/slides/type/SlideTypeTitle.dart';

class SlidesPage16 extends StatelessWidget {
  const SlidesPage16({Key key, @required this.progression}) : super(key: key);
  final SlideProgression progression;

  @override
  Widget build(BuildContext context) {
    return SlideTypeTitle(
      title: 'Quelques widgets',
      subtitle: 'Padding',
      child: CCTFileBuilder(
          name: "PaddingDemo",
          builder: (context, paddingDemo) => ThreePanelsLayer(
                  side1: <Widget>[
                    SlideListItem(
                        text: "Ajouter du padding autour de son contenu")
                  ],
                  side2: [
                    SlideCodeItem(content: paddingDemo)
                  ],
                  fixed: Padding(
                      padding:
                          EdgeInsets.all(DimensionsTheme.of(context).paddingXL),
                      child: PaddingDemo()))),
      progression: progression,
    );
  }
}
