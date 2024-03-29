import 'package:simple_github_search_app/infrastructure/key_value_storage/key_value_storage.dart';

/// メモリ上のキーバリューストレージ
class MemoryKeyValue extends KeyValueStorage {
  MemoryKeyValue();
  final data = <String, dynamic>{};

  @override
  Future<String?> getString(String key) async {
    final item = data[key];
    if (item is String) {
      return item;
    }
    return null;
  }

  @override
  Future<void> setString(String key, String value) async {
    data[key] = value;
  }

  @override
  Future<void> remove(String key) async {
    data.remove(key);
  }
}
