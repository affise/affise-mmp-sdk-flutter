enum ValidationStatus {
  VALID,
  INVALID_APP_ID,
  INVALID_SECRET_KEY,
  PACKAGE_NAME_NOT_FOUND,
  NOT_WORKING_ON_PRODUCTION,
  NETWORK_ERROR,
  UNKNOWN_ERROR,
}

extension ValidationStatusExt on ValidationStatus {
  String get status {
    switch (this) {
      case ValidationStatus.VALID:
        return "valid";
      case ValidationStatus.INVALID_APP_ID:
        return "invalid_app_id";
      case ValidationStatus.INVALID_SECRET_KEY:
        return "invalid_secret_key";
      case ValidationStatus.PACKAGE_NAME_NOT_FOUND:
        return "package_name_not_found";
      case ValidationStatus.NOT_WORKING_ON_PRODUCTION:
        return "not_working_on_production";
      case ValidationStatus.NETWORK_ERROR:
        return "network_error";
      case ValidationStatus.UNKNOWN_ERROR:
        return "unknown_error";
    }
  }
}

ValidationStatus? validationStatusFrom(String? name) {
  if (name == null) return null;
  return ValidationStatus.values.firstWhere((e) => e.status == name);
}