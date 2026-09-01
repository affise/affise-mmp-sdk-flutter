import 'affise_product.dart';

class AffiseProductsResult {
  final List<AffiseProduct> products;
  final List<String> invalidIds;

  AffiseProductsResult({
    required this.products,
    required this.invalidIds,
  });

  @override
  String toString() {
    return "AffiseProductsResult(products=[${products.map((e) => e.title).join(", ")}], invalidIds=[${invalidIds.join(", ")}])";
  }
}
