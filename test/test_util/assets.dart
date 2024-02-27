import 'dart:convert';
import 'dart:io';

class TestUtilAssets {
  TestUtilAssets._();
  static const basePath = 'test/assets';

  static Future<Map<String, dynamic>> readJson(String path) async {
    final jsonString = await File('$basePath/$path').readAsString();
    final data = json.decode(jsonString);
    return data as Map<String, dynamic>;
  }
}
