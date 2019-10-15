import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:meta/meta.dart';
import 'package:vtah_flutter_intro/dimensions.dart';
import 'package:vtah_flutter_intro/ui/marker/BulletMarkerTheme.dart';
import 'package:vtah_flutter_intro/ui/marker/BulletSubMarker.dart';

class SlideSubListItem extends StatelessWidget {
  final String text;
  final BulletMarkerTheme theme;

  const SlideSubListItem({@required this.text, this.theme = BulletMarkerTheme.PRIMARY});

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.topLeft,
        padding: EdgeInsets.symmetric(vertical: DimensionsTheme.of(context).paddingXS, horizontal: DimensionsTheme.of(context).paddingXL),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              BulletSubMarker(theme: theme),
              Text(
                text,
                style: Theme.of(context).textTheme.body1.copyWith(fontSize: 16),
              )
            ]));
  }
}
