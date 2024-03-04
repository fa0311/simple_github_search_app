import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:simple_github_search_app/infrastructure/github/http.dart';
import 'package:simple_github_search_app/util/constant.dart';
import 'package:simple_github_search_app/util/url_launch.dart';

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

  factory ErrorData.fromObject(AppLocalizations localizations, Object error) {
    return switch (error) {
      final GitHubHttpException e => switch (e.statusCode) {
          // >= 0 && < 100 => const ErrorData(title: '通信エラーが発生しました'),
          // >= 100 && < 200 => const ErrorData(title: '情報を取得できませんでした'),
          // >= 200 && < 300 => const ErrorData(title: '情報を取得できませんでした'),
          // >= 300 && < 400 => const ErrorData(title: 'リダイレクトが発生しました'),
          == 401 => ErrorData(localizations.errorAuthMessage, message: e.data.message),
          == 403 => ErrorData(localizations.errorAccessMessage, message: e.data.message),
          == 404 => ErrorData(localizations.errorNotFoundMessage, message: e.data.message),
          >= 400 && < 500 => ErrorData(localizations.errorClientMessage, message: e.data.message, isReport: true),
          >= 500 && < 600 => ErrorData(localizations.errorServerMessage, message: e.data.message),
          _ => ErrorData(localizations.errorUnknownMessage, message: e.data.message, isReport: true),
        },
      final DioException e => switch (e.type) {
          DioExceptionType.cancel => ErrorData(localizations.errorCancelMessage),
          DioExceptionType.receiveTimeout => ErrorData(localizations.errorReceiveTimeoutMessage),
          DioExceptionType.sendTimeout => ErrorData(localizations.errorSendTimeoutMessage),
          DioExceptionType.unknown => ErrorData(localizations.errorUnknownMessage),
          DioExceptionType.connectionTimeout => ErrorData(localizations.errorConnectionTimeoutMessage),
          DioExceptionType.badCertificate => ErrorData(localizations.errorBadCertificateMessage),
          DioExceptionType.badResponse => ErrorData(localizations.errorBadResponseMessage),
          DioExceptionType.connectionError => ErrorData(localizations.errorConnectionErrorMessage),
        },
      _ => ErrorData(localizations.errorUnknownMessage, isReport: true),
    };
  }

  final String title;
  final String? message;
  final bool isReport;
}

/// エラーを表示する
class ErrorLogView extends StatelessWidget {
  const ErrorLogView(
    this.error,
    this.stackTrace, {
    super.key,
  });

  /// エラー
  final Object error;

  /// スタックトレース
  final StackTrace? stackTrace;

  @override
  Widget build(BuildContext context) {
    final errorData = ErrorData.fromObject(AppLocalizations.of(context)!, error);

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
                        final markdown = [
                          '```log',
                          'Error: $error',
                          '```',
                          '```log',
                          'StackTrace: $stackTrace',
                          '```',
                        ].join('\n');
                        UrlLaunchUtil.githubOpenIssues(
                          Constant.githubUser,
                          Constant.githubRepository,
                          error.toString(),
                          markdown,
                        );
                      },
                      child: Text(AppLocalizations.of(context)!.errorReportButton),
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
