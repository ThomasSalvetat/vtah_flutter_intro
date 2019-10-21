import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vtah_flutter_intro/modules/slides/SlideProgression.dart';
import 'package:vtah_flutter_intro/ui/picture/PictureViewer.dart';
import 'package:vtah_flutter_intro/ui/slides/item/SlideListItem.dart';
import 'package:vtah_flutter_intro/ui/slides/layers/TwoPanelsLayer.dart';
import 'package:vtah_flutter_intro/ui/slides/type/SlideTypeTitle.dart';

class SlidesPage3 extends StatelessWidget {
  const SlidesPage3({Key key, @required this.progression}) : super(key: key);
  final SlideProgression progression;

  @override
  Widget build(BuildContext context) {
    return SlideTypeTitle(
      title: 'Le langage Dart',
      child: TwoPanelsLayer(
          side1: <Widget>[
            SlideListItem(text: "Créé en 2011 par Google"),
            SlideListItem(text: "À l'origine, un javascript orienté objet"),
            SlideListItem(
                text: "Langage client pour n'importe quelle platforme"),
            SlideListItem(text: "Optimisé pour l'UI"),
            SlideListItem(text: "SIMPLE"),
            SlideListItem(text: "Production en mode AOT (Ahead-of-Time)"),
            SlideListItem(text: "Développement en mode JIT (Just-in-Time)")
          ],
          side2: PictureViewer(
              image: AssetImage('assets/images/dart_platform.png'))),
      progression: progression,
    );
  }
}
