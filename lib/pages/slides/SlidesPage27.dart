import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vtah_flutter_intro/examples/CupertinoMaterialTextFieldDemo.ctt.dart';
import 'package:vtah_flutter_intro/modules/slides/SlideProgression.dart';
import 'package:vtah_flutter_intro/slide.theme.dart';
import 'package:vtah_flutter_intro/ui/file/CCTFileBuilder.dart';
import 'package:vtah_flutter_intro/ui/slides/item/SlideCodeItem.dart';
import 'package:vtah_flutter_intro/ui/slides/item/SlideListItem.dart';
import 'package:vtah_flutter_intro/ui/slides/layers/ThreePanelsLayer.dart';
import 'package:vtah_flutter_intro/ui/slides/type/SlideTypeTitle.dart';

class SlidesPage27 extends StatelessWidget {
  const SlidesPage27({Key key, @required this.progression}) : super(key: key);
  final SlideProgression progression;

  @override
  Widget build(BuildContext context) {
    return SlideTypeTitle(
      title: 'Cupertino/Material',
      subtitle: 'TextField',
      child: CCTFileBuilder(
          name: "CupertinoMaterialTextFieldDemo",
          builder: (context, textFieldDemo) => ThreePanelsLayer(
                  side1: <Widget>[
                    SlideListItem(text: "Saisie de texte")
                  ],
                  side2: [
                    SlideCodeItem(content: textFieldDemo),
                  ],
                  fixed: Padding(
                      padding: EdgeInsets.all(SlideTheme.of(context).paddingXL),
                      child: CupertinoMaterialTextFieldDemo()))),
      progression: progression,
    );
  }
}
