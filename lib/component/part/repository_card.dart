import 'package:flutter/material.dart';
import 'package:simple_github_search_app/component/part/circle_cached_network_image.dart';
import 'package:simple_github_search_app/component/part/ink_well_card.dart';

/// リポジトリの情報を表示するカード
class RepositoryCard extends StatelessWidget {
  const RepositoryCard({
    super.key,
    required this.title,
    required this.description,
    required this.avatarUrl,
    required this.child,
    this.topics = const <String>[],
    this.onTap,
    this.onTopicTap,
  });

  /// リポジトリのタイトル
  final Widget title;

  /// リポジトリの情報
  final Widget description;

  /// アバターのURL
  final String avatarUrl;

  /// その他の情報を表示するためのウィジェット
  final Widget child;

  /// トピック
  final List<String> topics;

  /// トピックのタップしたときの処理
  final void Function(String)? onTopicTap;

  /// タップしたときの処理
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWellCard(
      onTap: onTap,
      child: SizedBox(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 14),
                    child: CircleCachedNetworkImage(
                      imageUrl: avatarUrl,
                    ),
                  ),
                  Expanded(
                    child: title,
                  ),
                ],
              ),
              description,
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for (final topic in topics)
                      InkWellCard(
                        color: Colors.lightBlue[100],
                        child: InkWell(
                          borderRadius: BorderRadius.circular(8),
                          onTap: onTopicTap != null ? () => onTopicTap!(topic) : null,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                            child: Text(topic, style: TextStyle(color: Colors.blue[800])),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
              child,
            ],
          ),
        ),
      ),
    );
  }
}
