import 'dart:convert';
import 'dart:io';

class TestUtilAssets {
  TestUtilAssets._();
  static const basePath = 'test/assets';
  static const iconPath = 'assets/icon/icon.png';

  static const mockUrl = 'https://localhost:8080';

  static Map<String, dynamic> readJson(String path) {
    final jsonString = File('$basePath/$path').readAsStringSync();
    final data = json.decode(jsonString);
    return data as Map<String, dynamic>;
  }
}
