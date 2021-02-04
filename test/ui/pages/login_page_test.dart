import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/ui/pages/pages.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Should load with correct initial state',
      (WidgetTester tester) async {
    final loginPage = MaterialApp(home: LoginPage());

    await tester.pumpWidget(loginPage);

    final emailTextChildren = find.descendant(
        of: find.bySemanticsLabel('Email'), matching: find.byType(Text));
    expect(
      emailTextChildren,
      findsOneWidget,
      reason:
          'when TextFormField has only one text child means it has no erros, since is aways the label text',
    );

    final passwordTextChildrenTextChildren = find.descendant(
        of: find.bySemanticsLabel('Email'), matching: find.byType(Text));
    expect(
      passwordTextChildrenTextChildren,
      findsOneWidget,
      reason:
          'when TextFormField has only one text child means it has no erros, since is aways the label text',
    );

    final button = tester.widget<RaisedButton>(find.byType(RaisedButton));
    expect(button.onPressed, null);
  });
}
