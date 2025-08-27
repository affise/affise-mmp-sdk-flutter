import '../../affise.dart';

abstract class AffiseAttributionModulesApi {
  AffiseModuleAppsFlyerApi get appsFlyer;
  AffiseModuleLinkApi get link;
  AffiseModuleSubscriptionApi get subscription;
  AffiseModuleTikTokApi get tikTok;

  getStatus(AffiseModules module, OnKeyValueCallback callback);

  Future<bool> moduleStart(AffiseModules module);

  Future<List<AffiseModules>> getModulesInstalled();

  void linkResolve(String url, AffiseLinkCallback callback);

  void fetchProducts(List<String> ids, AffiseResultCallback<AffiseProductsResult> callback);

  void purchase(AffiseProduct product, AffiseProductType type, AffiseResultCallback<AffisePurchasedInfo> callback);
}


