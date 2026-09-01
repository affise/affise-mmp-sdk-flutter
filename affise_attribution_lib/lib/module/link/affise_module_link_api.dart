import '../affise_has_module.dart';
import 'affise_link_callback.dart';

abstract class AffiseModuleLinkApi extends AffiseHasModule {
  void resolve(String url, AffiseLinkCallback callback);
}
