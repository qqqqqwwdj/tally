import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tally/main.dart';

void main() {
  testWidgets('空列表时显示引导文案', (WidgetTester tester) async {
    SharedPreferences.setMockInitialValues(<String, Object>{});
    await tester.pumpWidget(const TallyApp());
    await tester.pumpAndSettle();
    expect(find.text('还没有条目，点右下角添加'), findsOneWidget);
  });
}
