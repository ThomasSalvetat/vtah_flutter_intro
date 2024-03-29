import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:vtah_flutter_intro/examples/BananaIcon.ctt.dart';

void main() {
  testWidgets('Banana icon should display 2 banana', (WidgetTester tester) async {
    await tester.pumpWidget(BananaIcon(bananaCount: 2));

    final imageFinder = find.byType(Image);
    expect(imageFinder, findsOneWidget);
    final Image image = tester.widget(imageFinder);
    expect(image.image, AssetImage('assets/images/banana_2.png'));
  });
}