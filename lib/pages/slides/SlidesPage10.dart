import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vtah_flutter_intro/modules/slides/SlideProgression.dart';
import 'package:vtah_flutter_intro/ui/picture/PictureViewer.dart';
import 'package:vtah_flutter_intro/ui/slides/item/SlideListItem.dart';
import 'package:vtah_flutter_intro/ui/slides/item/SlideSubListItem.dart';
import 'package:vtah_flutter_intro/ui/slides/layers/TwoPanelsLayer.dart';
import 'package:vtah_flutter_intro/ui/slides/type/SlideTypeTitle.dart';

class SlidesPage10 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SlideTypeTitle(
      title: 'Flutter',
      subtitle: 'Architecture',
      child: TwoPanelsLayer(
          children: <Widget>[
            SlideListItem(text: "Framework"),
            SlideSubListItem(text: "Material / Cupertino"),
            SlideSubListItem(text: "Widgets"),
            SlideSubListItem(text: "Rendering"),
            SlideSubListItem(text: "Painting"),
            SlideSubListItem(text: "Fondation"),
            SlideListItem(text: "Engine"),
            SlideSubListItem(text: "Rendering"),
            SlideSubListItem(text: "Platform Channels"),
            SlideListItem(text: "Embedder"),
            SlideSubListItem(text: "Native Plugins"),
          ],
          fixed: PictureViewer(
              size: Size(800, 600),
              image: AssetImage('assets/images/architecture.png'))),
      progression: SlideProgression(current: 10, total: 10),
    );
  }
}
