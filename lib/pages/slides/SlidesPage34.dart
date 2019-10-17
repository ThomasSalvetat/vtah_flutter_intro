import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vtah_flutter_intro/modules/slides/SlideProgression.dart';
import 'package:vtah_flutter_intro/slide.theme.dart';
import 'package:vtah_flutter_intro/ui/picture/PictureViewer.dart';
import 'package:vtah_flutter_intro/ui/slides/item/SlideHyperlinkItem.dart';
import 'package:vtah_flutter_intro/ui/slides/item/SlideListItem.dart';
import 'package:vtah_flutter_intro/ui/slides/item/SlideSubListItem.dart';
import 'package:vtah_flutter_intro/ui/slides/layers/TwoPanelsLayer.dart';
import 'package:vtah_flutter_intro/ui/slides/type/SlideTypeTitle.dart';

class SlidesPage34 extends StatelessWidget {
  const SlidesPage34({Key key, @required this.progression}) : super(key: key);
  final SlideProgression progression;

  @override
  Widget build(BuildContext context) {
    return SlideTypeTitle(
      title: 'State management',
      subtitle: 'Bloc',
      child: TwoPanelsLayer(
        children: <Widget>[
          SlideListItem(text: "Issu de la programmation réactive"),
          SlideSubListItem(text: "Architecturer autour des évènements"),
          SlideSubListItem(text: "Streams, Observables"),
          SlideSubListItem(text: "Réduire le couplage entre les composants"),
          SlideListItem(text: "Business Logic Component"),
          SlideSubListItem(text: "Éviter la logique dans les widgets"),
          SlideSubListItem(
              text:
                  "Les widgets envoient de la donnée aux Blocs grâce aux Sinks"),
          SlideSubListItem(
              text:
                  "Les widgets sont notifiés par les Blocs grâce aux Streams"),
          SlideHyperlinkItem(link: "https://pub.dev/packages/bloc"),
          SlideHyperlinkItem(link: "https://pub.dev/packages/flutter_bloc"),
        ],
        fixed: Padding(
            padding: EdgeInsets.all(SlideTheme.of(context).paddingM),
            child: PictureViewer(
                size: Size(800, 400),
                image: AssetImage('assets/images/bloc_architecture.png'))),
      ),
      progression: progression,
    );
  }
}
