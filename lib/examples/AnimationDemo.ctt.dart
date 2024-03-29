import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimationDemo extends StatefulWidget {
  @override
  _AnimationDemoState createState() => _AnimationDemoState();
}

class _AnimationDemoState extends State<AnimationDemo>
    with SingleTickerProviderStateMixin {
  Animation<Color> animation;
  AnimationController _controller;
  Color _color;

  @override
  void initState() {
    super.initState();

    _color = Colors.red;
    _controller = AnimationController(
        reverseDuration: const Duration(seconds: 2),
        duration: const Duration(seconds: 2),
        vsync: this);
    animation =
        ColorTween(begin: Colors.yellow, end: Colors.blue).animate(_controller)
          ..addListener(() {
            setState(() {
              _color = animation.value;
            });
          });
    _controller.repeat(period: Duration(seconds: 2), reverse: true);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 300,
      color: _color,
    );
  }
}
