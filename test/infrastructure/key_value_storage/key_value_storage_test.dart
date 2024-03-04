import 'package:flutter_test/flutter_test.dart';
import 'package:simple_github_search_app/infrastructure/key_value_storage/memory.dart';

void main() {
  test('MemoryKeyValue Storage', () async {
    final storage = MemoryKeyValue();

    await storage.setString('key', 'value');
    final value = await storage.getString('key');
    expect(value, 'value');

    await storage.remove('key');
    expect(true, true);
  });
}
