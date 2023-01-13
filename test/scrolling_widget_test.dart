import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:workshop_widget_test/scrolling_widget.dart';

void main() {
  testWidgets("Verificar que la app scrollea y tiene sus elementos",
      (tester) async {
    await tester.pumpWidget(
        MyApp(items: List<String>.generate(10000, (i) => 'Item $i')));

    final listFinder = find.byType(Scrollable);
    final itemFinder = find.byKey(const ValueKey("item_100_text"));

    await tester.scrollUntilVisible(itemFinder, 200, scrollable: listFinder);

    expect(itemFinder, findsOneWidget);
  });
}
