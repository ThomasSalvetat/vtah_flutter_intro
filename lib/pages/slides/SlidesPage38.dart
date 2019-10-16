import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vtah_flutter_intro/modules/slides/SlideProgression.dart';
import 'package:vtah_flutter_intro/ui/slides/item/SlideListItem.dart';
import 'package:vtah_flutter_intro/ui/slides/item/SlideSubListItem.dart';
import 'package:vtah_flutter_intro/ui/slides/type/SlideTypeTitle.dart';

class SlidesPage38 extends StatelessWidget {
  const SlidesPage38({Key key, @required this.progression}) : super(key: key);
  final SlideProgression progression;

  @override
  Widget build(BuildContext context) {
    return SlideTypeTitle(
      title: 'Pour aller plus loin',
      subtitle: 'Performance',
      child: Column(
        children: <Widget>[
          SlideListItem(
              text:
                  "Privilégier le mot clé const car il permet de cacher les widgets"),
          SlideListItem(
              text:
                  "Gérer l'état au niveau des feuilles de l'arbre des widget"),
          SlideSubListItem(text: "Exemple: horloge"),
          SlideSubListItem(text: "Compromis : perte réutilisabilité !"),
          SlideListItem(text: "Minimiser la profondeur de l'arbre des widgets"),
          SlideListItem(
              text:
                  "Préférer des widgets atomiques comme Padding, Center au lieu de Container, Row, ..."),
        ],
      ),
      progression: progression,
    );
  }
}
