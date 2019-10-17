import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vtah_flutter_intro/examples/FrogDemo.ctt.dart';
import 'package:vtah_flutter_intro/modules/slides/SlideProgression.dart';
import 'package:vtah_flutter_intro/slide.theme.dart';
import 'package:vtah_flutter_intro/ui/file/CCTFileBuilder.dart';
import 'package:vtah_flutter_intro/ui/slides/item/SlideCodeItem.dart';
import 'package:vtah_flutter_intro/ui/slides/item/SlideListItem.dart';
import 'package:vtah_flutter_intro/ui/slides/item/SlideSubListItem.dart';
import 'package:vtah_flutter_intro/ui/slides/layers/ThreePanelsLayer.dart';
import 'package:vtah_flutter_intro/ui/slides/type/SlideTypeTitle.dart';

class SlidesPage7 extends StatelessWidget {
  const SlidesPage7({Key key, @required this.progression}) : super(key: key);
  final SlideProgression progression;

  @override
  Widget build(BuildContext context) {
    return SlideTypeTitle(
      title: 'Flutter',
      subtitle: 'Stateless Widgets',
      child: CCTFileBuilder(
          name: "Frog",
          builder: (context, frog) => CCTFileBuilder(
              name: "FrogDemo",
              builder: (context, frogDemo) => ThreePanelsLayer(
                      side1: <Widget>[
                        SlideListItem(text: "Widget de type fonctionnel"),
                        SlideListItem(
                            text: "Dépend que des paramètres d'entrées"),
                        SlideListItem(text: "Méthodes :"),
                        SlideSubListItem(text: "StalessWidget > build()"),
                        SlideListItem(text: "Convention :"),
                        SlideSubListItem(text: "Named arguments"),
                        SlideSubListItem(text: "Key is the first argument"),
                        SlideSubListItem(
                            text: "Child/Children is the last argument"),
                        SlideListItem(text: "Cas de build :"),
                        SlideSubListItem(text: "à sa création"),
                        SlideSubListItem(
                            text: "lorsque le parent change sa configuration"),
                        SlideSubListItem(
                            text:
                                "lorsque un InheritedWidget dont il dépend change"),
                      ],
                      side2: [
                        SlideCodeItem(content: frog),
                        SlideCodeItem(content: frogDemo)
                      ],
                      fixed: Padding(
                          padding:
                              EdgeInsets.all(SlideTheme.of(context).paddingXL),
                          child: FrogDemo())))),
      progression: progression,
    );
  }
}
