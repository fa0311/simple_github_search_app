import 'package:auto_route/auto_route.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:markdown/markdown.dart' as md;
import 'package:simple_github_search_app/app/router.dart';
import 'package:simple_github_search_app/component/part/anchor_link.dart';
import 'package:simple_github_search_app/component/part/circle_cached_network_image.dart';
import 'package:simple_github_search_app/component/part/custom_scroll_listener.dart';
import 'package:simple_github_search_app/component/part/ink_well_card.dart';
import 'package:simple_github_search_app/component/widget/repository_status.dart';
import 'package:simple_github_search_app/provider/github/github.dart';
import 'package:simple_github_search_app/provider/github/repository.dart';
import 'package:simple_github_search_app/provider/http.dart';
import 'package:simple_github_search_app/util/url_launch.dart';

@RoutePage()
class RepositoryPage extends HookConsumerWidget {
  const RepositoryPage({
    super.key,
    @pathParam required this.owner,
    @pathParam required this.repo,
  });

  final String owner;
  final String repo;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final options = useMemoized(() => Options(responseType: ResponseType.bytes), []);
    return Scaffold(
      body: CustomScrollListener(
        slivers: [
          SliverAppBar(
            floating: true,
            title: Text(repo),
            actions: [
              IconButton(
                icon: const Icon(Icons.open_in_browser),
                onPressed: () async {
                  await UrlLaunchUtil.github(owner, repo);
                },
              ),
            ],
          ),
          SliverToBoxAdapter(
            child: ref.watch(getGithubRepositoryProvider(owner, repo)).when(
              data: (value) {
                final lang = value.language;
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            CircleCachedNetworkImage(
                              imageUrl: value.owner?.avatarUrl ?? '',
                            ),
                            AnchorLink(
                              onTap: () async {
                                await context.router.push(SearchRoute(query: 'user:${value.owner?.login}'));
                              },
                              text: value.name,
                              style: Theme.of(context).textTheme.headlineMedium,
                            ),
                            Text('/', style: Theme.of(context).textTheme.headlineMedium),
                            AnchorLink(
                              onTap: () async {
                                await context.router
                                    .push(SearchRoute(query: 'repo:${value.owner?.login}/${value.name}'));
                              },
                              text: value.owner?.login ?? '',
                              style: Theme.of(context).textTheme.headlineMedium,
                            ),
                          ],
                        ),
                      ),
                      if (value.description != null && value.description!.isNotEmpty) Text(value.description!),
                      RepositoryStatus(
                        lang: lang,
                        stargazersCount: value.stargazersCount,
                        watchersCount: value.watchersCount,
                        forksCount: value.forksCount,
                        openIssuesCount: value.openIssuesCount,
                      ),
                      if (value.homepage != null && value.homepage!.isNotEmpty)
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Icon(Icons.link_outlined, size: 16),
                              AnchorLink(
                                onTap: () async {
                                  await UrlLaunchUtil.github(owner, repo);
                                },
                                text: value.homepage.toString(),
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                            ],
                          ),
                        ),
                      Wrap(
                        children: [
                          for (final topic in value.topics ?? <String>[])
                            InkWellCard(
                              color: Theme.of(context).colorScheme.primaryContainer,
                              child: InkWell(
                                borderRadius: BorderRadius.circular(8),
                                onTap: () async {
                                  await context.router.push(SearchRoute(query: 'topic:$topic'));
                                },
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                  child: Text(topic, style: TextStyle(color: Theme.of(context).colorScheme.primary)),
                                ),
                              ),
                            ),
                        ],
                      ),
                      if (!kIsWeb) ...[
                        const Divider(),
                        ref.watch(getGithubReadmeProvider(owner, repo, value.defaultBranch)).when(
                          data: (value) {
                            if (value == null) {
                              return const SizedBox();
                            } else {
                              return MarkdownBody(
                                data: value,
                                onTapLink: (text, href, title) async {
                                  if (href != null) {
                                    await UrlLaunchUtil.uri(Uri.parse(href));
                                  }
                                },
                                extensionSet: md.ExtensionSet(
                                  md.ExtensionSet.gitHubFlavored.blockSyntaxes,
                                  <md.InlineSyntax>[md.EmojiSyntax(), ...md.ExtensionSet.gitHubFlavored.inlineSyntaxes],
                                ),
                                imageBuilder: (uri, _, __) {
                                  return Consumer(
                                    builder: (context, ref, child) {
                                      return ref.watch(getImageProvider(uri)).maybeWhen(
                                            data: (value) {
                                              final contentType = value.headers.value('content-type');
                                              if (contentType?.startsWith('image/svg') == true) {
                                                return SvgPicture.memory(value.data!);
                                              } else if (contentType?.startsWith('image/') == true) {
                                                return Image.memory(value.data!);
                                              } else {
                                                return const SizedBox();
                                              }
                                            },
                                            orElse: () => const SizedBox(),
                                          );
                                    },
                                  );
                                },
                              );
                            }
                          },
                          loading: () {
                            return const Padding(
                              padding: EdgeInsets.all(8),
                              child: Center(child: CircularProgressIndicator()),
                            );
                          },
                          error: (Object error, StackTrace stackTrace) {
                            return Center(child: Text('Error: $error'));
                          },
                        ),
                      ],
                    ],
                  ),
                );
              },
              loading: () {
                return const Padding(padding: EdgeInsets.all(8), child: Center(child: CircularProgressIndicator()));
              },
              error: (Object error, StackTrace stackTrace) {
                return Center(child: Text('Error: $error'));
              },
            ),
          ),
        ],
      ),
    );
  }
}
