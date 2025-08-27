import '../affise_has_module.dart';

abstract class AffiseModuleTikTokApi extends AffiseHasModule {
  void sendEvent(String eventName, Map<String, dynamic> properties, String eventId);
}