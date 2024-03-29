import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vtah_flutter_intro/examples/StackDemo.ctt.dart';
import 'package:vtah_flutter_intro/modules/slides/SlideProgression.dart';
import 'package:vtah_flutter_intro/ui/file/CCTFileBuilder.dart';
import 'package:vtah_flutter_intro/ui/slides/item/SlideCodeItem.dart';
import 'package:vtah_flutter_intro/ui/slides/item/SlideDemoItem.dart';
import 'package:vtah_flutter_intro/ui/slides/item/SlideListItem.dart';
import 'package:vtah_flutter_intro/ui/slides/layers/ThreePanelsLayer.dart';
import 'package:vtah_flutter_intro/ui/slides/type/SlideTypeTitle.dart';

class SlidesPage22 extends StatelessWidget {
  const SlidesPage22({Key key, @required this.progression}) : super(key: key);
  final SlideProgression progression;

  @override
  Widget build(BuildContext context) {
    return SlideTypeTitle(
      title: 'Quelques widgets',
      subtitle: 'Stack',
      child: CCTFileBuilder(
          name: "StackDemo",
          builder: (context, stackDemo) => ThreePanelsLayer(side1: <Widget>[
                SlideListItem(
                    text: "Positioner les éléments de manière relative")
              ], side2: [
                SlideCodeItem(content: stackDemo),
              ], side3: SlideDemoItem(child: StackDemo()))),
      progression: progression,
    );
  }
}
