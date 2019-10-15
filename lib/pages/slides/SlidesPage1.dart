import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vtah_flutter_intro/modules/slides/SlideProgression.dart';
import 'package:vtah_flutter_intro/ui/slides/type/SlideTypeRoot.dart';

class SlidesPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SlideTypeRoot(
      title: 'Viseo Tech An Hour',
      subtitle: 'Introduction à Flutter : plus que du crossplatform ?',
      author: 'Thomas SALVETAT',
      progression: SlideProgression(current: 1, total: 1),
    );
  }
}
