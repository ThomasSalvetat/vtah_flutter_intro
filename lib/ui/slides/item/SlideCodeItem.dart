import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/darcula.dart';
import 'package:vtah_flutter_intro/colors.dart';
import 'package:vtah_flutter_intro/dimensions.dart';

class SlideCodeItem extends StatelessWidget {
  const SlideCodeItem({Key key, @required this.content}) : super(key: key);

  final String content;

  @override
  Widget build(BuildContext context) {
    return Container(
        constraints: BoxConstraints.tightFor(width: 400),
        padding: EdgeInsets.all(DimensionsTheme.of(context).paddingM),
        decoration:
            BoxDecoration(color: ColorsTheme.of(context).textBackground),
        child: SingleChildScrollView(
            child: HighlightView(content ?? "",
                language: 'dart',
                theme: darculaTheme,
                padding:
                    EdgeInsets.all(DimensionsTheme.of(context).paddingM))));
  }
}
