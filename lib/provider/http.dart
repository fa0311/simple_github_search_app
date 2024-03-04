import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:simple_github_search_app/util/logger.dart';

part 'http.g.dart';

/// HTTP リクエストを取得する
@Riverpod(keepAlive: true)
Dio httpRequest(HttpRequestRef ref) {
  return Dio()..interceptors.add(dioLogger);
}
