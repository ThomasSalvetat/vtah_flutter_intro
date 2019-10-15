import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vtah_flutter_intro/builder/frog.ctt.dart';
import 'package:vtah_flutter_intro/dimensions.dart';
import 'package:vtah_flutter_intro/modules/slides/SlideProgression.dart';
import 'package:vtah_flutter_intro/ui/file/CCTFileBuilder.dart';
import 'package:vtah_flutter_intro/ui/slides/item/SlideCodeItem.dart';
import 'package:vtah_flutter_intro/ui/slides/item/SlideListItem.dart';
import 'package:vtah_flutter_intro/ui/slides/layers/TwoPanelsLayer.dart';
import 'package:vtah_flutter_intro/ui/slides/type/SlideTypeTitle.dart';

class SlidesPage7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SlideTypeTitle(
      title: 'Flutter',
      subtitle: 'Stateless Widgets',
      child: CCTFileBuilder(
          name: "frog",
          builder: (context, content) => PanelPictureLayer(
              mainAlignment: MainAxisAlignment.center,
              crossAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SlideListItem(
                    text:
                        "Des widgets qui ne dépendent que des paramètres d'entrées"),
                SlideCodeItem(content: content)
              ],
              picture: Padding(
                  padding:
                      EdgeInsets.all(DimensionsTheme.of(context).paddingXL),
                  child: Frog(child: Text("I am a frog."))))),
      progression: SlideProgression(current: 7, total: 7),
    );
  }
}
