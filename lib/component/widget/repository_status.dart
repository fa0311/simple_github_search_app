import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:simple_github_search_app/component/part/color_ball.dart';
import 'package:simple_github_search_app/component/widget/error_log_view.dart';
import 'package:simple_github_search_app/provider/linguist.dart';

/// リポジトリのステータスを表示する
class RepositoryStatus extends HookConsumerWidget {
  const RepositoryStatus({
    super.key,
    this.lang,
    required this.stargazersCount,
    required this.watchersCount,
    required this.forksCount,
    required this.openIssuesCount,
  });

  /// 言語
  final String? lang;

  /// スター数
  final int stargazersCount;

  /// ウォッチ数
  final int watchersCount;

  /// フォーク数
  final int forksCount;

  /// オープンイシュー数
  final int openIssuesCount;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        if (lang != null)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                ...ref.watch(getLinguistColorProvider(lang!)).when(
                      data: (color) => [if (color != null) ColorBall(color: Color(color))],
                      loading: () => [],
                      error: (error, stackTrace) => [ErrorLogView(error, stackTrace)],
                    ),
                Text(lang!),
              ],
            ),
          ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.star_outline, size: 16),
              Text(stargazersCount.toString()),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.remove_red_eye_outlined, size: 16),
              Text(watchersCount.toString()),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.call_split_outlined, size: 16),
              Text(forksCount.toString()),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.error_outline, size: 16),
              Text(openIssuesCount.toString()),
            ],
          ),
        ),
      ],
    );
  }
}
