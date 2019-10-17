import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vtah_flutter_intro/examples/GridViewDemo.ctt.dart';
import 'package:vtah_flutter_intro/modules/slides/SlideProgression.dart';
import 'package:vtah_flutter_intro/slide.theme.dart';
import 'package:vtah_flutter_intro/ui/file/CCTFileBuilder.dart';
import 'package:vtah_flutter_intro/ui/slides/item/SlideCodeItem.dart';
import 'package:vtah_flutter_intro/ui/slides/item/SlideListItem.dart';
import 'package:vtah_flutter_intro/ui/slides/layers/ThreePanelsLayer.dart';
import 'package:vtah_flutter_intro/ui/slides/type/SlideTypeTitle.dart';

class SlidesPage24 extends StatelessWidget {
  const SlidesPage24({Key key, @required this.progression}) : super(key: key);
  final SlideProgression progression;

  @override
  Widget build(BuildContext context) {
    return SlideTypeTitle(
      title: 'Quelques widgets',
      subtitle: 'GridView',
      child: CCTFileBuilder(
          name: "GridViewDemo",
          builder: (context, gridViewDemo) => ThreePanelsLayer(
                  side1: <Widget>[
                    SlideListItem(
                        text:
                            "Afficher les élements sous forme de liste à deux dimensions")
                  ],
                  side2: [
                    SlideCodeItem(content: gridViewDemo),
                  ],
                  fixed: Padding(
                      padding: EdgeInsets.all(SlideTheme.of(context).paddingXL),
                      child: GridViewDemo(size: 10)))),
      progression: progression,
    );
  }
}
