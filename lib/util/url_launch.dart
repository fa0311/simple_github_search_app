import 'package:url_launcher/url_launcher.dart';

class UrlLaunchUtil {
  UrlLaunchUtil._();

  static Uri githubBaseUri = Uri.https('github.com');

  static Future<void> github(String name, String repo) async {
    final uri = githubBaseUri.replace(path: '/$name/$repo');
    await launchUrl(uri);
  }

  static Future<void> uri(Uri uri) async {
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw Exception('Could not launch $uri');
    }
  }
}