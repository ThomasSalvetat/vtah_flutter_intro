import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vtah_flutter_intro/modules/slides/SlideProgression.dart';
import 'package:vtah_flutter_intro/ui/slides/item/SlideHyperlinkItem.dart';
import 'package:vtah_flutter_intro/ui/slides/type/SlideTypeTitle.dart';

class SlidesPage42 extends StatelessWidget {
  const SlidesPage42({Key key, @required this.progression}) : super(key: key);
  final SlideProgression progression;

  @override
  Widget build(BuildContext context) {
    return SlideTypeTitle(
      title: 'Liens',
      child: Column(children: <Widget>[
        SlideHyperlinkItem(
            link: "https://github.com/ThomasSalvetat/vtah_flutter_intro_demo"),
        SlideHyperlinkItem(
            link: "https://github.com/ThomasSalvetat/vtah_flutter_intro"),
      ]),
      progression: progression,
    );
  }
}
