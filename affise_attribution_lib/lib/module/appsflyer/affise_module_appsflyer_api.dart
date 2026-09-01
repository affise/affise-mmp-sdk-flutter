import '../affise_has_module.dart';

abstract class AffiseModuleAppsFlyerApi extends AffiseHasModule {
  void logEvent(String eventName, Map<String, dynamic> eventValues);
}