import 'package:flutter/cupertino.dart';
import 'package:vtah_flutter_intro/responsive.theme.dart';

typedef ResponsiveBreakpointsLayoutBuilder = Function(
    BuildContext, ResponsiveThemeBreakpoint);

class ResponsiveBreakpointsLayout extends StatelessWidget {
  const ResponsiveBreakpointsLayout({Key key, this.builder}) : super(key: key);

  final ResponsiveBreakpointsLayoutBuilder builder;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      ResponsiveThemeBreakpoint breakpoint =
          _handleBreakPointChanges(constraints);
      return builder(context, breakpoint);
    });
  }

  ResponsiveThemeBreakpoint _handleBreakPointChanges(
      BoxConstraints constraints) {
    return ResponsiveThemeBreakpoint.fromSize(constraints.biggest);
  }
}
