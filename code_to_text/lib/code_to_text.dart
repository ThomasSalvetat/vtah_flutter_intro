library code_to_text;

import 'package:build/build.dart';

/// The builder factory used by the `build.yaml` script.
Builder simpleBuilder(BuilderOptions options) => SimpleBuilder();

/// A trivial builder which copies the contents of a `spec` file into a `dart` file.
class SimpleBuilder extends Builder {
  @override
  Map<String, List<String>> get buildExtensions => const <String, List<String>>{'.ctt.dart' : <String>['.ctt.txt']};

  @override
  Future<void> build(BuildStep buildStep) async {
    // The asset id identifies
    final AssetId output = buildStep.inputId.changeExtension('.txt');
    final String contents = await buildStep.readAsString(buildStep.inputId);
    buildStep.writeAsString(output, contents);
  }
}