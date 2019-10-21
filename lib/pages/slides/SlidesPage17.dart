import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vtah_flutter_intro/examples/ColumnDemo.ctt.dart';
import 'package:vtah_flutter_intro/modules/slides/SlideProgression.dart';
import 'package:vtah_flutter_intro/ui/file/CCTFileBuilder.dart';
import 'package:vtah_flutter_intro/ui/slides/item/SlideCodeItem.dart';
import 'package:vtah_flutter_intro/ui/slides/item/SlideDemoItem.dart';
import 'package:vtah_flutter_intro/ui/slides/item/SlideListItem.dart';
import 'package:vtah_flutter_intro/ui/slides/layers/ThreePanelsLayer.dart';
import 'package:vtah_flutter_intro/ui/slides/type/SlideTypeTitle.dart';

class SlidesPage17 extends StatelessWidget {
  const SlidesPage17({Key key, @required this.progression}) : super(key: key);
  final SlideProgression progression;

  @override
  Widget build(BuildContext context) {
    return SlideTypeTitle(
      title: 'Quelques widgets',
      subtitle: 'Column',
      child: CCTFileBuilder(
          name: "ColumnDemo",
          builder: (context, columnDemo) => ThreePanelsLayer(side1: <Widget>[
                SlideListItem(text: "Disposer des éléments en colonne")
              ], side2: [
                SlideCodeItem(content: columnDemo)
              ], side3: SlideDemoItem(child: ColumnDemo()))),
      progression: progression,
    );
  }
}
