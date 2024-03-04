import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:simple_github_search_app/provider/http.dart';

part 'github_user_content.g.dart';

const _baseURl = 'https://raw.githubusercontent.com';

/// Github の README を取得する
@riverpod
Future<String?> getGithubReadme(
  GetGithubReadmeRef ref,
  String owner,
  String repositoryName,
  String branch,
) async {
  final client = ref.watch(httpRequestProvider);
  final url = '$_baseURl/$owner/$repositoryName/$branch/README.md';
  try {
    final response = await client.getUri<String>(Uri.parse(url));
    return response.data;
  } on DioException catch (_) {
    return null;
  }
}

/// Github の画像を取得する
@riverpod
Future<Response<Uint8List>> getGithubImage(
  GetGithubImageRef ref,
  Uri url,
  String owner,
  String repositoryName,
  String branch,
) async {
  // 画像の URL が相対パスの場合は絶対パスに変換する
  final newUrl = url.isAbsolute ? url : Uri.parse('$_baseURl/$owner/$repositoryName/$branch/').resolveUri(url);

  final client = ref.watch(httpRequestProvider);
  final response = await client.getUri<Uint8List>(newUrl, options: Options(responseType: ResponseType.bytes));
  return response;
}
