import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vtah_flutter_intro/modules/slides/SlideProgression.dart';
import 'package:vtah_flutter_intro/ui/slides/type/SlideTypeRoot.dart';

class SlidesPage11 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SlideTypeRoot(
      title: 'Flutter',
      subtitle: 'Quelques widgets',
      progression: SlideProgression(current: 11, total: 11),
    );
  }
}
