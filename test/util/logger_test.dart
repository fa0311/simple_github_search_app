import 'package:flutter_test/flutter_test.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:simple_github_search_app/util/logger.dart';

import '../test_util/provider_container.dart';

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
  test('Logger のテスト', () async {
    logger.d('Debug log');
  });
  test('Riverpod 用の Logger のテスト', () async {
    ProviderLogger.common = true;

    final container = createContainer();
    container.read(loggerTestStateProvider.notifier).set('ErrorLogView');
    try {
      await container.read(exceptionLoggerTestProvider.future);
    } on Exception {
      expect(true, true);
    }

    ProviderLogger.common = false;
  });
}
