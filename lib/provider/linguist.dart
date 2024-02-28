import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:simple_github_search_app/infrastructure/linguist/linguist.dart';
import 'package:simple_github_search_app/infrastructure/linguist/model/linguist.dart';

part 'linguist.g.dart';

@riverpod
Future<Linguist> getLinguistClient(GetLinguistClientRef ref) => Linguist.read();

@riverpod
Future<LinguistLanguagesData?> getLinguistLanguages(
  GetLinguistLanguagesRef ref,
  String language,
) async {
  final linguist = await ref.watch(getLinguistClientProvider.future);
  final k = linguist.languages.where((element) => element.name == language);
  return k.firstOrNull?.value;
}
