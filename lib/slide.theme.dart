import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class SlideTheme extends InheritedWidget {
  final SlideThemeData data;
  final Widget child;

  SlideTheme(
      {Key key,
      Color primary = const Color.fromARGB(255, 0, 58, 112),
      Color secondary = const Color.fromARGB(255, 84, 197, 248),
      Color warn = const Color.fromARGB(255, 244, 67, 54),
      Color textBackground = const Color.fromARGB(255, 242, 242, 242),
      double paddingXS = 4.0,
      double paddingS = 8.0,
      double paddingM = 16.0,
      double paddingL = 32.0,
      double paddingXL = 64.0,
      this.child})
      : data = SlideThemeData(
            primary: primary,
            secondary: secondary,
            warn: warn,
            textBackground: textBackground,
            paddingXS: paddingXS,
            paddingS: paddingS,
            paddingM: paddingM,
            paddingL: paddingL,
            paddingXL: paddingXL);

  @override
  bool updateShouldNotify(SlideTheme oldWidget) {
    return data != oldWidget.data;
  }

  static SlideThemeData of(BuildContext context) {
    final SlideTheme inheritedAppTheme =
        context.inheritFromWidgetOfExactType(SlideTheme);
    return inheritedAppTheme?.data;
  }
}

class SlideThemeData extends Diagnosticable {
  const SlideThemeData(
      {this.primary,
      this.secondary,
      this.warn,
      this.textBackground,
      this.paddingXS,
      this.paddingS,
      this.paddingM,
      this.paddingL,
      this.paddingXL})
      : assert(primary != null),
        assert(secondary != null),
        assert(warn != null),
        assert(textBackground != null),
        assert(paddingXL != null);

  final Color primary;
  final Color secondary;
  final Color warn;
  final Color textBackground;
  final double paddingXS;
  final double paddingS;
  final double paddingM;
  final double paddingL;
  final double paddingXL;
}
