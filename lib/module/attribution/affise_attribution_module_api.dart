import '../../affise.dart';

abstract class AffiseAttributionModulesApi {
  AffiseModuleAdvertisingApi get advertising;
  AffiseModuleAppsFlyerApi get appsFlyer;
  AffiseModuleLinkApi get link;
  AffiseModuleSubscriptionApi get subscription;
  AffiseModuleTikTokApi get tikTok;

  void getStatus(AffiseModules module, OnKeyValueCallback callback);

  Future<List<AffiseModules>> getModulesInstalled();
}
