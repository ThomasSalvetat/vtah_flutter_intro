import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vtah_flutter_intro/responsive.theme.dart';
import 'package:vtah_flutter_intro/slide.theme.dart';

class SlideQuoteItem extends StatelessWidget {
  const SlideQuoteItem({Key key, @required this.texts, this.author, this.onTap})
      : super(key: key);

  final List<String> texts;
  final String author;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: SlideTheme.of(context).textBackground,
            shape: BoxShape.rectangle,
            boxShadow: [
              BoxShadow(
                color: Colors.black45,
                offset: new Offset(8.0, 8.0),
              )
            ],
            borderRadius: BorderRadius.all(Radius.circular(8.0))),
        padding: EdgeInsets.all(
            ResponsiveThemeWidget.of(context).style.paddingStyle.paddingL),
        child: SizedBox(
          width: 400.0,
          child: TypewriterAnimatedTextKit(
              onTap: onTap,
              duration: Duration(seconds: 5),
              text: _generateTexts(texts),
              textStyle: TextStyle(fontSize: 30.0),
              textAlign: TextAlign.start,
              alignment: AlignmentDirectional.topStart),
        ));
  }

  List<String> _generateTexts(List<String> values) {
    if (values.length >= 3) {
      return values;
    } else if (values.length == 2) {
      return [...values, ""];
    } else if (values.length == 1) {
      return [values[0], values[0], values[0]];
    } else {
      return ["", "", ""];
    }
  }
}
