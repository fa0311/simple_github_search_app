import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:simple_github_search_app/provider/flutter_secure_storage.dart';

import '../test_util/component.dart';

void main() {
  testWidgets('Github の Token設定', (WidgetTester tester) async {
    await tester.pumpWidget(
      ProviderScope(
        child: TestComponentUtil.setConsumer(
          builder: (context, ref, _) {
            return TextButton(
              onPressed: () async {
                await ref.read(githubTokenSettingProvider.notifier).set('Test');
                final data = ref.read(githubTokenSettingProvider);
                await ref.read(githubTokenSettingProvider.notifier).remove();
                expect(data, 'Test');
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
