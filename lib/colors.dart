import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ColorsTheme extends InheritedWidget {
  final ColorsThemeData data;
  final Widget child;

  ColorsTheme(
      {Key key,
      Color primary = const Color.fromARGB(255, 0, 58, 112),
      this.child})
      : data = ColorsThemeData(primary: primary);

  @override
  bool updateShouldNotify(ColorsTheme oldWidget) {
    return data != oldWidget.data;
  }

  static ColorsThemeData of(BuildContext context) {
    final ColorsTheme inheritedAppTheme =
        context.inheritFromWidgetOfExactType(ColorsTheme);
    return inheritedAppTheme?.data;
  }
}

class ColorsThemeData extends Diagnosticable {
  const ColorsThemeData({this.primary}) : assert(primary != null);

  final Color primary;
}
