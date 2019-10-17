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

class SlidesPage35 extends StatelessWidget {
  const SlidesPage35({Key key, @required this.progression}) : super(key: key);
  final SlideProgression progression;

  @override
  Widget build(BuildContext context) {
    return SlideTypeTitle(
      title: 'State management',
      subtitle: 'Bloc',
      child: TwoPanelsLayer(
        children: <Widget>[
          SlideListItem(text: "Redux"),
          SlideSubListItem(text: "Un store global qui contient un state"),
          SlideSubListItem(
              text:
                  "Un reducer qui transforme les données du state lorsqu'il reçoit des actions"),
          SlideSubListItem(
              text: "Des widgets qui observent des parties du state"),
          SlideHyperlinkItem(link: "https://pub.dev/packages/redux"),
          SlideHyperlinkItem(link: "https://pub.dev/packages/flutter_redux"),
        ],
        fixed: Padding(
            padding: EdgeInsets.all(SlideTheme.of(context).paddingM),
            child: PictureViewer(
                size: Size(800, 400),
                image: AssetImage('assets/images/how-redux-works.png'))),
      ),
      progression: progression,
    );
  }
}
