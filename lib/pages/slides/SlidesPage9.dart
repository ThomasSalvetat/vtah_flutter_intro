import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vtah_flutter_intro/examples/FrogColorDemo.ctt.dart';
import 'package:vtah_flutter_intro/modules/slides/SlideProgression.dart';
import 'package:vtah_flutter_intro/slide.theme.dart';
import 'package:vtah_flutter_intro/ui/file/CCTFileBuilder.dart';
import 'package:vtah_flutter_intro/ui/marker/BulletMarkerTheme.dart';
import 'package:vtah_flutter_intro/ui/slides/item/SlideCodeItem.dart';
import 'package:vtah_flutter_intro/ui/slides/item/SlideListItem.dart';
import 'package:vtah_flutter_intro/ui/slides/item/SlideSubListItem.dart';
import 'package:vtah_flutter_intro/ui/slides/layers/ThreePanelsLayer.dart';
import 'package:vtah_flutter_intro/ui/slides/type/SlideTypeTitle.dart';

class SlidesPage9 extends StatelessWidget {
  const SlidesPage9({Key key, @required this.progression}) : super(key: key);
  final SlideProgression progression;

  @override
  Widget build(BuildContext context) {
    return SlideTypeTitle(
      title: 'Flutter',
      subtitle: 'Inherited Widgets',
      child: CCTFileBuilder(
          name: "FrogColor",
          builder: (context, frogColor) => CCTFileBuilder(
              name: "FrogColorDemo",
              builder: (context, frogColorDemo) => ThreePanelsLayer(
                      side1: <Widget>[
                        SlideListItem(
                            text:
                                "Widget permettant de partager de la donnée tout le long de l'arbre des widgets"),
                        SlideSubListItem(
                            text: "Si un widget dépend d'un InheritedWidget"),
                        SlideSubListItem(
                            text: "Et mise à jour du InheritedWidget"),
                        SlideSubListItem(
                            text: "Alors rebuild du widget",
                            theme: BulletMarkerTheme.SECONDARY),
                        SlideListItem(
                            text:
                                "Fonctionne conjointement avec un StatefullWidget"),
                        SlideListItem(text: "Méthodes :"),
                        SlideSubListItem(
                            text: "InheritedWidget > of(BuildContext context)"),
                        SlideSubListItem(
                            text:
                                "InheritedWidget > bool updateShouldNotify(InheritedWidget old)"),
                      ],
                      side2: [
                        SlideCodeItem(content: frogColor),
                        SlideCodeItem(content: frogColorDemo)
                      ],
                      fixed: Padding(
                          padding:
                              EdgeInsets.all(SlideTheme.of(context).paddingXL),
                          child: FrogColorDemo())))),
      progression: progression,
    );
  }
}
