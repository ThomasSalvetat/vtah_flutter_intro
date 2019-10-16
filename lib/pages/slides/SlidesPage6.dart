import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:vtah_flutter_intro/modules/slides/SlideProgression.dart';
import 'package:vtah_flutter_intro/ui/picture/PictureViewer.dart';
import 'package:vtah_flutter_intro/ui/slides/item/SlideListItem.dart';
import 'package:vtah_flutter_intro/ui/slides/item/SlideSubListItem.dart';
import 'package:vtah_flutter_intro/ui/slides/layers/TwoPanelsLayer.dart';
import 'package:vtah_flutter_intro/ui/slides/type/SlideTypeTitle.dart';

class SlidesPage6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SlideTypeTitle(
      title: 'Flutter',
      subtitle: 'Everything is a widget',
      child: TwoPanelsLayer(
          children: <Widget>[
            SlideListItem(text: "Élement de layouts"),
            SlideSubListItem(text: "Row, Column"),
            SlideSubListItem(text: "List"),
            SlideSubListItem(text: "Container"),
            SlideSubListItem(text: "Padding"),
            SlideListItem(text: "Élement structurel"),
            SlideSubListItem(text: "Image, Text"),
            SlideListItem(text: "Élement de style"),
            SlideSubListItem(text: "Font, Color")
          ],
          picture: PictureViewer(
              image: AssetImage('assets/images/widgets.png'),
              size: Size(500, 500))),
      progression: SlideProgression(current: 6, total: 6),
    );
  }
}
