import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:simple_github_search_app/infrastructure/linguist/linguist.dart';

void main() {
  test('Linguist のモデルの検証', () async {
    final assets = await File('assets/linguist/languages.yml').readAsString();
    final linguist = Linguist.read(assets);
    linguist.first.copyWith()
      ..toJson()
      ..toString();

    // エラーが出なければOK
    expect(true, true);
  });
}
