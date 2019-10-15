import 'package:flutter/widgets.dart';
import 'package:vtah_flutter_intro/ui/empty/Empty.dart';

class IfNotEmptyBuilder extends StatelessWidget {
  final WidgetBuilder builder;
  final bool condition;

  const IfNotEmptyBuilder({@required this.condition, @required this.builder});

  @override
  Widget build(BuildContext context) {
    return condition != null && condition ? builder(context) : Empty();
  }
}
