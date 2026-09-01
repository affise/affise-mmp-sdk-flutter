class AffiseProductPrice {
  final double value;
  final String currencyCode;
  final String formattedPrice;

  AffiseProductPrice({
    required this.value,
    required this.currencyCode,
    required this.formattedPrice,
  });

  @override
  String toString() {
    return "AffiseProductPrice(value=$value, currencyCode=$currencyCode, formattedPrice=$formattedPrice)";
  }
}
