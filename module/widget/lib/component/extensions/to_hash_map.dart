import 'dart:collection';

extension ToHashMapExtension<T> on Iterable<T> {
  /// Converts the iterable to a [HashMap].
  ///
  /// Iterates over the entire iterable, generating a [MapEntry] from each
  /// element with the [entrySelector] function then saving each generated
  /// entry in a [HashMap] under the generated key.
  ///
  /// If a duplicate key is produced, the value generated by a prior element is
  /// overwritten. As such, the length of the resulting [HashMap] is not guaranteed
  /// to be the same length as the iterable.
  ///
  /// Example:
  ///
  ///     void main() {
  ///       var list = [97, 98, 99];
  ///       var result = list.toHashMap((x) => MapEntry(x, String.fromCodeUnit(x)));
  ///
  ///       // Result: { 97: 'a', 98: 'b', 99: 'c' }
  ///     }
  Map<TKey, TValue> toHashMap<TKey, TValue>(
    MapEntry<TKey, TValue> Function(T element) entrySelector, {
    bool modifiable = true,
  }) {
    final map = HashMap.fromEntries([for (var o in this) entrySelector(o)]);
    if (modifiable) return map;
    return UnmodifiableMapView(map);
  }
}