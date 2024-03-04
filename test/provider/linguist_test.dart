import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:simple_github_search_app/infrastructure/linguist/linguist.dart';
import 'package:simple_github_search_app/infrastructure/linguist/model/linguist.dart';
import 'package:simple_github_search_app/provider/linguist.dart';

import '../test_util/provider_container.dart';

void main() {
  test('言語の情報を取得する', () async {
    final container = createContainer(
      overrides: [
        getLinguistClientProvider.overrideWith((provider) {
          final data = File('assets/linguist/languages.yml').readAsStringSync();
          return Linguist.read(data);
        }),
      ],
    );
    final res = await container.read(getLinguistLanguagesProvider('Dart').future);
    expect(res, isA<LinguistLanguagesData>());
  });

  test('言語の色を取得する', () async {
    final container = createContainer(
      overrides: [
        getLinguistLanguagesProvider('Dart').overrideWith((provider) {
          final data = File('assets/linguist/languages.yml').readAsStringSync();
          final linguist = Linguist.read(data);
          final lang = linguist.where((element) => element.name == 'Dart');
          return lang.firstOrNull?.value;
        }),
      ],
    );
    final res = await container.read(getLinguistColorProvider('Dart').future);
    expect(res, isA<int>());
  });
}
