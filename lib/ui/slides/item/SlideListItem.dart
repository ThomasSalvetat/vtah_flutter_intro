import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:meta/meta.dart';
import 'package:vtah_flutter_intro/dimensions.dart';
import 'package:vtah_flutter_intro/ui/marker/BulletMarker.dart';

class SlideListItem extends StatelessWidget {
  const SlideListItem({Key key, @required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(DimensionsTheme.of(context).paddingM),
        child: IntrinsicHeight(
            child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
              BulletMarker(),
              Text(
                text,
                style: Theme.of(context).textTheme.body1.copyWith(fontSize: 20),
                overflow: TextOverflow.ellipsis,
              )
            ])));
  }
}
