import '../affise_has_module.dart';
import '../affise_result_callback.dart';
import 'affise_product.dart';
import 'affise_product_type.dart';
import 'affise_products_result.dart';
import 'affise_purchased_info.dart';

abstract class AffiseModuleSubscriptionApi extends AffiseHasModule {
  /// Module subscription fetchProducts
  void fetchProducts(
    List<String> ids,
    AffiseResultCallback<AffiseProductsResult> callback,
  );

  /// Module subscription purchase
  void purchase(
    AffiseProduct product,
    AffiseProductType type,
    AffiseResultCallback<AffisePurchasedInfo> callback,
  );
}
