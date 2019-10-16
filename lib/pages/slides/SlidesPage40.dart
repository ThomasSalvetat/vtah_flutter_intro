import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vtah_flutter_intro/modules/slides/SlideProgression.dart';
import 'package:vtah_flutter_intro/ui/slides/type/SlideTypeRoot.dart';

class SlidesPage40 extends StatelessWidget {
  const SlidesPage40({Key key, @required this.progression}) : super(key: key);
  final SlideProgression progression;

  @override
  Widget build(BuildContext context) {
    return SlideTypeRoot(
      title: 'Démo',
      subtitle:
          'Application pour afficher les 100 premières séries les plus polulaires sur Apple TV',
      progression: progression,
    );
  }
}
