class HaloDateTimeException implements Exception {
  final String _cause;
  HaloDateTimeException(this._cause);
  String get cause => 'JiffyException: $_cause';
}
