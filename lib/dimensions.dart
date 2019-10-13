import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class DimensionsTheme extends InheritedWidget {
  final DimensionsThemeData data;
  final Widget child;

  DimensionsTheme(
      {Key key,
      double paddingXS = 4,
      double paddingS = 8,
      double paddingM = 16,
      double paddingL = 32,
      double paddingXL = 64,
      this.child})
      : data = DimensionsThemeData(
            paddingXS: paddingXS,
            paddingS: paddingS,
            paddingM: paddingM,
            paddingL: paddingL,
            paddingXL: paddingXL);

  @override
  bool updateShouldNotify(DimensionsTheme oldWidget) {
    return data != oldWidget.data;
  }

  static DimensionsThemeData of(BuildContext context) {
    final DimensionsTheme inheritedAppTheme =
        context.inheritFromWidgetOfExactType(DimensionsTheme);
    return inheritedAppTheme?.data;
  }
}

class DimensionsThemeData extends Diagnosticable {
  const DimensionsThemeData(
      {this.paddingXS,
      this.paddingS,
      this.paddingM,
      this.paddingL,
      this.paddingXL})
      : assert(paddingXS != null),
        assert(paddingS != null),
        assert(paddingM != null),
        assert(paddingL != null),
        assert(paddingXL != null);

  final double paddingXS;
  final double paddingS;
  final double paddingM;
  final double paddingL;
  final double paddingXL;
}
