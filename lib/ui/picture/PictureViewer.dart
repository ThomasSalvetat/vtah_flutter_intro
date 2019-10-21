import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vtah_flutter_intro/responsive.theme.dart';

class PictureViewer extends StatelessWidget {
  const PictureViewer({Key key, this.image, this.child}) : super(key: key);

  final ImageProvider image;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(
            ResponsiveThemeWidget.of(context).style.paddingStyle.paddingL),
        child: child != null ? child : Image(image: image));
  }
}
