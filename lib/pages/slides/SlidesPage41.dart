import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vtah_flutter_intro/modules/slides/SlideProgression.dart';
import 'package:vtah_flutter_intro/ui/marker/BulletMarkerTheme.dart';
import 'package:vtah_flutter_intro/ui/slides/item/SlideListItem.dart';
import 'package:vtah_flutter_intro/ui/slides/type/SlideTypeTitle.dart';

class SlidesPage41 extends StatelessWidget {
  const SlidesPage41({Key key, @required this.progression}) : super(key: key);
  final SlideProgression progression;

  @override
  Widget build(BuildContext context) {
    return SlideTypeTitle(
      title: 'Conclusion',
      subtitle: 'Plus que du crossplatform ?',
      child: Column(children: <Widget>[
        SlideListItem(text: "Stable sur android et ios"),
        SlideListItem(text: "Décorrélé de la plateforme cible"),
        SlideListItem(text: "Orienté composant"),
        SlideListItem(text: "Animations"),
        SlideListItem(text: "Grand nombre de bibliothèques"),
        SlideListItem(text: "Grand nombre de plugins"),
        SlideListItem(
            text:
                "Possibilité d'appeller du code exécutable depuis l'environnement dart grâce à dart FFI"),
        SlideListItem(
            text:
                "Possibilité d'afficher des vues natives (AndroidView, UiKitView)"),
        SlideListItem(text: "Bientôt le natif Fuschia ?"),
        SlideListItem(
            text: "Pas encore mature sur desktop et web",
            theme: BulletMarkerTheme.WARN),
        SlideListItem(
            text: "Courbe d'apprentissage sur les widgets",
            theme: BulletMarkerTheme.WARN),
        SlideListItem(
            text: "Délai dans la reproduction des composants natifs",
            theme: BulletMarkerTheme.WARN),
        SlideListItem(
            text: "Attention à bien surveiller l'architecture",
            theme: BulletMarkerTheme.WARN),
        SlideListItem(
            text: "La publicité Google Ads", theme: BulletMarkerTheme.WARN),
      ]),
      progression: progression,
    );
  }
}
