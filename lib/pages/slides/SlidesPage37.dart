import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vtah_flutter_intro/examples/BananaIcon.ctt.dart';
import 'package:vtah_flutter_intro/modules/slides/SlideProgression.dart';
import 'package:vtah_flutter_intro/ui/file/CCTFileBuilder.dart';
import 'package:vtah_flutter_intro/ui/slides/item/SlideCodeItem.dart';
import 'package:vtah_flutter_intro/ui/slides/item/SlideDemoItem.dart';
import 'package:vtah_flutter_intro/ui/slides/item/SlideListItem.dart';
import 'package:vtah_flutter_intro/ui/slides/item/SlideSubListItem.dart';
import 'package:vtah_flutter_intro/ui/slides/layers/ThreePanelsLayer.dart';
import 'package:vtah_flutter_intro/ui/slides/type/SlideTypeTitle.dart';

class SlidesPage37 extends StatelessWidget {
  const SlidesPage37({Key key, @required this.progression}) : super(key: key);
  final SlideProgression progression;

  @override
  Widget build(BuildContext context) {
    return SlideTypeTitle(
      title: 'Pour aller plus loin',
      subtitle: 'Test unitaire',
      child: CCTFileBuilder(
          name: "BananaIcon",
          builder: (context, bananaIcon) => CCTFileBuilder(
              name: "TestBananaIcon",
              builder: (context, testBananaIcon) =>
                  ThreePanelsLayer(side1: <Widget>[
                    SlideListItem(text: "WidgetTester"),
                    SlideSubListItem(text: "intéraction et test"),
                    SlideSubListItem(text: "pump() = dessiner le widget"),
                    SlideListItem(text: "Finder"),
                    SlideSubListItem(
                        text: "find.byType() = sélecteur de widget"),
                    SlideListItem(text: "Matcher"),
                    SlideSubListItem(
                        text:
                            "findsOneWidget = vérifie qu'un seul widget est présent dans l'arbre")
                  ], side2: [
                    SlideCodeItem(content: bananaIcon),
                    SlideCodeItem(content: testBananaIcon),
                  ], side3: SlideDemoItem(child: BananaIcon())))),
      progression: progression,
    );
  }
}
