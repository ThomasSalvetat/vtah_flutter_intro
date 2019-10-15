import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:vtah_flutter_intro/modules/slides/SlideProgression.dart';
import 'package:vtah_flutter_intro/ui/slides/item/SlideQuoteItem.dart';
import 'package:vtah_flutter_intro/ui/slides/type/SlideTypeTitle.dart';

class SlidesPage5 extends StatefulWidget {
  @override
  _SlidesPage5State createState() => _SlidesPage5State();
}

class _SlidesPage5State extends State<SlidesPage5> {
  bool _debugEnabled = false;

  @override
  Widget build(BuildContext context) {
    return SlideTypeTitle(
      title: 'Flutter',
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SlideQuoteItem(
                texts: ["Everything is a widget", "Composition > inheritance"],
                onTap: _onDebugSwitchChanged)
          ]),
      progression: SlideProgression(current: 5, total: 5),
    );
  }

  _onDebugSwitchChanged() {
    setState(() {
      _debugEnabled = !_debugEnabled;
    });

    debugPaintSizeEnabled = _debugEnabled;
  }
}
