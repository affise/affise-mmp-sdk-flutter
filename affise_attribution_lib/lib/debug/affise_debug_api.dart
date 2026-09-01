import 'network/debug_on_network_callback.dart';
import 'validate/debug_on_validate_callback.dart';

abstract class AffiseDebugApi {
  const AffiseDebugApi();

  void validate(DebugOnValidateCallback callback);

  void network(DebugOnNetworkCallback callback);
  
  String version();
  
  Future<String> versionNative();
}