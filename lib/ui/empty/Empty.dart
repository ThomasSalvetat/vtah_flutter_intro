import 'package:flutter/widgets.dart';

class Empty extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;

  const Empty() : preferredSize = const Size.fromHeight(0.0);

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: 0, height: 0);
  }
}
