import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vtah_flutter_intro/modules/slides/SlideProgression.dart';
import 'package:vtah_flutter_intro/ui/slides/type/SlideTypeTitle.dart';

class SlidesPage8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SlideTypeTitle(
        title: "t",
        subtitle: "e",
        progression: SlideProgression(current: 8, total: 8));
  }
}
