import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:simple_github_search_app/provider/shared_preferences.dart';

import '../test_util/component.dart';

void main() {
  testWidgets('テーマ設定', (WidgetTester tester) async {
    await tester.pumpWidget(
      ProviderScope(
        child: TestComponentUtil.setConsumer(
          builder: (context, ref, _) {
            return TextButton(
              onPressed: () async {
                await ref.read(themeSettingProvider.notifier).set(ThemeMode.dark);
                final data = ref.read(themeSettingProvider);
                expect(data, ThemeMode.dark);
              },
              child: const Text('Button'),
            );
          },
          isLocalizations: true,
        ),
      ),
    );

    expect(find.text('Button'), findsOneWidget);
    await tester.tap(find.text('Button'));
    await tester.pump(const Duration(seconds: 1));
  });

  testWidgets('言語設定', (WidgetTester tester) async {
    await tester.pumpWidget(
      ProviderScope(
        child: TestComponentUtil.setConsumer(
          builder: (context, ref, _) {
            return TextButton(
              onPressed: () async {
                await ref.read(languageSettingProvider.notifier).set(const Locale('ja', 'JP'));
                final data = ref.read(languageSettingProvider);

                ref.read(languageSettingProvider.notifier).defaultLocale();

                expect(data, const Locale('ja', 'JP'));
              },
              child: const Text('Button'),
            );
          },
          isLocalizations: true,
        ),
      ),
    );

    expect(find.text('Button'), findsOneWidget);
    await tester.tap(find.text('Button'));
    await tester.pump(const Duration(seconds: 1));
  });
}
