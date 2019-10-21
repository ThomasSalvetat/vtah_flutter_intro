import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/ocean.dart';
import 'package:vtah_flutter_intro/responsive.theme.dart';

class SlideCodeItem extends StatelessWidget {
  const SlideCodeItem({Key key, @required this.content}) : super(key: key);

  final String content;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(
            ResponsiveThemeWidget.of(context).style.paddingStyle.paddingM),
        child: HighlightView(content ?? "",
            language: 'dart',
            theme: oceanTheme,
            textStyle: ResponsiveThemeWidget.of(context).style.textStyle.code,
            padding: EdgeInsets.all(ResponsiveThemeWidget.of(context)
                .style
                .paddingStyle
                .paddingM)));
  }
}
