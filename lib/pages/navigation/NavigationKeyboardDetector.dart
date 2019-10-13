import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavigationKeyboardDetector extends StatefulWidget {
  final Widget page;
  final VoidCallback onForward;
  final VoidCallback onBackward;

  const NavigationKeyboardDetector(
      {this.page, this.onBackward, this.onForward});

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
    return RawKeyboardListener(
      onKey: (event) => _onKeyDown(context, event),
      child: widget.page,
      autofocus: false,
      focusNode: _focusNode,
    );
  }

  _onKeyDown(BuildContext context, RawKeyEvent event) {
    if (!_tempKeyPressedOnce) {
      _onKeyPressed(context, event);
    }
    _tempKeyPressedOnce = !_tempKeyPressedOnce;
  }

  _onKeyPressed(BuildContext context, RawKeyEvent event) {
    String keyName = event.physicalKey.debugName;

    if (_isForwardPressed(keyName)) {
      widget.onForward();
    } else if (_isBackwardPressed(keyName)) {
      widget.onBackward();
    }
  }

  _isForwardPressed(String keyName) {
    switch (keyName) {
      case 'Arrow Right':
        return true;
      default:
        return false;
    }
  }

  _isBackwardPressed(String keyName) {
    switch (keyName) {
      case 'Arrow Left':
        return true;
      default:
        return false;
    }
  }
}
