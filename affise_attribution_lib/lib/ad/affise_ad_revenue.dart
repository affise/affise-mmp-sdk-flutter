import '../events/parameters/predefined_float.dart';
import '../events/parameters/predefined_string.dart';
import '../events/predefined/ad_revenue_event.dart';
import 'affise_ad_source.dart';

class AffiseAdRevenue {
  final AdRevenueEvent _event = AdRevenueEvent();

  AffiseAdRevenue(AffiseAdSource source) {
    _event.addPredefinedString(PredefinedString.SOURCE, source.type);
  }

  AffiseAdRevenue setRevenue(double revenue, String currency) {
    _event.addPredefinedFloat(PredefinedFloat.REVENUE, revenue);
    _event.addPredefinedString(PredefinedString.CURRENCY, currency);
    return this;
  }

  AffiseAdRevenue setNetwork(String? network) {
    if (network == null) return this;
    _event.addPredefinedString(PredefinedString.NETWORK, network);
    return this;
  }

  AffiseAdRevenue setUnit(String? unit) {
    if (unit == null) return this;
    _event.addPredefinedString(PredefinedString.UNIT, unit);
    return this;
  }

  AffiseAdRevenue setPlacement(String? placement) {
    if (placement == null) return this;
    _event.addPredefinedString(PredefinedString.PLACEMENT, placement);
    return this;
  }

  void send() {
    _event.send();
  }
}
