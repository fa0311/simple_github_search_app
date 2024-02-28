import 'package:flutter/services.dart';
import 'package:simple_github_search_app/infrastructure/linguist/model/linguist.dart';
import 'package:simple_github_search_app/infrastructure/linguist/yaml_to_dart.dart';
import 'package:yaml/yaml.dart';

/// Linguist による言語の情報を取得する
/// Linguist とは GitHub が提供している言語を判定するためのライブラリ
/// 利用されているyamlファイルを読み込んで、言語の情報を取得する
class Linguist {
  Linguist({required this.languages});

  final List<LinguistLanguages> languages;

  /// Model 内の color を Color に変換するツール
  static int toColor(String color) {
    final hexColor = color.replaceAll('#', '');
    return int.parse('0xFF$hexColor');
  }

  /// Linguist を読み込む
  static Future<Linguist> read() async {
    final loadData = await rootBundle.loadString('assets/linguist/languages.yml');
    final yamlData = loadYaml(loadData) as YamlMap;
    final languages = yamlData.entries.map((e) {
      final value = yamlToDart(e.value);
      return LinguistLanguages(
        name: e.key.toString(),
        value: LinguistLanguagesData.fromJson(value as Map<String, dynamic>),
      );
    });
    return Linguist(languages: languages.toList());
  }
}
