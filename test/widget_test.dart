import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hvatning/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const MalshatturApp());

    expect(find.text('Fáðu málshátt í tilefni páskanna!'), findsOneWidget);

    await tester.tap(find.byIcon(Icons.refresh));
    await tester.pump();

    expect(find.text('Fáðu málshátt í tilefni páskanna!'), findsNothing);
  });
}
