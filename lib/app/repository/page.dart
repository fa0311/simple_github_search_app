import 'dart:typed_data';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:markdown/markdown.dart' as md;
import 'package:simple_github_search_app/app/router.dart';
import 'package:simple_github_search_app/component/circle_cached_network_image.dart';
import 'package:simple_github_search_app/component/color_ball.dart';
import 'package:simple_github_search_app/component/custom_scroll_listener.dart';
import 'package:simple_github_search_app/component/ink_well_card.dart';
import 'package:simple_github_search_app/infrastructure/github/model/repository.dart';
import 'package:simple_github_search_app/infrastructure/linguist/linguist.dart';
import 'package:simple_github_search_app/provider/github.dart';
import 'package:simple_github_search_app/provider/http.dart';
import 'package:simple_github_search_app/provider/linguist.dart';
import 'package:url_launcher/url_launcher.dart';

@RoutePage()
class RepositoryPage extends HookConsumerWidget implements AutoRouteWrapper {
  const RepositoryPage({
    super.key,
    @pathParam required this.owner,
    @pathParam required this.name,
    this.repository,
  });

  final String owner;
  final String name;
  final GithubRepository? repository;

  @override
  Widget wrappedRoute(BuildContext context) {
    if (repository == null) {
      return this;
    } else {
      return ProviderScope(
        overrides: [
          githubRepositoriesProvider(owner, name).overrideWith((ref) async => repository!),
        ],
        child: this,
      );
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: CustomScrollListener(
        slivers: [
          SliverAppBar(
            floating: true,
            title: Text(name),
            actions: [
              // view on browser
              IconButton(
                icon: const Icon(Icons.open_in_browser),
                onPressed: () async {
                  final url = Uri.parse('https://github.com/$owner/$name');
                  if (!await launchUrl(url)) {
                    throw Exception('Could not launch $url');
                  }
                },
              ),
            ],
          ),
          SliverToBoxAdapter(
            child: ref.watch(githubRepositoriesProvider(owner, name)).when(
              data: (value) {
                final lang = value.language;
                final linguistValue = lang == null ? null : ref.watch(getLinguistLanguagesProvider(lang)).valueOrNull;
                final langColor = linguistValue?.color == null ? null : Color(Linguist.toColor(linguistValue!.color!));
                return Column(
                  children: [
                    Row(
                      children: [
                        CircleCachedNetworkImage(
                          imageUrl: value.owner?.avatarUrl ?? '',
                        ),
                        InkWell(
                          onTap: () {
                            context.router.push(SearchRoute(query: 'user:${value.owner?.login}'));
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                            child: Text(
                              value.name,
                              style: Theme.of(context).textTheme.headlineMedium?.merge(
                                    const TextStyle(color: Colors.blue),
                                  ),
                            ),
                          ),
                        ),
                        Text('/', style: Theme.of(context).textTheme.headlineMedium),
                        InkWell(
                          onTap: () {
                            context.router.push(SearchRoute(query: 'repo:${value.owner?.login}/${value.name}'));
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                            child: Text(
                              value.owner?.login ?? '',
                              style: Theme.of(context).textTheme.headlineMedium?.merge(
                                    const TextStyle(color: Colors.blue),
                                  ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Text(value.description ?? ''),
                    Wrap(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              if (langColor != null) ColorBall(color: langColor),
                              if (lang != null) Text(lang),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Icon(Icons.star_outline, size: 16),
                              Text(value.stargazersCount.toString()),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Icon(Icons.remove_red_eye_outlined, size: 16),
                              Text(value.watchersCount.toString()),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Icon(Icons.call_split_outlined, size: 16),
                              Text(value.forksCount.toString()),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Icon(Icons.error_outline, size: 16),
                              Text(value.openIssuesCount.toString()),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(Icons.link_outlined, size: 16),
                          InkWell(
                            onTap: () => {},
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                              child: Text(
                                value.homepage.toString(),
                                style: Theme.of(context).textTheme.bodyMedium?.merge(
                                      const TextStyle(color: Colors.blue),
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Wrap(
                      children: [
                        for (final topic in value.topics ?? <String>[])
                          InkWellCard(
                            color: Colors.lightBlue[100],
                            child: InkWell(
                              borderRadius: BorderRadius.circular(8),
                              onTap: () => context.router.push(SearchRoute(query: 'topic:$topic')),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                child: Text(topic, style: TextStyle(color: Colors.blue[800])),
                              ),
                            ),
                          ),
                      ],
                    ),
                    ref.watch(getGithubReadmeProvider(owner, name, value.defaultBranch)).when(
                      data: (value) {
                        return MarkdownBody(
                          data: value,
                          extensionSet: md.ExtensionSet(
                            md.ExtensionSet.gitHubFlavored.blockSyntaxes,
                            <md.InlineSyntax>[md.EmojiSyntax(), ...md.ExtensionSet.gitHubFlavored.inlineSyntaxes],
                          ),
                          imageBuilder: (uri, _, __) {
                            return Consumer(
                              builder: (context, ref, child) {
                                return ref.watch(sendGetRequestProvider(uri)).maybeWhen(
                                      data: (value) {
                                        if (value.headers.value('content-type')?.startsWith('image/svg') == true) {
                                          return SvgPicture.string(value.data!);
                                        } else if (value.headers.value('content-type')?.startsWith('image/') == true) {
                                          return Image.memory(Uint8List.fromList(value.data!.codeUnits));
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
