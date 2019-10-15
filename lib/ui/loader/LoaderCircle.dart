import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoaderCircle extends StatelessWidget {
  const LoaderCircle();

  @override
  Widget build(BuildContext context) {
    return Center(
        child: CircularProgressIndicator(
      backgroundColor: Colors.white70,
      strokeWidth: 4,
    ));
  }
}
