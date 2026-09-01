import 'affise_product_price.dart';
import 'affise_product_subscription_detail.dart';
import 'affise_product_type.dart';

class AffiseProduct {
  final String productId;
  final String title;
  final String description;

  final AffiseProductType productType;

  final AffiseProductPrice? price;

  final AffiseProductSubscriptionDetail? subscription;

  // final String? productDetails;

  AffiseProduct({
    required this.productId,
    required this.title,
    required this.description,
    required this.productType,
    this.subscription,
    this.price,
    // this.productDetails,
  });

  @override
  String toString() {
    return "AffiseProduct(productId=$productId, title=$title, description=$description, productType=$productType, price=$price, subscription=$subscription)";
  }
}
