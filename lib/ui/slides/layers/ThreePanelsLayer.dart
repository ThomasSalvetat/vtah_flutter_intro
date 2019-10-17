import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vtah_flutter_intro/slide.theme.dart';

class ThreePanelsLayer extends StatelessWidget {
  const ThreePanelsLayer(
      {@required this.fixed, @required this.side1, @required this.side2});

  final List<Widget> side1;
  final List<Widget> side2;
  final Widget fixed;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
          flex: 2,
          child: Row(
              verticalDirection: VerticalDirection.down,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: side1),
                Expanded(
                    flex: 1,
                    child: Center(
                        child:
                            Wrap(direction: Axis.horizontal, children: side2)))
              ])),
      Container(
          decoration: BoxDecoration(
              border: Border(
                  left: BorderSide(
                      color: SlideTheme.of(context).primary, width: 4.0))),
          child: fixed),
    ]);
  }
}
