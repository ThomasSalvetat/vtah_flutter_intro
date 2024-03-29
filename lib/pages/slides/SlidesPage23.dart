import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vtah_flutter_intro/examples/ListViewDemo.ctt.dart';
import 'package:vtah_flutter_intro/modules/slides/SlideProgression.dart';
import 'package:vtah_flutter_intro/ui/file/CCTFileBuilder.dart';
import 'package:vtah_flutter_intro/ui/slides/item/SlideCodeItem.dart';
import 'package:vtah_flutter_intro/ui/slides/item/SlideDemoItem.dart';
import 'package:vtah_flutter_intro/ui/slides/item/SlideListItem.dart';
import 'package:vtah_flutter_intro/ui/slides/layers/ThreePanelsLayer.dart';
import 'package:vtah_flutter_intro/ui/slides/type/SlideTypeTitle.dart';

class SlidesPage23 extends StatelessWidget {
  const SlidesPage23({Key key, @required this.progression}) : super(key: key);
  final SlideProgression progression;

  @override
  Widget build(BuildContext context) {
    return SlideTypeTitle(
      title: 'Quelques widgets',
      subtitle: 'ListView',
      child: CCTFileBuilder(
          name: "ListViewDemo",
          builder: (context, listViewDemo) => ThreePanelsLayer(side1: <Widget>[
                SlideListItem(
                    text:
                        "Afficher les élements sous forme de liste scrollable")
              ], side2: [
                SlideCodeItem(content: listViewDemo),
              ], side3: SlideDemoItem(child: ListViewDemo(size: 10000)))),
      progression: progression,
    );
  }
}
