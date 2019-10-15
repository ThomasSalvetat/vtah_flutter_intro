import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vtah_flutter_intro/modules/slides/SlideProgression.dart';
import 'package:vtah_flutter_intro/ui/picture/PictureViewer.dart';
import 'package:vtah_flutter_intro/ui/slides/item/SlideListItem.dart';
import 'package:vtah_flutter_intro/ui/slides/type/SlideTypeTitle.dart';

class SlidesPage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SlideTypeTitle(
      title: 'Le langage Dart',
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.stretch,children: [
        Expanded(flex: 2,child: Column(crossAxisAlignment: CrossAxisAlignment.start,  children: <Widget>[
          SlideListItem(
              text:
              "Créé en 2011 par Google"),
          SlideListItem(text: "À l'origine, un javascript orienté objet"),
          SlideListItem(text: "Langage client pour n'importe quelle platforme"),
          SlideListItem(text: "Optimisé pour l'UI"),
          SlideListItem(text: "SIMPLE"),
          SlideListItem(text: "Production en mode AOT (Ahead-of-Time)"),
          SlideListItem(text: "Développement en mode JIT (Just-in-Time)")
        ])),
        PictureViewer(image: AssetImage('assets/images/dart.png'), size: Size(400, 400))
      ]),
      progression: SlideProgression(current: 3, total: 3),
    );
  }
}
