import 'package:file/local.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:simple_github_search_app/component/part/circle_cached_network_image.dart';

import '../../test_util/assets.dart';
import '../../test_util/component.dart';
import 'circle_cached_network_image_test.mocks.dart';

@GenerateNiceMocks([MockSpec<DefaultCacheManager>()])
void main() {
  testWidgets('AppIcon の初期状態', (WidgetTester tester) async {
    final cache = MockDefaultCacheManager();

    when(cache.getFileFromCache(any)).thenAnswer((args) async {
      return FileInfo(
        const LocalFileSystem().file(TestUtilAssets.iconPath),
        FileSource.Cache,
        DateTime.now(),
        args.positionalArguments.first as String,
      );
    });

    await tester.pumpWidget(
      TestComponentUtil.setApp(
        const CircleCachedNetworkImage(
          imageUrl: TestUtilAssets.mockUrl,
          size: 100,
        ),
      ),
    );
    expect(find.byType(CircleCachedNetworkImage), findsOneWidget);

    await tester.pumpAndSettle();
  });
}
