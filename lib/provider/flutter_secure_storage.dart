import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'flutter_secure_storage.g.dart';

@Riverpod(keepAlive: true)
FlutterSecureStorage getSecureStorage(GetSecureStorageRef ref) => const FlutterSecureStorage();

@Riverpod(keepAlive: true)
class GithubTokenSetting extends _$GithubTokenSetting {
  static const key = 'githubToken';

  @override
  FutureOr<String?> build() async {
    final client = ref.watch(getSecureStorageProvider);
    final token = await client.read(key: key);
    return token;
  }

  Future<String?> read() async {
    final client = ref.watch(getSecureStorageProvider);
    final token = await client.read(key: key);

    if (token == null) {
      return null;
    } else {
      return '*' * token.length;
    }
  }

  Future<void> set(String value) async {
    state = AsyncValue.data(value);
    final client = ref.watch(getSecureStorageProvider);
    await client.write(key: key, value: value);
  }

  Future<void> delete() async {
    state = const AsyncValue.data(null);
    final client = ref.watch(getSecureStorageProvider);
    await client.delete(key: key);
  }
}
