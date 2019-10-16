import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vtah_flutter_intro/modules/slides/SlideProgression.dart';
import 'package:vtah_flutter_intro/ui/slides/item/SlideHyperlinkItem.dart';
import 'package:vtah_flutter_intro/ui/slides/item/SlideListItem.dart';
import 'package:vtah_flutter_intro/ui/slides/item/SlideSubListItem.dart';
import 'package:vtah_flutter_intro/ui/slides/type/SlideTypeTitle.dart';

class SlidesPage39 extends StatelessWidget {
  const SlidesPage39({Key key, @required this.progression}) : super(key: key);
  final SlideProgression progression;

  @override
  Widget build(BuildContext context) {
    return SlideTypeTitle(
      title: 'Pour aller plus loin',
      child: Column(children: <Widget>[
        SlideListItem(text: "Injection de dépendances"),
        SlideSubListItem(text: "Provider"),
        SlideSubListItem(text: "Basé sur les Inherited Widgets"),
        SlideHyperlinkItem(link: "https://pub.dev/packages/provider"),
        SlideListItem(text: "Reactive eXtensions (RX)"),
        SlideSubListItem(text: "rxDart"),
        SlideHyperlinkItem(link: "https://pub.dev/packages/rxdart"),
      ]),
      progression: progression,
    );
  }
}
