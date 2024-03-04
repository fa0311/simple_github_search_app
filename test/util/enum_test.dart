import 'package:flutter_test/flutter_test.dart';
import 'package:simple_github_search_app/util/enum.dart';

enum TestEnum {
  a,
  b,
  c,
}

void main() {
  test('enum の拡張', () async {
    expect(TestEnum.values.bySafeName('a'), TestEnum.a);
    expect(TestEnum.values.bySafeName('b'), TestEnum.b);
    expect(TestEnum.values.bySafeName('c'), TestEnum.c);
    expect(() => TestEnum.values.bySafeName('d'), throwsException);

    expect(TestEnum.values.byNameOrNull('a'), TestEnum.a);
    expect(TestEnum.values.byNameOrNull('b'), TestEnum.b);
    expect(TestEnum.values.byNameOrNull('c'), TestEnum.c);
    expect(TestEnum.values.byNameOrNull('d'), isNull);
  });
}
