import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vtah_flutter_intro/modules/slides/SlideProgression.dart';
import 'package:vtah_flutter_intro/ui/slides/SlideListItem.dart';
import 'package:vtah_flutter_intro/ui/slides/SlideTypeTitle.dart';

class SlidesPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SlideTypeTitle(title: 'Bref historique', child: Column(children: <Widget>[
      SlideListItem(text: "Première version sky en 2015 lors du Dart Developer Submit"),
      SlideListItem(text: "120fps"),
      SlideListItem(text: "Google's Skia"),
    ]), progression: SlideProgression(current: 2, total: 2));
  }
}
