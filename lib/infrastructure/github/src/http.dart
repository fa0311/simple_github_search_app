import 'package:dio/dio.dart';
import 'package:simple_github_search_app/infrastructure/github/src/model/exception.dart';

class GitHubHttpException implements Exception {
  GitHubHttpException({
    required this.data,
    required this.type,
    required this.response,
    required this.message,
  });

  final GitHubException data;
  final DioExceptionType type;
  final Response<dynamic>? response;
  final String? message;
}

class GitHubHttp {
  GitHubHttp({Dio? dio}) : dio = dio ?? getDio();
  static const String baseUrl = 'https://api.github.com';
  static const String contentType = 'application/json';
  static const String accept = 'application/json';
  static const String userAgent = 'fa0311/simple_github_search_app';
  static const String apiVersion = '2022-11-28';

  final Dio dio;

  static Dio getDio() {
    return Dio(
      BaseOptions(
        baseUrl: baseUrl,
        headers: {
          'Content-Type': contentType,
          'Accept': accept,
          'User-Agent': userAgent,
          'X-GitHub-Api-Version': apiVersion,
        },
      ),
    );
  }

  Future<Map<String, dynamic>> get({
    required String path,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
  }) async {
    try {
      final res = await dio.get<Map<String, dynamic>>(
        path,
        queryParameters: queryParameters,
        options: Options(
          headers: headers,
        ),
      );
      return res.data!;
    } on DioException catch (e) {
      final k = e.response?.data;
      if (k is Map<String, dynamic>) {
        throw GitHubHttpException(
          type: e.type,
          response: e.response,
          message: e.message,
          data: GitHubException.fromJson(k),
        );
      } else {
        rethrow;
      }
    }
  }
}
