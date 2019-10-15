import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vtah_flutter_intro/ui/loader/LoaderCircle.dart';

class LoaderSwitcher extends StatelessWidget {
  final WidgetBuilder builder;
  final bool condition;

  const LoaderSwitcher({@required this.condition, @required this.builder});

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      child: condition ? builder(context) : LoaderCircle(),
      transitionBuilder: (Widget child, Animation<double> animation) =>
          FadeTransition(opacity: animation, child: child),
      duration: Duration(milliseconds: 250),
    );
  }
}
