import 'package:flutter/widgets.dart';

class SwipeHorizontalDetector extends StatelessWidget {
  static const int SWIPE_DOWN_VELOCITY_STEP = 1000;
  final Widget child;
  final VoidCallback onSwipeRight;
  final VoidCallback onSwipeLeft;

  const SwipeHorizontalDetector(
      {@required this.child, this.onSwipeLeft, this.onSwipeRight});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onHorizontalDragEnd: (detail) {
          Velocity velocity = detail.velocity;
          if (velocity != null) {
            if (velocity.pixelsPerSecond.dx.abs() >=
                SwipeHorizontalDetector.SWIPE_DOWN_VELOCITY_STEP) {
              if (velocity.pixelsPerSecond.dx > 0) {
                _onSwipeLeft();
              } else {
                _onSwipeRight();
              }
            }
          }
        },
        child: child);
  }

  void _onSwipeRight() {
    if (this.onSwipeRight != null) {
      this.onSwipeRight();
    }
  }

  void _onSwipeLeft() {
    if (this.onSwipeLeft != null) {
      this.onSwipeLeft();
    }
  }
}
