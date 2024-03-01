import 'package:freezed_annotation/freezed_annotation.dart';

part 'search.freezed.dart';

@Freezed(genericArgumentFactories: true)
class GithubItems<T> with _$GithubItems<T> {
  const factory GithubItems({
    required int totalCount,
    required bool incompleteResults,
    required List<T> items,
  }) = _GithubItems<T>;
}
