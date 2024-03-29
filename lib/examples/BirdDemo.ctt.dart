import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vtah_flutter_intro/examples/Bird.ctt.dart';
import 'package:vtah_flutter_intro/slide.theme.dart';

class BirdDemo extends StatelessWidget {
  final GlobalKey<BirdState> _keyBird = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Bird(key: _keyBird, child: Text("I am a bird")),
          MaterialButton(
              color: SlideTheme.of(context).primary,
              textTheme: ButtonTextTheme.primary,
              onPressed: () => _keyBird.currentState.grow(),
              child: Text("Grow"))
        ]);
  }
}
