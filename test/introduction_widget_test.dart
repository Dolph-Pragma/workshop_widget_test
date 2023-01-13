import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:workshop_widget_test/introduction_widget.dart';

void main() {
  testWidgets(
    'MyWidget tenga un titulo y un mensaje',
    (tester) async {
      await tester.pumpWidget(const MyWidget(title: "T", message: "M"));

      final titleFinder = find.text('T');
      final messageFinder = find.text('S');

      expect(titleFinder, findsOneWidget);
      expect(messageFinder, findsNothing);
    },
  );

  testWidgets("Encontrar un widget TEXT en mi codigo", (tester) async {
    await tester.pumpWidget(MaterialApp(
      key: const Key("K"),
      home: Container(),
    ));

    expect(find.byKey(const Key("K")), findsOneWidget);
  });

  testWidgets("Encontrar un widget TEXT en mi codigo", (tester) async {
    const childWidget = Padding(padding: EdgeInsets.zero);

    await tester.pumpWidget(Container(
      child: childWidget,
    ));

    expect(find.byWidget(childWidget), findsOneWidget);
  });
}
