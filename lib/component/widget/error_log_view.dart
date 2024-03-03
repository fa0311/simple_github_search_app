import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:simple_github_search_app/infrastructure/github/http.dart';

/// エラーの扱いを決めるクラス
/// [title] エラーのタイトル
/// [message] エラーの詳細なメッセージ
/// [isReport] エラーを報告するかどうか
class ErrorData {
  const ErrorData(
    this.title, {
    this.message,
    this.isReport = false,
  });

  factory ErrorData.fromObject(Object error) {
    return switch (error) {
      final GitHubHttpException e => switch (e.statusCode) {
          // >= 0 && < 100 => const ErrorData(title: '通信エラーが発生しました'),
          // >= 100 && < 200 => const ErrorData(title: '情報を取得できませんでした'),
          // >= 200 && < 300 => const ErrorData(title: '情報を取得できませんでした'),
          // >= 300 && < 400 => const ErrorData(title: 'リダイレクトが発生しました'),
          == 401 => ErrorData('認証エラーが発生しました', message: e.data.message),
          == 403 => ErrorData('アクセス権限がありません', message: e.data.message),
          == 404 => ErrorData('情報が見つかりませんでした', message: e.data.message),
          >= 400 && < 500 => ErrorData('クライアントエラーが発生しました', message: e.data.message, isReport: true),
          >= 500 && < 600 => ErrorData('サーバーエラーが発生しました', message: e.data.message),
          _ => ErrorData('エラーが発生しました', message: e.data.message, isReport: true),
        },
      final DioException e => switch (e.type) {
          DioExceptionType.cancel => const ErrorData('通信がキャンセルされました'),
          DioExceptionType.receiveTimeout => const ErrorData('通信がタイムアウトしました'),
          DioExceptionType.sendTimeout => const ErrorData('通信がタイムアウトしました'),
          DioExceptionType.unknown => const ErrorData('エラーが発生しました'),
          DioExceptionType.connectionTimeout => const ErrorData('通信がタイムアウトしました'),
          DioExceptionType.badCertificate => const ErrorData('証明書のエラーが発生しました'),
          DioExceptionType.badResponse => const ErrorData('エラーが発生しました'),
          DioExceptionType.connectionError => const ErrorData('通信エラーが発生しました'),
        },
      _ => const ErrorData('エラーが発生しました'),
    };
  }

  final String title;
  final String? message;
  final bool isReport;
}

class ErrorLogView extends StatelessWidget {
  const ErrorLogView(
    this.error,
    this.stackTrace, {
    super.key,
  });

  final Object error;
  final StackTrace? stackTrace;

  @override
  Widget build(BuildContext context) {
    final errorData = ErrorData.fromObject(error);

    return Center(
      child: InkWell(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.error_outline),
            Text(errorData.title),
          ],
        ),
        onTap: () {
          showDialog<void>(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text(errorData.message ?? errorData.title),
                content: SingleChildScrollView(
                  child: SelectableText(
                    stackTrace.toString(),
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ),
                actions: [
                  if (errorData.isReport)
                    TextButton(
                      onPressed: () {
                        /// Github の Issue にエラーを報告する
                        // Navigator.of(context).pop();
                      },
                      child: const Text('問題を報告'),
                    ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
