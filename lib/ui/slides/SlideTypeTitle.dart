import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SlideTypeTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
          ]),
    ));
  }
}