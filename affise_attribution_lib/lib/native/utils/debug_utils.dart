import '../../debug/validate/validation_status.dart';
import '../../network/http_method.dart';
import '../../network/http_request.dart';
import '../../network/http_response.dart';
import '../../utils/try_cast.dart';

class DebugUtils {
  static ValidationStatus toValidationStatus({dynamic from}) {
    return validationStatusFrom(from?.toString()) ??
        ValidationStatus.UNKNOWN_ERROR;
  }

  static HttpRequest toRequest({dynamic from}) {
    var json = tryCast<Map<Object?, Object?>>(from);
    var headersRaw = tryCast<Map<Object?, Object?>>(json?["headers"]);
    Map<String, String> reqHeaders = {};

    headersRaw?.forEach((key, value) {
      reqHeaders[key.toString()] = value.toString();
    });

    Uri reqUrl = Uri.parse(json?["url"]?.toString() ?? "");
    HttpMethod? reqMethod = httpMethodFrom(json?["method"]?.toString());
    String? reqBody = json?["body"]?.toString();

    return HttpRequest(
      reqUrl,
      reqMethod ?? HttpMethod.POST,
      reqHeaders,
      reqBody,
    );
  }

  static HttpResponse toResponse({dynamic from}) {
    var json = tryCast<Map<Object?, Object?>>(from);
    int resCode = int.tryParse(json?["code"]?.toString() ?? "") ?? 0;
    String resMessage = json?["message"]?.toString() ?? "";
    String? resBody = json?["body"]?.toString();

    return HttpResponse(
      resCode,
      resMessage,
      resBody,
    );
  }

  static HttpRequest toRequestWithKey({dynamic from, required String key}) {
    var json = tryCast<Map<Object?, Object?>>(from);
    var request = tryCast<Map<Object?, Object?>>(json?[key]);
    return toRequest(from: request);
  }

  static HttpResponse toResponseWithKey({dynamic from, required String key}) {
    var json = tryCast<Map<Object?, Object?>>(from);
    var response = tryCast<Map<Object?, Object?>>(json?[key]);
    return toResponse(from: response);
  }
}
