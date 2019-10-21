import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vtah_flutter_intro/examples/CupertinoMaterialDemo.ctt.dart';
import 'package:vtah_flutter_intro/modules/slides/SlideProgression.dart';
import 'package:vtah_flutter_intro/ui/file/CCTFileBuilder.dart';
import 'package:vtah_flutter_intro/ui/slides/item/SlideCodeItem.dart';
import 'package:vtah_flutter_intro/ui/slides/item/SlideDemoItem.dart';
import 'package:vtah_flutter_intro/ui/slides/item/SlideListItem.dart';
import 'package:vtah_flutter_intro/ui/slides/layers/ThreePanelsLayer.dart';
import 'package:vtah_flutter_intro/ui/slides/type/SlideTypeTitle.dart';

class SlidesPage26 extends StatelessWidget {
  const SlidesPage26({Key key, @required this.progression}) : super(key: key);
  final SlideProgression progression;

  @override
  Widget build(BuildContext context) {
    return SlideTypeTitle(
      title: 'Cupertino/Material',
      subtitle: 'Fonctionnement',
      child: CCTFileBuilder(
          name: "CupertinoMaterialDemo",
          builder: (context, cupertinoMaterialDemo) =>
              ThreePanelsLayer(side1: <Widget>[
                SlideListItem(
                    text:
                        "Deux bibliothèques graphiques Flutter réalisées en Dart"),
                SlideListItem(
                    text:
                        "Plutôt que d'intégrer des composants natifs, les simuler voire les sublîmer")
              ], side2: [
                SlideCodeItem(content: cupertinoMaterialDemo),
              ], side3: SlideDemoItem(child: CupertinoMaterialDemo()))),
      progression: progression,
    );
  }
}
