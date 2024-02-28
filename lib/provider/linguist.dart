import 'package:flutter/services.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:simple_github_search_app/infrastructure/linguist/linguist.dart';
import 'package:simple_github_search_app/infrastructure/linguist/model/linguist.dart';

part 'linguist.g.dart';

@riverpod
Future<List<LinguistLanguages>> getLinguistClient(GetLinguistClientRef ref) async {
  final data = await rootBundle.loadString('assets/linguist/languages.yml');
  return Linguist.read(data);
}

@riverpod
Future<LinguistLanguagesData?> getLinguistLanguages(
  GetLinguistLanguagesRef ref,
  String language,
) async {
  final linguist = await ref.watch(getLinguistClientProvider.future);
  final lang = linguist.where((element) => element.name == language);
  return lang.firstOrNull?.value;
}
