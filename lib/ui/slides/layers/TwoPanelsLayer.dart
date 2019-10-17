import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vtah_flutter_intro/slide.theme.dart';

class TwoPanelsLayer extends StatelessWidget {
  const TwoPanelsLayer(
      {@required this.fixed,
      this.alignment = Alignment.centerLeft,
      this.mainAlignment = MainAxisAlignment.center,
      this.crossAlignment = CrossAxisAlignment.start,
      @required this.children});

  final List<Widget> children;
  final Widget fixed;
  final Alignment alignment;
  final MainAxisAlignment mainAlignment;
  final CrossAxisAlignment crossAlignment;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Align(
          alignment: alignment,
          child: Column(
              mainAxisAlignment: mainAlignment,
              crossAxisAlignment: crossAlignment,
              children: children)),
      Expanded(
          child: Container(
        decoration: BoxDecoration(
            border: Border(
                left: BorderSide(
                    color: SlideTheme.of(context).primary, width: 4.0))),
        child: fixed,
      ))
    ]);
  }
}
