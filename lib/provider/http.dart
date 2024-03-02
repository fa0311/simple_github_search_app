import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:simple_github_search_app/util/logger.dart';

part 'http.g.dart';

@riverpod
Dio httpRequest(HttpRequestRef ref) {
  return Dio()..interceptors.add(dioLogger);
}

@riverpod
Future<Response<String>> sendGetRequest(SendGetRequestRef ref, Uri url) async {
  final client = ref.watch(httpRequestProvider);
  final response = await client.getUri<String>(url);
  return response;
}
