import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:meta/meta.dart';
import 'package:vtah_flutter_intro/dimensions.dart';
import 'package:vtah_flutter_intro/ui/marker/BulletMarker.dart';

class SlideListItem extends StatelessWidget {
  final String text;

  const SlideListItem({@required this.text});

  @override
  Widget build(BuildContext context) {
    return  Container(
        alignment: Alignment.topLeft,
        padding: EdgeInsets.all(DimensionsTheme.of(context).paddingM), child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
      BulletMarker(color: Colors.red),
      Text(
            text,
            style: Theme.of(context).textTheme.body1.copyWith(fontSize: 20),
          )
    ]));
  }
}
