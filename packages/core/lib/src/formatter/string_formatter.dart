mixin StringFormatter {
  static String formatHashStart({
    required String hash,
    required String leading,
    required int length,
  }) =>
      "$leading${hash.length >= 16 ? hash.substring(0, length) : hash}";

  static String formatHashEnd({
    required String hash,
    required int length,
  }) =>
      hash.length >= 16 ? hash.substring(hash.length - length) : hash;

  static toCountableText({
    required double amount,
    String? leading = "",
    String? trailing = "",
  }) {
    final leadingText = leading?.isEmpty == true ? '' : '$leading ';
    final trailingText = trailing?.isEmpty == true ? '' : ' $trailing';
    return "$leadingText$amount$trailingText";
  }

  static toUpDownRateText({
    required double rate,
    String? symbol = "",
  }) =>
      "${rate < 0 ? '-' : '+'}$rate$symbol";
}
