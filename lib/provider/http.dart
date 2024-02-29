import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'http.g.dart';

@riverpod
Dio httpRequest(HttpRequestRef ref) => Dio();

@riverpod
Future<Response<String>> sendGetRequest(SendGetRequestRef ref, Uri url) async {
  final client = ref.watch(httpRequestProvider);
  final response = await client.getUri<String>(url);
  return response;
}
