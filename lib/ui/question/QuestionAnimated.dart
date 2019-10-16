import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/widgets.dart';

class QuestionAnimated extends StatefulWidget {
  @override
  _QuestionAnimatedState createState() => _QuestionAnimatedState();
}

class _QuestionAnimatedState extends State<QuestionAnimated> {
  String _animationName;

  @override
  void initState() {
    super.initState();
    _toggleAnimation(true);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        child: FlareActor(
          "assets/flare/question.flr",
          fit: BoxFit.fitHeight,
          animation: _animationName,
        ));
  }

  _toggleAnimation(bool enable) =>
      setState(() => _animationName = enable ? "default" : null);
}
