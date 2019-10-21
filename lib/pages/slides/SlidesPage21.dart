import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vtah_flutter_intro/examples/WrapDemoLayouts.ctt.dart';
import 'package:vtah_flutter_intro/modules/slides/SlideProgression.dart';
import 'package:vtah_flutter_intro/ui/file/CCTFileBuilder.dart';
import 'package:vtah_flutter_intro/ui/slides/item/SlideCodeItem.dart';
import 'package:vtah_flutter_intro/ui/slides/item/SlideDemoItem.dart';
import 'package:vtah_flutter_intro/ui/slides/item/SlideListItem.dart';
import 'package:vtah_flutter_intro/ui/slides/layers/ThreePanelsLayer.dart';
import 'package:vtah_flutter_intro/ui/slides/type/SlideTypeTitle.dart';

class SlidesPage21 extends StatelessWidget {
  const SlidesPage21({Key key, @required this.progression}) : super(key: key);
  final SlideProgression progression;

  @override
  Widget build(BuildContext context) {
    return SlideTypeTitle(
      title: 'Quelques widgets',
      subtitle: 'Wrap',
      child: CCTFileBuilder(
          name: "WrapDemoLayouts",
          builder: (context, wrapDemoLayouts) => CCTFileBuilder(
              name: "WrapDemo",
              builder: (context, wrapDemo) => ThreePanelsLayer(side1: <Widget>[
                    SlideListItem(
                        text: "Disposer les éléments le long d'un axe"),
                    SlideListItem(
                        text:
                            "Disposer sur un axe secondaire si pas d'espace disponible"),
                    SlideListItem(
                        text:
                            "Séparer les élements entre eux d'une certaine distance"),
                  ], side2: [
                    SlideCodeItem(content: wrapDemo),
                    SlideCodeItem(content: wrapDemoLayouts)
                  ], side3: SlideDemoItem(child: WrapDemoLayouts())))),
      progression: progression,
    );
  }
}
