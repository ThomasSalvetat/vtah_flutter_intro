import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/cupertino.dart';

class FlutterAnimatedLogo extends StatefulWidget {
  const FlutterAnimatedLogo({this.size = Size.infinite});

  final Size size;

  @override
  _FlutterAnimatedLogoState createState() => _FlutterAnimatedLogoState();
}

class _FlutterAnimatedLogoState extends State<FlutterAnimatedLogo> {
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
          "assets/flare/logo_flutter.flr",
          fit: BoxFit.fitHeight,
          animation: _animationName,
        ));
  }

  _toggleAnimation(bool enable) =>
      setState(() => _animationName = enable ? "loading" : null);
}
