import 'package:flutter/cupertino.dart';
import 'package:flutter/painting.dart';

class ScrollableLayout extends StatelessWidget {
  const ScrollableLayout({Key key, @required this.child}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints) => SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: ConstrainedBox(
                constraints: BoxConstraints(
                    minWidth: constraints.maxWidth,
                    minHeight: constraints.maxHeight),
                child: IntrinsicHeight(child: child))));
  }
}
