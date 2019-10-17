import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vtah_flutter_intro/modules/slides/SlideProgression.dart';
import 'package:vtah_flutter_intro/ui/question/QuestionAnimated.dart';
import 'package:vtah_flutter_intro/ui/slides/type/SlideTypeRoot.dart';

class SlidesPage43 extends StatelessWidget {
  const SlidesPage43({Key key, @required this.progression}) : super(key: key);
  final SlideProgression progression;

  @override
  Widget build(BuildContext context) {
    return SlideTypeRoot(
      title: 'Merci',
      subtitle: 'Avez-vous des questions ?',
      progression: progression,
      child: QuestionAnimated(),
    );
  }
}
