import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/cupertino.dart';

class FlutterAnimatedLogo extends StatefulWidget {
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
    return AspectRatio(
        aspectRatio: 1,
        child: FlareActor(
          "assets/flare/logo_flutter.flr",
          fit: BoxFit.cover,
          alignment: Alignment.center,
          animation: _animationName,
        ));
  }

  _toggleAnimation(bool enable) =>
      setState(() => _animationName = enable ? "loading" : null);
}
