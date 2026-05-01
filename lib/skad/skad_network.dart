import 'coarse_value.dart';

class SKAdNetwork {
  static SKAdNetwork get coarseConversionValue { return SKAdNetwork._(); }

  SKAdNetwork._();

  CoarseValue get high { return CoarseValue("high"); }
  CoarseValue get low { return CoarseValue("low"); }
  CoarseValue get medium { return CoarseValue("medium"); }
  CoarseValue raw(String value) { return CoarseValue(value);  }
}

