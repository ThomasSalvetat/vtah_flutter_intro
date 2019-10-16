import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vtah_flutter_intro/pages/navigation/SwiperHorizontalDetector.dart';

class NavigationKeyboardDetector extends StatefulWidget {
  final Widget page;
  final VoidCallback onForward;
  final VoidCallback onBackward;
  final VoidCallback onMenu;

  const NavigationKeyboardDetector(
      {Key key,
      @required this.page,
      @required this.onBackward,
      @required this.onForward,
      @required this.onMenu})
      : super(key: key);

  @override
  _NavigationKeyboardDetectorState createState() =>
      _NavigationKeyboardDetectorState();
}

class _NavigationKeyboardDetectorState
    extends State<NavigationKeyboardDetector> {
  FocusNode _focusNode;
  bool _tempKeyPressedOnce = false;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
  }

  @override
  Widget build(BuildContext context) {
    return SwipeHorizontalDetector(
        onSwipeRight: () => widget.onForward(),
        onSwipeLeft: () => widget.onBackward(),
        child: RawKeyboardListener(
          onKey: (event) => _onKeyDown(context, event),
          child: widget.page,
          autofocus: false,
          focusNode: _focusNode,
        ));
  }

  _onKeyDown(BuildContext context, RawKeyEvent event) {
    if (!_tempKeyPressedOnce) {
      _onKeyPressed(context, event);
    }
    _tempKeyPressedOnce = !_tempKeyPressedOnce;
  }

  _onKeyPressed(BuildContext context, RawKeyEvent event) {
    num keyId = event.logicalKey.keyId;
    if (_isForwardPressed(keyId)) {
      widget.onForward();
    } else if (_isBackwardPressed(keyId)) {
      widget.onBackward();
    } else if (_isMenuPressed(keyId)) {
      widget.onMenu();
    }
  }

  _isForwardPressed(num keyId) {
    switch (keyId) {
      case 0x10007004f:
        return true;
      default:
        return false;
    }
  }

  _isBackwardPressed(num keyId) {
    switch (keyId) {
      case 0x100070050:
        return true;
      default:
        return false;
    }
  }

  _isMenuPressed(num keyId) {
    switch (keyId) {
      case 0x100070029:
        return true;
      default:
        return false;
    }
  }
}
