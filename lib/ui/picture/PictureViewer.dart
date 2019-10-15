import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vtah_flutter_intro/colors.dart';
import 'package:vtah_flutter_intro/dimensions.dart';

class PictureViewer extends StatelessWidget {
  final ImageProvider image;
  final Size size;
  final Widget child;

  const PictureViewer({this.image, this.size, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: size.width,
        height: size.height,
        padding: EdgeInsets.all(DimensionsTheme.of(context).paddingXL),
        decoration: BoxDecoration(
            border: Border(
                left: BorderSide(
                    color: ColorsTheme.of(context).primary, width: 4.0))),

        child: child ?? Image(image: image));
  }
}
