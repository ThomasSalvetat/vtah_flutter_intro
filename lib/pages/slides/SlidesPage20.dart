import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vtah_flutter_intro/dimensions.dart';
import 'package:vtah_flutter_intro/examples/FlexibleExpandedDemo.ctt.dart';
import 'package:vtah_flutter_intro/modules/slides/SlideProgression.dart';
import 'package:vtah_flutter_intro/ui/file/CCTFileBuilder.dart';
import 'package:vtah_flutter_intro/ui/slides/item/SlideCodeItem.dart';
import 'package:vtah_flutter_intro/ui/slides/item/SlideListItem.dart';
import 'package:vtah_flutter_intro/ui/slides/item/SlideSubListItem.dart';
import 'package:vtah_flutter_intro/ui/slides/layers/ThreePanelsLayer.dart';
import 'package:vtah_flutter_intro/ui/slides/type/SlideTypeTitle.dart';

class SlidesPage20 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SlideTypeTitle(
      title: 'Quelques widgets',
      subtitle: 'Flexible, Expanded',
      child: CCTFileBuilder(
          name: "FlexibleExpandedDemo",
          builder: (context, flexDemo) => ThreePanelsLayer(
                  side1: <Widget>[
                    SlideListItem(
                        text: "Agrandir son contenu dans un conteneur Flexbox"),
                    SlideListItem(
                        text:
                            "flex = nombre indiquant le facteur de grossissement (relatif)"),
                    SlideSubListItem(text: "0 = ne peut pas grossir"),
                    SlideSubListItem(
                        text: "1 = autorisé à prendre l'espace disponible"),
                    SlideSubListItem(
                        text:
                            "2 = autorisé à prendre deux fois plus d'espace que ceux à 1"),
                    SlideListItem(text: "FlexFit"),
                    SlideSubListItem(
                        text: "loose = peut prendre tout l'espace disponible"),
                    SlideSubListItem(
                        text:
                            "tight = est forcé à prendre tout l'espace disponible"),
                    SlideListItem(text: "Expandable"),
                    SlideSubListItem(
                        text: "Équivalent à Flexible avec FlexFix = tight"),
                  ],
                  side2: [
                    SlideCodeItem(content: flexDemo)
                  ],
                  fixed: Padding(
                      padding:
                          EdgeInsets.all(DimensionsTheme.of(context).paddingXL),
                      child: FlexibleExpandedDemo()))),
      progression: SlideProgression(current: 20, total: 20),
    );
  }
}
