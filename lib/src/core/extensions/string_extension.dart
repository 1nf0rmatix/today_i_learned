extension StringExtension on String {
  /// Truncate a string if it's longer than [maxLength] and add an [ellipsis].
  String truncate(int maxLength, [String ellipsis = '…']) {
    // ignore: no-magic-number
    return length > maxLength ? '${substring(0, maxLength - ellipsis.length)}$ellipsis' : this;
  }
}
