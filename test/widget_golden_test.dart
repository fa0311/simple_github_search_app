import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:simple_github_search_app/main.dart';

void main() {
  testGoldens('GithubSearchApp', (tester) async {
    final builder = DeviceBuilder()..addScenario(widget: const GithubSearchApp());
    await tester.pumpDeviceBuilder(builder);
    await screenMatchesGolden(tester, 'my_home_page');
  });
}
