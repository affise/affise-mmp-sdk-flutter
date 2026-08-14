import Flutter
import AffiseInternal

class ResultWrapper : InternalResult {
    
    private var methodResult: FlutterResult
    
    public init(_ result: @escaping FlutterResult) {
        self.methodResult = result
    }

    func success(_ result: Any?) {
        methodResult(result)
    }
    
    public func error(_ error: String) {
        methodResult(FlutterError.init(
            code: error,
            message: error,
            details: nil
        ))
    }
        
    public func notImplemented() {
        methodResult(FlutterMethodNotImplemented)
    }
}
