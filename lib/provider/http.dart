import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:simple_github_search_app/util/logger.dart';

part 'http.g.dart';

@riverpod
Dio httpRequest(HttpRequestRef ref) {
  return Dio()..interceptors.add(dioLogger);
}

@riverpod
Future<Response<Uint8List>> getImage(GetImageRef ref, Uri url) async {
  final client = ref.watch(httpRequestProvider);
  final response = await client.getUri<Uint8List>(url, options: Options(responseType: ResponseType.bytes));
  return response;
}
