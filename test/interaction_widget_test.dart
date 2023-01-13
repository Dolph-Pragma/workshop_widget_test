import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:workshop_widget_test/interaction_widget.dart';

void main() {
  testWidgets("Añardir y eliminar elementos", (tester) async {
    await tester.pumpWidget(const TodoList());

    await tester.enterText(find.byKey(const ValueKey("campoIngreso")), 'Hola');

    await tester.tap(find.byType(FloatingActionButton));

    await tester.pump();

    expect(find.text("Hola"), findsOneWidget);

    await tester.drag(find.byType(Dismissible), const Offset(500.0, 0));

    await tester.pumpAndSettle();

    expect(find.text("Hola"), findsNothing);
  });
}
