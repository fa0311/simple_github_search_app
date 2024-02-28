extension EnumByName<T extends Enum> on Iterable<T> {
  T bySafeName(String? name) {
    for (final value in this) {
      if (value.name == name) {
        return value;
      }
    }
    throw Exception('Not found');
  }

  T? byNameOrNull(String? name) {
    for (final value in this) {
      if (value.name == name) {
        return value;
      }
    }
    return null;
  }
}
