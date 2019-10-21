import 'package:flutter/cupertino.dart';
import 'package:vtah_flutter_intro/responsive.theme.dart';

class SlideDemoItem extends StatelessWidget {
  const SlideDemoItem({Key key, this.child}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(
            ResponsiveThemeWidget.of(context).style.paddingStyle.paddingXL),
        child: child);
  }
}
