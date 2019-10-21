import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vtah_flutter_intro/modules/slides/SlideProgression.dart';
import 'package:vtah_flutter_intro/ui/house/PageHouse.dart';
import 'package:vtah_flutter_intro/ui/slides/item/SlideDemoItem.dart';
import 'package:vtah_flutter_intro/ui/slides/item/SlideHyperlinkItem.dart';
import 'package:vtah_flutter_intro/ui/slides/item/SlideListItem.dart';
import 'package:vtah_flutter_intro/ui/slides/layers/TwoPanelsLayer.dart';
import 'package:vtah_flutter_intro/ui/slides/type/SlideTypeTitle.dart';

class SlidesPage32 extends StatelessWidget {
  const SlidesPage32({Key key, @required this.progression}) : super(key: key);
  final SlideProgression progression;

  @override
  Widget build(BuildContext context) {
    return SlideTypeTitle(
      title: 'Animations',
      subtitle: 'Flare',
      child: TwoPanelsLayer(side1: <Widget>[
        SlideListItem(text: "Réalisé par 2Dimensions"),
        SlideListItem(
            text: "Moteur 2D compatible avec flutter, android et iOS"),
        SlideListItem(text: "Outil en ligne pour éditer les animations"),
        SlideListItem(text: "Similaire à Lottie"),
        SlideListItem(
            text: "Animations open-source à la manière de github (fork, ...)"),
        SlideHyperlinkItem(link: "https://github.com/2d-inc/Flare-Flutter"),
      ], side2: SlideDemoItem(child: PageHouse())),
      progression: progression,
    );
  }
}
