import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vtah_flutter_intro/examples/AnimationDemo.ctt.dart';
import 'package:vtah_flutter_intro/modules/slides/SlideProgression.dart';
import 'package:vtah_flutter_intro/slide.theme.dart';
import 'package:vtah_flutter_intro/ui/file/CCTFileBuilder.dart';
import 'package:vtah_flutter_intro/ui/slides/item/SlideCodeItem.dart';
import 'package:vtah_flutter_intro/ui/slides/item/SlideListItem.dart';
import 'package:vtah_flutter_intro/ui/slides/item/SlideSubListItem.dart';
import 'package:vtah_flutter_intro/ui/slides/layers/ThreePanelsLayer.dart';
import 'package:vtah_flutter_intro/ui/slides/type/SlideTypeTitle.dart';

class SlidesPage31 extends StatelessWidget {
  const SlidesPage31({Key key, @required this.progression}) : super(key: key);
  final SlideProgression progression;

  @override
  Widget build(BuildContext context) {
    return SlideTypeTitle(
      title: 'Animations',
      subtitle: 'Animation',
      child: CCTFileBuilder(
          name: "AnimationDemo",
          builder: (context, animationDemo) => ThreePanelsLayer(
                  side1: <Widget>[
                    SlideListItem(
                        text:
                            "L'object Animation est décorrélé de ce qu'il se passe sur l'écran"),
                    SlideListItem(text: "Porte un état entre"),
                    SlideListItem(
                        text:
                            "Consiste à interpoler une valeur et lier une propriété d'un widget"),
                    SlideListItem(text: "AnimationController:"),
                    SlideSubListItem(
                        text:
                            "animation qui génère une nouvelle valeur à chaque frame"),
                    SlideSubListItem(
                        text: "produit de façon linéaire un nombre de 0 à 1"),
                    SlideListItem(text: "Tween:"),
                    SlideSubListItem(
                        text:
                            "fonction de transformation entre un intervalle d'entrée et de sortie"),
                    SlideSubListItem(
                        text:
                            "produit un intervalle de valeur (double, color, ...)"),
                  ],
                  side2: [
                    SlideCodeItem(content: animationDemo),
                  ],
                  fixed: Padding(
                      padding: EdgeInsets.all(SlideTheme.of(context).paddingXL),
                      child: AnimationDemo()))),
      progression: progression,
    );
  }
}
