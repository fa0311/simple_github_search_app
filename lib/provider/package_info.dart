import 'package:package_info_plus/package_info_plus.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'package_info.g.dart';

/// パッケージ情報を取得する
@Riverpod(keepAlive: true)
Future<PackageInfo> getPackageInfo(GetPackageInfoRef ref) {
  return PackageInfo.fromPlatform();
}
