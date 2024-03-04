import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:simple_github_search_app/util/logger.dart';

import '../test_util/component.dart';

part 'logger_test.g.dart';

@riverpod
class LoggerTestState extends _$LoggerTestState {
  @override
  String build() {
    return 'LoggerTestState';
  }

  // ignore: use_setters_to_change_properties
  void set(String value) {
    state = value;
  }
}

@riverpod
FutureOr<void> exceptionLoggerTest(ExceptionLoggerTestRef ref) {
  throw Exception('ExceptionLoggerTest');
}

void main() {
  testWidgets('Logger のテスト', (WidgetTester tester) async {
    logger.d('Debug log');
  });
  testWidgets('Riverpod 用の Logger のテスト', (WidgetTester tester) async {
    ProviderLogger.common = true;
    await tester.pumpWidget(
      ProviderScope(
        observers: [ProviderLogger()],
        child: TestComponentUtil.setConsumer(
          builder: (context, ref, _) {
            ref.watch(loggerTestStateProvider);
            return TextButton(
              onPressed: () async {
                ref.read(loggerTestStateProvider.notifier).set('ErrorLogView');
                try {
                  await ref.read(exceptionLoggerTestProvider.future);
                } on Exception {
                  expect(true, true);
                }
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

    ProviderLogger.common = false;
  });
}
