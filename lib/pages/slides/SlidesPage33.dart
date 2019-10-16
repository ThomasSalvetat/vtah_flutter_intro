import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vtah_flutter_intro/modules/slides/SlideProgression.dart';
import 'package:vtah_flutter_intro/ui/slides/type/SlideTypeRoot.dart';

class SlidesPage33 extends StatelessWidget {
  const SlidesPage33({Key key, @required this.progression}) : super(key: key);
  final SlideProgression progression;

  @override
  Widget build(BuildContext context) {
    return SlideTypeRoot(
      title: 'Flutter',
      subtitle: 'State management',
      progression: progression,
    );
  }
}
