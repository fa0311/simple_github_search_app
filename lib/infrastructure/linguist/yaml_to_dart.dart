/// yaml を Dart で扱いやすい形に変換する
/// https://github.com/dart-lang/yaml/issues/147#issuecomment-1836666943
dynamic yamlToDart(dynamic value) {
  if (value is Map) {
    final entries = <MapEntry<String, dynamic>>[];
    for (final key in value.keys) {
      entries.add(MapEntry(key as String, yamlToDart(value[key])));
    }
    return Map.fromEntries(entries);
  } else if (value is List) {
    return List<dynamic>.from(value.map(yamlToDart));
  } else {
    return value;
  }
}
