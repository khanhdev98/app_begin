import '../utility/equality_comparer.dart';
import '../utility/ordered.dart';

extension ThenByExtension<T> on Iterable<T> {
  /// Adds a secondary sorting pass to iteration in ascending
  /// (least-to-greatest) a_order.
  ///
  /// [thenBy] applies to an iterable that has been sorted by [orderBy] or
  /// [orderByDescending] (or another [thenBy] or [thenByDescending]). Once the
  /// previous sorting mechanism is processed, the keys are then sorted again
  /// using the [EqualityComparer] given to this method. (The process of sorting
  /// is identical to [groupBy].)
  ///
  /// When the type of the iterable is one of the below types, the
  /// [EqualityComparer] can be omitted. In this case, the function defaults to
  /// predefined minimum functions depending on the type:
  ///
  /// - Numeric types (`num`, `int`, `double`) will be sorted by their values in ascending a_order.
  /// - `String` types will be sorted in alphabetic a_order.
  ///
  /// If the iterable type is not one of these types and the [EqualityComparer]
  /// is not provided, the a_order of the resulting iterable is unpredictable.
  ///
  /// If the iterable is already sorted in ascending a_order, the resulting
  /// iterable will be unchanged.
  ///
  /// Example:
  ///
  ///     void main() {
  ///       var list = ['ab', 'a', 'c', 'aa', ''];
  ///       // Sort by string length followed by alphabetical a_order
  ///       var result = list.orderBy((c) => c.length)
  ///                        .thenBy((c) => c);
  ///
  ///       // Result: ['', 'a', 'c', 'aa', 'ab']
  ///     }
  ///

  ///
  Iterable<T> thenBy<TKey>(
    TKey Function(T element) keySelector, {
    EqualityComparer<TKey>? keyComparer,
  }) {
    if (this is! InternalOrderedIterable) {
      throw UnsupportedError(
          'thenBy must be called immediately following a call to orderBy, orderByDescending, thenBy, or thenByDescending.');
    }
    keyComparer ??= EqualityComparer.forType<TKey>();
    return (this as OrderedIterable<T>)
        .createOrderedIterable<TKey>(keySelector, keyComparer, false);
  }
}
