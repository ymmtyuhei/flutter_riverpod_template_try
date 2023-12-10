import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/app/app.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('App widget under ProviderScope', (WidgetTester tester) async {
    // Build our app under ProviderScope and trigger a frame.
    await tester.pumpWidget(
      ProviderScope(
        child: const App(),
      ),
    );

    // Verify that the MaterialApp widget is found.
    expect(find.byType(MaterialApp), findsOneWidget);
  });
}
