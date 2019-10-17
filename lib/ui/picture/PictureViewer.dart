import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vtah_flutter_intro/slide.theme.dart';

class PictureViewer extends StatelessWidget {
  final ImageProvider image;
  final Size size;
  final Widget child;

  const PictureViewer({this.image, this.size, this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(SlideTheme.of(context).paddingL),
        child: child != null
            ? Container(constraints: BoxConstraints.tight(size), child: child)
            : Image(image: image));
  }
}
