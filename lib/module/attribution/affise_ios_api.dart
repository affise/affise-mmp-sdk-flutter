import '../../export.dart';

abstract class AffiseIOSApi {
  const AffiseIOSApi();

  void registerAppForAdNetworkAttribution(ErrorCallback completionHandler);

  void updatePostbackConversionValue(int fineValue, CoarseValue coarseValue, ErrorCallback completionHandler);
}