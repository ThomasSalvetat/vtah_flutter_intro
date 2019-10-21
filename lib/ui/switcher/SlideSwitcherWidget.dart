import 'package:flutter/cupertino.dart';
import 'package:vtah_flutter_intro/ui/navigation/NavigationDirection.dart';

class WidgetSlideSwitcher extends StatefulWidget {
  final Widget child;
  final NavigationDirection direction;

  const WidgetSlideSwitcher({this.child, this.direction});

  @override
  _WidgetSlideSwitcherState createState() => _WidgetSlideSwitcherState();
}

class _WidgetSlideSwitcherState extends State<WidgetSlideSwitcher>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Widget _oldWidget;
  bool _hasBeenReassembled = false;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      lowerBound: 0,
      upperBound: 1,
      duration: const Duration(milliseconds: 800),
      vsync: this,
      animationBehavior: AnimationBehavior.normal,
    );

    _animate();
  }

  _animate() {
    if (_hasBeenReassembled || _oldWidget == null) {
      _hasBeenReassembled = false;
      _controller.animateTo(1, duration: Duration.zero);
    } else if (_oldWidget != widget.child) {
      _controller.reset();
      _controller.animateTo(1, curve: Curves.fastOutSlowIn);
    }
  }

  @override
  void didUpdateWidget(WidgetSlideSwitcher oldWidget) {
    super.didUpdateWidget(oldWidget);
    _oldWidget = oldWidget.child;
    _animate();
  }

  @override
  void reassemble() {
    super.reassemble();
    _hasBeenReassembled = true;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        AnimatedBuilder(
            animation: _controller,
            child: widget.child,
            builder: (BuildContext context, Widget child) =>
                Transform.translate(
                    offset: Tween<Offset>(
                            begin: Offset(
                                1 *
                                    fromDirection(widget.direction) *
                                    MediaQuery.of(context).size.width,
                                0.0),
                            end: Offset.zero)
                        .transform(_controller.value),
                    child: child)),
        AnimatedBuilder(
            animation: _controller,
            child: _oldWidget,
            builder: (BuildContext context, Widget child) =>
                Transform.translate(
                    offset: Tween<Offset>(
                            begin: Offset.zero,
                            end: Offset(
                                -1 *
                                    fromDirection(widget.direction) *
                                    MediaQuery.of(context).size.width,
                                0.0))
                        .transform(_controller.value),
                    child: child))
      ],
    );
  }

  int fromDirection(NavigationDirection direction) {
    return direction == NavigationDirection.FORWARD ? 1 : -1;
  }
}
