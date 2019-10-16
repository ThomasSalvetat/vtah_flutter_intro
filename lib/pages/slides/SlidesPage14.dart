import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vtah_flutter_intro/dimensions.dart';
import 'package:vtah_flutter_intro/examples/AlignDemo.ctt.dart';
import 'package:vtah_flutter_intro/modules/slides/SlideProgression.dart';
import 'package:vtah_flutter_intro/ui/file/CCTFileBuilder.dart';
import 'package:vtah_flutter_intro/ui/slides/item/SlideCodeItem.dart';
import 'package:vtah_flutter_intro/ui/slides/item/SlideListItem.dart';
import 'package:vtah_flutter_intro/ui/slides/item/SlideSubListItem.dart';
import 'package:vtah_flutter_intro/ui/slides/layers/ThreePanelsLayer.dart';
import 'package:vtah_flutter_intro/ui/slides/type/SlideTypeTitle.dart';

class SlidesPage14 extends StatelessWidget {
  const SlidesPage14({Key key, @required this.progression}) : super(key: key);
  final SlideProgression progression;

  @override
  Widget build(BuildContext context) {
    return SlideTypeTitle(
        title: 'Quelques widgets',
        subtitle: 'Align',
        child: CCTFileBuilder(
            name: "AlignDemo",
            builder: (context, alignDemo) => ThreePanelsLayer(
                    side1: <Widget>[
                      SlideListItem(text: "Aligner son contenu"),
                      SlideSubListItem(text: "Alignement.BottomRight"),
                      SlideSubListItem(text: "Alignement.TopLeft"),
                      SlideSubListItem(text: "Alignement.Center"),
                    ],
                    side2: [
                      SlideCodeItem(content: alignDemo)
                    ],
                    fixed: Padding(
                        padding: EdgeInsets.all(
                            DimensionsTheme.of(context).paddingXL),
                        child: AlignDemo()))),
        progression: progression);
  }
}
