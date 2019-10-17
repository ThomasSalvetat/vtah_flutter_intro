import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:meta/meta.dart';
import 'package:vtah_flutter_intro/slide.theme.dart';
import 'package:vtah_flutter_intro/ui/marker/BulletMarker.dart';
import 'package:vtah_flutter_intro/ui/marker/BulletMarkerTheme.dart';

class SlideListItem extends StatelessWidget {
  const SlideListItem(
      {Key key, @required this.text, this.theme = BulletMarkerTheme.SECONDARY})
      : super(key: key);

  final String text;
  final BulletMarkerTheme theme;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(SlideTheme.of(context).paddingS),
        child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              BulletMarker(theme: theme),
              Text(
                text,
                style: Theme.of(context).textTheme.body1.copyWith(fontSize: 20),
                overflow: TextOverflow.ellipsis,
              )
            ]));
  }
}
