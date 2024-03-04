import 'package:url_launcher/url_launcher.dart';

/// URL を開くユーティリティ
class UrlLaunchUtil {
  UrlLaunchUtil._();
  static Uri githubBaseUri = Uri.https('github.com');

  /// GitHub のリポジトリを開く
  static Future<void> github(String name, String repo) async {
    await uri(githubBaseUri.replace(path: '/$name/$repo'));
  }

  /// GitHub のリポジトリの Issues を開く
  static Future<void> githubOpenIssues(String name, String repo, String title, String body) async {
    await uri(
      githubBaseUri.replace(
        path: '/$name/$repo/issues/new',
        queryParameters: {
          'title': title,
          'body': body,
        },
      ),
    );
  }

  /// URL を開く
  static Future<void> uri(Uri uri) async {
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw Exception('Could not launch $uri');
    }
  }
}
