import 'package:flutter/cupertino.dart';

enum SlidesEvent { previous, forward, goto }

class SlidesAction {
  const SlidesAction({@required this.event, this.slide});

  final SlidesEvent event;
  final int slide;
}
