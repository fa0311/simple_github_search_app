import 'package:dio/dio.dart';
import 'package:simple_github_search_app/infrastructure/github/model/exception.dart';

/// GitHub の API の例外を管理する
class GitHubHttpException implements Exception {
  GitHubHttpException({
    required this.data,
    required this.type,
    required this.response,
    required this.message,
    required this.statusCode,
  });

  final GitHubException data;
  final DioExceptionType type;
  final Response<dynamic>? response;
  final String? message;
  final int statusCode;
}

/// GitHub の API クライアント の HTTP クライアント
class GitHubHttp {
  GitHubHttp({Dio? dio}) : dio = dio ?? getDio();
  static const String baseUrl = 'https://api.github.com';
  static const String contentType = 'application/json';
  static const String accept = 'application/json';
  static const String userAgent = 'fa0311/simple_github_search_app';
  static const String apiVersion = '2022-11-28';

  final Dio dio;

  /// Dio のデフォルト設定を取得する
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

  /// 認証トークンを設定する
  void setBearerToken(String? token) {
    if (token == null) {
      dio.options.headers.remove('Authorization');
    } else {
      dio.options.headers['Authorization'] = 'Bearer $token';
    }
  }

  /// GET リクエストを送信する
  Future<Response<Map<String, dynamic>>> get({
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
      return res;
    } on DioException catch (e) {
      // エラーでレスポンスボディがある場合は GitHubHttpException に変換する
      final data = e.response?.data;
      if (data is Map<String, dynamic>) {
        throw GitHubHttpException(
          type: e.type,
          response: e.response,
          message: e.message,
          data: GitHubException.fromJson(data),
          statusCode: e.response!.statusCode!,
        );
      } else {
        rethrow;
      }
    }
  }
}
