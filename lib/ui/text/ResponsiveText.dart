import 'package:flutter/cupertino.dart';

class ResponsiveText extends StatelessWidget {
  const ResponsiveText(this.text, {this.style});

  final String text;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
        child: Text(
      text,
      style: style,
    ));
  }
}
