import 'dart:async';

Future<void> testExecutable(FutureOr<void> Function() testMain) async {
  return await testMain();

  // golden test を行うとなぜかunit testがunit testとして実行されないため、一旦コメントアウト
  // return GoldenToolkit.runWithConfiguration(
  //   () async {
  //     await loadAppFonts();
  //     await testMain();
  //   },
  //   config: GoldenToolkitConfiguration(
  //     defaultDevices: const [
  //       Device.phone,
  //       Device.iphone11,
  //       Device.tabletLandscape,
  //     ],
  //   ),
  // );
}
