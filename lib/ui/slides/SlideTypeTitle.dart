import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vtah_flutter_intro/colors.dart';
import 'package:vtah_flutter_intro/dimensions.dart';
import 'package:vtah_flutter_intro/modules/slides/SlideProgression.dart';
import 'package:vtah_flutter_intro/ui/footer/SlideFooter.dart';

class SlideTypeTitle extends StatelessWidget {
  final String title;
  final Widget child;
  final SlideProgression progression;

  const SlideTypeTitle({@required this.title, @required this.child, @required this.progression});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Flexible(
                flex: 1,
                child: Container(
                    alignment: Alignment.bottomLeft,
                    padding: EdgeInsets.symmetric(
                        vertical: DimensionsTheme.of(context).paddingL,
                        horizontal: DimensionsTheme.of(context).paddingXL),
                    decoration:
                        BoxDecoration(color: ColorsTheme.of(context).primary),
                    child: Text(title,
                        style: Theme.of(context)
                            .textTheme
                            .display2
                            .copyWith(color: Colors.white)))),
            Flexible(
                flex: 2,
                child: Container(
                    padding:
                        EdgeInsets.all(DimensionsTheme.of(context).paddingXL),
                    alignment: Alignment.topLeft,
                    child: child)),
            SlideFooter(
              progression
            ),
          ]),
    );
  }
}
