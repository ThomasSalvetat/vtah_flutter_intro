import 'package:flutter/material.dart';

import 'NavigationDirection.dart';
import 'NavigationSide.dart';

class NavigationSlide<T> extends MaterialPageRoute<T> {
  final NavigationDirection direction;
  final NavigationSide side;
  final WidgetBuilder builder;
  final bool maintainState;

  NavigationSlide(
      {this.direction, this.side, this.builder, this.maintainState = false})
      : super(builder: builder, maintainState: maintainState);

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    if (settings.isInitialRoute) {
      return child;
    }

    var offsetEnter =
        side == NavigationSide.VERTICAL ? Offset(0.0, 1.0) : Offset(1.0, 0.0);
    var offsetLeave =
        side == NavigationSide.VERTICAL ? Offset(0.0, -1.0) : Offset(-1.0, 0.0);

    if (direction == NavigationDirection.FORWARD) {
      return SlideTransition(
        position: Tween<Offset>(
          begin: offsetEnter,
          end: Offset.zero,
        ).animate(CurvedAnimation(curve: Curves.easeInOut, parent: animation)),
        child: child,
      );
    } else {
      return SlideTransition(
          position: Tween<Offset>(
            begin: offsetLeave,
            end: Offset.zero,
          ).animate(
              CurvedAnimation(curve: Curves.easeInOut, parent: animation)),
          child: child);
    }
  }
}
