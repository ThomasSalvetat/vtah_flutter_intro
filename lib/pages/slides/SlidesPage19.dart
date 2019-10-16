import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vtah_flutter_intro/dimensions.dart';
import 'package:vtah_flutter_intro/examples/FlexDemo.ctt.dart';
import 'package:vtah_flutter_intro/modules/slides/SlideProgression.dart';
import 'package:vtah_flutter_intro/ui/file/CCTFileBuilder.dart';
import 'package:vtah_flutter_intro/ui/slides/item/SlideCodeItem.dart';
import 'package:vtah_flutter_intro/ui/slides/item/SlideListItem.dart';
import 'package:vtah_flutter_intro/ui/slides/layers/ThreePanelsLayer.dart';
import 'package:vtah_flutter_intro/ui/slides/type/SlideTypeTitle.dart';

class SlidesPage19 extends StatelessWidget {
  const SlidesPage19({Key key, @required this.progression}) : super(key: key);
  final SlideProgression progression;

  @override
  Widget build(BuildContext context) {
    return SlideTypeTitle(
      title: 'Quelques widgets',
      subtitle: 'Flex',
      child: CCTFileBuilder(
          name: "FlexDemo",
          builder: (context, flexDemo) => ThreePanelsLayer(
                  side1: <Widget>[
                    SlideListItem(
                        text:
                            "Disposer des éléments dans un tableau à une dimension à utilisant le modèle FlexBox")
                  ],
                  side2: [
                    SlideCodeItem(content: flexDemo)
                  ],
                  fixed: Padding(
                      padding:
                          EdgeInsets.all(DimensionsTheme.of(context).paddingXL),
                      child: FlexDemo()))),
      progression: progression,
    );
  }
}
