import 'package:flutter/material.dart';
import 'package:simple_github_search_app/infrastructure/github/model/repository.dart';

/// リポジトリの情報を表示するカード
class RepositoryCard extends StatelessWidget {
  const RepositoryCard({
    super.key,
    required this.repository,
  });

  /// リポジトリの情報
  final GithubRepository repository;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8),
                    child: SizedBox(
                      width: 25,
                      height: 25,
                      child: Placeholder(),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      repository.name,
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ),
                ],
              ),
              Text(
                repository.description ?? '',
                style: Theme.of(context).textTheme.bodySmall,
                textAlign: TextAlign.left,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for (final topic in repository.topics ?? <String>[])
                      Card(
                        color: Colors.lightBlue[100],
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                          child: Text(topic, style: TextStyle(color: Colors.blue[800])),
                        ),
                      ),
                  ],
                ),
              ),
              Row(
                children: [
                  Container(
                    width: 10,
                    height: 10,
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text(repository.language ?? '', style: TextStyle(color: Colors.blue[800])),
                  const SizedBox(width: 8),
                  const Icon(Icons.star_outline, size: 16),
                  Text(repository.stargazersCount.toString()),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
