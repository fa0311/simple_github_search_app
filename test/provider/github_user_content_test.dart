import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:simple_github_search_app/provider/github_user_content.dart';
import 'package:simple_github_search_app/provider/http.dart';

import '../test_util/provider_container.dart';

void main() {
  test('README を取得する', () async {
    final dio = Dio();
    final adapter = DioAdapter(dio: dio);

    const url = 'https://raw.githubusercontent.com/flutter/flutter/master/README.md';

    // モックの設定
    adapter.onGet(url, (request) => request.reply(200, 'test'));

    final container = createContainer(
      overrides: [
        httpRequestProvider.overrideWith(
          (provider) {
            return dio;
          },
        ),
      ],
    );

    final res = await container.read(getGithubReadmeProvider('flutter', 'flutter', 'master').future);
    expect(res, isA<String>());
  });

  test('画像を取得する', () async {
    final dio = Dio();
    final adapter = DioAdapter(dio: dio);

    const url =
        'https://raw.githubusercontent.com/flutter/flutter/master/dev/automated_tests/website/static/images/flutter-logo.svg';

    // モックの設定
    adapter.onGet(url, (request) => request.reply(200, 'test'));

    final container = createContainer(
      overrides: [
        httpRequestProvider.overrideWith(
          (provider) {
            return dio;
          },
        ),
      ],
    );

    final res = await container.read(getGithubImageProvider(Uri.parse(url), 'flutter', 'flutter', 'master').future);
    expect(res, isA<Response<Uint8List>>());
  });
}
