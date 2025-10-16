enum AffiseAdSource {
  ADMOB,
  ADMOST,
  APPLOVIN_MAX,
  HELIUM_CHARTBOOST,
  IRONSOURCE,
}

extension AffiseAdSourceValue on AffiseAdSource {
  String get type {
    switch (this) {
      case AffiseAdSource.ADMOB:
        return "admob";
      case AffiseAdSource.ADMOST:
        return "admost";
      case AffiseAdSource.APPLOVIN_MAX:
        return "applovin_max";
      case AffiseAdSource.HELIUM_CHARTBOOST:
        return "helium_chartboost";
      case AffiseAdSource.IRONSOURCE:
        return "ironsource";
      }
  }
}