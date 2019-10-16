import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:vtah_flutter_intro/ui/loader/LoaderSwitcher.dart';

typedef CCTFileBuilderCallback = Function(BuildContext context, String content);

class CCTFileBuilder extends StatelessWidget {
  const CCTFileBuilder({Key key, @required this.name, @required this.builder})
      : super(key: key);

  final String name;
  final CCTFileBuilderCallback builder;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: Stream.fromFuture(readCTTFile(name)),
        builder: (context, asyncData) => LoaderSwitcher(
              condition: asyncData.hasData,
              builder: (context) => builder(context, asyncData.data),
            ));
  }

  Future<String> readCTTFile(String name) async {
    String content = await rootBundle.loadString('assets/ctt/$name.ctt.txt');
    await Future.delayed(Duration(milliseconds: 250));
    return content;
  }
}
