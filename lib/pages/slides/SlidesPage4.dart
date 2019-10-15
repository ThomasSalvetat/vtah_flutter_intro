import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vtah_flutter_intro/modules/slides/SlideProgression.dart';
import 'package:vtah_flutter_intro/ui/flutter/FlutterAnimatedLogo.dart';
import 'package:vtah_flutter_intro/ui/marker/BulletMarkerTheme.dart';
import 'package:vtah_flutter_intro/ui/picture/PictureViewer.dart';
import 'package:vtah_flutter_intro/ui/slides/item/SlideListItem.dart';
import 'package:vtah_flutter_intro/ui/slides/item/SlideSubListItem.dart';
import 'package:vtah_flutter_intro/ui/slides/layers/TwoPanelsLayer.dart';
import 'package:vtah_flutter_intro/ui/slides/type/SlideTypeTitle.dart';

class SlidesPage4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SlideTypeTitle(
      title: 'Flutter',
      child: PanelPictureLayer(
          children: <Widget>[
            SlideListItem(text: "SDK open-source créé par Google"),
            SlideListItem(text: "Version stable depuis decembre 2018"),
            SlideListItem(text: "Applications multiplatformes"),
            SlideSubListItem(text: "Android"),
            SlideSubListItem(text: "iOS"),
            SlideSubListItem(text: "Web", theme: BulletMarkerTheme.WARN),
            SlideSubListItem(text: "MacOS", theme: BulletMarkerTheme.WARN),
            SlideSubListItem(text: "Linux", theme: BulletMarkerTheme.WARN),
            SlideSubListItem(text: "Windows", theme: BulletMarkerTheme.WARN),
            SlideSubListItem(
                text: "Fuschia", theme: BulletMarkerTheme.SECONDARY),
          ],
          picture: PictureViewer(
              child: FlutterAnimatedLogo(), size: Size(300, 300))),
      progression: SlideProgression(current: 4, total: 4),
    );
  }
}
