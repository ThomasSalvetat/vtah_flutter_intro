import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vtah_flutter_intro/examples/BirdDemo.ctt.dart';
import 'package:vtah_flutter_intro/modules/slides/SlideProgression.dart';
import 'package:vtah_flutter_intro/slide.theme.dart';
import 'package:vtah_flutter_intro/ui/file/CCTFileBuilder.dart';
import 'package:vtah_flutter_intro/ui/slides/item/SlideCodeItem.dart';
import 'package:vtah_flutter_intro/ui/slides/item/SlideListItem.dart';
import 'package:vtah_flutter_intro/ui/slides/item/SlideSubListItem.dart';
import 'package:vtah_flutter_intro/ui/slides/layers/ThreePanelsLayer.dart';
import 'package:vtah_flutter_intro/ui/slides/type/SlideTypeTitle.dart';

class SlidesPage8 extends StatelessWidget {
  const SlidesPage8({Key key, @required this.progression}) : super(key: key);
  final SlideProgression progression;

  @override
  Widget build(BuildContext context) {
    return SlideTypeTitle(
      title: 'Flutter',
      subtitle: 'Stateful Widgets',
      child: CCTFileBuilder(
          name: "Bird",
          builder: (context, bird) => CCTFileBuilder(
              name: "BirdDemo",
              builder: (context, birdDemo) => ThreePanelsLayer(
                      side1: <Widget>[
                        SlideListItem(text: "Widget portant un état mutable"),
                        SlideSubListItem(text: "StatefullWidget est immutable"),
                        SlideSubListItem(text: "State est mutable"),
                        SlideListItem(text: "Méthodes :"),
                        SlideSubListItem(
                            text: "StatefullWidget > createState()"),
                        SlideSubListItem(text: "State > initState()"),
                        SlideSubListItem(text: "State > build()"),
                        SlideSubListItem(text: "State > setState()"),
                        SlideSubListItem(text: "State > dispose()"),
                        SlideListItem(text: "Cas de build :"),
                        SlideSubListItem(text: "à sa création"),
                        SlideSubListItem(
                            text: "lorsque le parent change sa configuration"),
                        SlideSubListItem(
                            text:
                                "lorsqu'un InheritedWidget dont il dépend change"),
                        SlideSubListItem(
                            text: "lorsque l'état change grâce à setState()"),
                      ],
                      side2: [
                        SlideCodeItem(content: bird),
                        SlideCodeItem(content: birdDemo)
                      ],
                      fixed: Padding(
                          padding:
                              EdgeInsets.all(SlideTheme.of(context).paddingXL),
                          child: BirdDemo())))),
      progression: progression,
    );
  }
}
