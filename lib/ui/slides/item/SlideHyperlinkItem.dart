import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:vtah_flutter_intro/ui/marker/BulletMarker.dart';
import 'package:vtah_flutter_intro/ui/marker/BulletMarkerTheme.dart';
import 'package:vtah_flutter_intro/ui/text/HyperlinkText.dart';

class SlideHyperlinkItem extends StatelessWidget {
  const SlideHyperlinkItem({Key key, @required this.link, this.text})
      : super(key: key);

  final String link;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          BulletMarker(theme: BulletMarkerTheme.WARN),
          Expanded(child: HyperlinkText(url: link, text: text))
        ]);
  }
}
