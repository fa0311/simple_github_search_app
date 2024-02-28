import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:simple_github_search_app/infrastructure/linguist/linguist.dart';
import 'package:simple_github_search_app/infrastructure/linguist/model/linguist.dart';

void main() {
  test('Linguist が読み込めるか', () async {
    final assets = await File('assets/linguist/languages.yml').readAsString();
    final linguist = Linguist.read(assets);

    expect(linguist, isA<List<LinguistLanguages>>());
    expect(linguist.isNotEmpty, true);
  });

  test('Linguist から言語の情報を取得できるか', () async {
    final assets = await File('assets/linguist/languages.yml').readAsString();
    final linguist = Linguist.read(assets);
    final language = linguist.firstWhere((e) => e.name == 'Dart');

    expect(language.value.color, '#00B4AB');
    expect(language.value.codemirrorMimeType, 'application/dart');
    expect(language.value.codemirrorMode, 'dart');
    expect(language.value.extensions, ['.dart']);
  });

  test('Linguist の color を Color に変換できるか', () {
    final color = Linguist.toColor('#f1e05a');
    expect(color, 0xFFf1e05a);
  });
}
