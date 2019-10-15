import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ColorsTheme extends InheritedWidget {
  final ColorsThemeData data;
  final Widget child;

  ColorsTheme(
      {Key key,
      Color primary = const Color.fromARGB(255, 0, 58, 112),
      Color secondary = const Color.fromARGB(255, 84, 197, 248),
      Color warn = const Color.fromARGB(255, 244, 67, 54),
      Color textBackground = const Color.fromARGB(255, 242, 242, 242),
      this.child})
      : data = ColorsThemeData(
            primary: primary,
            secondary: secondary,
            warn: warn,
            textBackground: textBackground);

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
  const ColorsThemeData(
      {this.primary, this.secondary, this.warn, this.textBackground})
      : assert(primary != null),
        assert(secondary != null),
        assert(warn != null),
        assert(textBackground != null);

  final Color primary;
  final Color secondary;
  final Color warn;
  final Color textBackground;
}
