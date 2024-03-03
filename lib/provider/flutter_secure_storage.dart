import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:simple_github_search_app/infrastructure/key_value_storage/flutter_secure_storage.dart';
import 'package:simple_github_search_app/infrastructure/key_value_storage/key_value_storage.dart';
import 'package:simple_github_search_app/infrastructure/key_value_storage/memory.dart';

part 'flutter_secure_storage.g.dart';

@Riverpod(keepAlive: true)
Future<KeyValueStorage> getSecureStorage(GetSecureStorageRef ref) async {
  if (kIsWeb) {
    // webではSecureStorageは使えないのでMemoryKeyValueを返す
    return MemoryKeyValue();
  } else {
    return SecureKeyValue(const FlutterSecureStorage());
  }
}

@Riverpod(keepAlive: true)
class GithubTokenSetting extends _$GithubTokenSetting {
  static const key = 'githubToken';

  @override
  FutureOr<String?> build() async {
    final client = await ref.watch(getSecureStorageProvider.future);
    final token = await client.getString(key);
    return token;
  }

  Future<void> set(String value) async {
    state = AsyncValue.data(value);
    final client = await ref.watch(getSecureStorageProvider.future);
    await client.setString(key, value);
  }

  Future<void> remove() async {
    state = const AsyncValue.data(null);
    final client = await ref.watch(getSecureStorageProvider.future);
    await client.remove(key);
  }
}
