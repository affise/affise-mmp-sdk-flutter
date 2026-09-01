import 'time_unit_type.dart';

class AffiseProductSubscriptionDetail {
  final String? offerToken;
  final String? offerId;
  final TimeUnitType? timeUnit;
  final int? numberOfUnits;

  AffiseProductSubscriptionDetail({
    this.offerToken,
    this.offerId,
    this.timeUnit,
    this.numberOfUnits,
  });

  @override
  String toString() {
    return "AffiseProductSubscriptionDetail(offerToken=$offerToken, offerId=$offerId, timeUnit=$timeUnit, numberOfUnits=$numberOfUnits)";
  }
}
