import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vtah_flutter_intro/colors.dart';

class PanelPictureLayer extends StatelessWidget {
  const PanelPictureLayer(
      {@required this.picture,
      this.mainAlignment = MainAxisAlignment.center,
      this.crossAlignment = CrossAxisAlignment.start,
      @required this.children});

  final List<Widget> children;
  final Widget picture;
  final MainAxisAlignment mainAlignment;
  final CrossAxisAlignment crossAlignment;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
          flex: 2,
          child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(
                  mainAxisAlignment: mainAlignment,
                  crossAxisAlignment: crossAlignment,
                  children: children))),
      Container(
          decoration: BoxDecoration(
              border: Border(
                  left: BorderSide(
                      color: ColorsTheme.of(context).primary, width: 4.0))),
          child: picture)
    ]);
  }
}
