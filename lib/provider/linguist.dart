import 'package:flutter/services.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:simple_github_search_app/infrastructure/linguist/linguist.dart';
import 'package:simple_github_search_app/infrastructure/linguist/model/linguist.dart';

part 'linguist.g.dart';

/// Linguist のクライアントを取得する
@Riverpod(keepAlive: true)
Future<List<LinguistLanguages>> getLinguistClient(GetLinguistClientRef ref) async {
  final data = await rootBundle.loadString('assets/linguist/languages.yml');
  return Linguist.read(data);
}

/// Linguist を使用して言語の名前から言語のデータを取得する
@Riverpod(keepAlive: true)
Future<LinguistLanguagesData?> getLinguistLanguages(
  GetLinguistLanguagesRef ref,
  String language,
) async {
  final linguist = await ref.watch(getLinguistClientProvider.future);
  final lang = linguist.where((element) => element.name == language);
  return lang.firstOrNull?.value;
}

/// Linguist を使用して言語の名前から言語の色を取得する
@riverpod
Future<int?> getLinguistColor(GetLinguistColorRef ref, String language) async {
  final linguistValue = ref.watch(getLinguistLanguagesProvider(language)).valueOrNull;
  return switch (linguistValue?.color) {
    null => null,
    (final e) => Linguist.toColor(e),
  };
}
