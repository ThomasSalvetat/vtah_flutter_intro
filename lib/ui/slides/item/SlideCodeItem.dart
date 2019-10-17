import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/darcula.dart';
import 'package:vtah_flutter_intro/slide.theme.dart';

class SlideCodeItem extends StatelessWidget {
  const SlideCodeItem({Key key, @required this.content}) : super(key: key);

  final String content;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(SlideTheme.of(context).paddingM),
        decoration: BoxDecoration(color: SlideTheme.of(context).textBackground),
        child: SingleChildScrollView(
            child: HighlightView(content ?? "",
                language: 'dart',
                theme: darculaTheme,
                textStyle: TextStyle(fontSize: 18),
                padding: EdgeInsets.all(SlideTheme.of(context).paddingM))));
  }
}
