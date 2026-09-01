import '../../export.dart';
import '../../utils/try_cast.dart';
import 'data_name.dart';

typedef _Transform<T> = T? Function(dynamic from);

class DataMapper {
  static String toNonNullString({dynamic from}) {
    return from?.toString() ?? "";
  }

  static List<AffiseKeyValue> toAffiseKeyValueList({dynamic from}) {
    var list = tryCast<List<Object?>>(from) ?? [];

    List<AffiseKeyValue> result = [];
    for (Object? o in list) {
      var map = tryCast<Map<Object?, Object?>>(o);
      String? key = map?["key"]?.toString();
      String? value = map?["value"]?.toString();
      if (key == null || value == null) continue;
      result.add(AffiseKeyValue(
        key: key,
        value: value,
      ));
    }
    return result;
  }

  static DeeplinkValue toDeeplinkValue({dynamic from}) {
    var json = tryCast<Map<Object?, Object?>>(from);
    var parametersRaw =
        tryCast<Map<Object?, Object?>>(json?[DataName.PARAMETERS]);

    Map<String, List<String>> parameters = {};

    parametersRaw?.forEach((key, value) {
      var list = tryCast<List<Object?>>(value) ?? [];
      parameters[key.toString()] =
          list.map((e) => e?.toString() ?? "").toList();
    });

    return DeeplinkValue(
      deeplink: json?[DataName.DEEPLINK]?.toString() ?? "",
      scheme: json?[DataName.SCHEME]?.toString(),
      host: json?[DataName.HOST]?.toString(),
      path: json?[DataName.PATH]?.toString(),
      parameters: parameters,
    );
  }

  static Map<String, dynamic> fromProduct(AffiseProduct product) {
    return {
      DataName.PRODUCT_ID: product.productId,
      DataName.TITLE: product.title,
      DataName.DESCRIPTION: product.description,
      DataName.PRODUCT_TYPE: product.productType.value,
      DataName.PRICE: fromPrice(product.price),
      DataName.SUBSCRIPTION: fromSubscription(product.subscription),
    };
  }

  static Map<String, dynamic>? fromPrice(AffiseProductPrice? price) {
    if (price == null) return null;

    return {
      DataName.VALUE: price.value,
      DataName.CURRENCY_CODE: price.currencyCode,
      DataName.FORMATTED_PRICE: price.formattedPrice,
    };
  }

  static Map<String, dynamic>? fromSubscription(
      AffiseProductSubscriptionDetail? subscription) {
    if (subscription == null) return null;

    return {
      DataName.OFFER_TOKEN: subscription.offerToken,
      DataName.OFFER_ID: subscription.offerId,
      DataName.TIME_UNIT: subscription.timeUnit?.value,
      DataName.NUMBER_OF_UNITS: subscription.numberOfUnits,
    };
  }

  static AffiseResult<AffiseProductsResult> toResultAffiseProductsResult({
    required dynamic from,
  }) {
    return _toResult(from: from, transformer: toAffiseProductsResult);
  }

  static AffiseResult<AffisePurchasedInfo> toResultAffisePurchasedInfo({
    required dynamic from,
  }) {
    return _toResult(from: from, transformer: toAffisePurchasedInfo);
  }

  static AffiseResult<T> _toResult<T>({
    required dynamic from,
    required _Transform<T> transformer,
  }) {
    var json = tryCast<Map<Object?, Object?>>(from);

    var error = json?[DataName.ERROR];
    var success = json?[DataName.SUCCESS];

    if (error != null) {
      return AffiseResult.failure(error.toString());
    }

    var data = transformer(success);
    if (data == null) {
      return AffiseResult.failure("$T serialization error. Data: $from");
    }

    return AffiseResult.success(data);
  }

  static AffiseProductsResult? toAffiseProductsResult(dynamic from) {
    var json = tryCast<Map<Object?, Object?>>(from);
    if (json == null) return null;

    var invalidIds = tryCast<List<Object?>>(json[DataName.INVALID_IDS])
            ?.map((e) => e?.toString())
            .whereType<String>()
            .toList() ??
        [];

    return AffiseProductsResult(
      products: toProductsList(json[DataName.PRODUCTS]),
      invalidIds: invalidIds,
    );
  }

  static AffisePurchasedInfo? toAffisePurchasedInfo(dynamic from) {
    var json = tryCast<Map<Object?, Object?>>(from);
    if (json == null) return null;

    return AffisePurchasedInfo(
      product: toProduct(json[DataName.PRODUCT]),
      orderId: json[DataName.ORDER_ID] as String?,
      originalOrderId: json[DataName.ORIGINAL_ORDER_ID] as String?,
      purchase: json[DataName.PURCHASE] as String?,
    );
  }

  static List<AffiseProduct> toProductsList(dynamic from) {
    List<AffiseProduct> result = [];
    var json = tryCast<List<Object?>>(from);
    json?.forEach((element) {
      var product = toProduct(element);
      if (product != null) {
        result.add(product);
      }
    });
    return result;
  }

  static AffiseProduct? toProduct(dynamic from) {
    var json = tryCast<Map<Object?, Object?>>(from);
    if (json == null) return null;

    var productType =
        AffiseProductType.from(json[DataName.PRODUCT_TYPE] as String?);

    var productId = (json[DataName.PRODUCT_ID] as String?);
    var title = (json[DataName.TITLE] as String?) ?? "";
    var description = (json[DataName.DESCRIPTION] as String?) ?? "";

    if (productId == null) {
      return null;
    }

    return AffiseProduct(
      productId: productId,
      title: title,
      description: description,
      productType: productType ?? AffiseProductType.CONSUMABLE,
      price: toPrice(json[DataName.PRICE]),
      subscription: toSubscriptionDetail(json[DataName.SUBSCRIPTION]),
      // productDetails: json[DataName.PRODUCT_DETAILS] as String?,
    );
  }

  static AffiseProductPrice? toPrice(dynamic from) {
    var json = tryCast<Map<Object?, Object?>>(from);
    if (json == null) return null;

    return AffiseProductPrice(
      value: (json[DataName.VALUE] as double?) ?? -1.1,
      currencyCode: (json[DataName.CURRENCY_CODE] as String?) ?? "",
      formattedPrice: (json[DataName.FORMATTED_PRICE] as String?) ?? "",
    );
  }

  static AffiseProductSubscriptionDetail? toSubscriptionDetail(dynamic from) {
    var json = tryCast<Map<Object?, Object?>>(from);
    if (json == null) return null;

    return AffiseProductSubscriptionDetail(
      offerToken: json[DataName.OFFER_TOKEN] as String?,
      offerId: json[DataName.OFFER_ID] as String?,
      timeUnit: TimeUnitType.from(json[DataName.TIME_UNIT] as String?),
      numberOfUnits: json[DataName.NUMBER_OF_UNITS] as int?,
    );
  }
}
