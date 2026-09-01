import 'affise_product.dart';

class AffisePurchasedInfo {
  final AffiseProduct? product;
  final String? orderId;
  final String? originalOrderId;
  final String? purchase;

  AffisePurchasedInfo({
    this.product,
    this.orderId,
    this.originalOrderId,
    this.purchase,
  });

  @override
  String toString() {
    return "AffisePurchasedInfo(product=${product?.title}, orderId=$orderId, originalOrderId=$originalOrderId), purchase=$purchase";
  }
}
