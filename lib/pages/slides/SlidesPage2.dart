import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vtah_flutter_intro/modules/slides/SlideProgression.dart';
import 'package:vtah_flutter_intro/ui/picture/PictureViewer.dart';
import 'package:vtah_flutter_intro/ui/slides/item/SlideListItem.dart';
import 'package:vtah_flutter_intro/ui/slides/type/SlideTypeTitle.dart';

class SlidesPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SlideTypeTitle(
        title: 'Bref historique',
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.stretch,children: [
          Expanded(flex: 2,child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
            SlideListItem(
                text: "Première version nommée sky en 2015 lors du Dart Developer Submit"),
            SlideListItem(text: "120fps"),
            SlideListItem(text: "Moteur graphique open-source Skia"),
            SlideListItem(text: "Android/iOS"),
          ])),
          PictureViewer(image: AssetImage('assets/images/skia.png'), size: Size(400, 400))
        ]),
        progression: SlideProgression(current: 2, total: 2));
  }
}
