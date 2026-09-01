import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../views/predefined/predefined_data.dart';

class AppSettings {

  static const defaultAffiseAppId = '129';
  static const defaultSecretKey = '93a40b54-6f12-443f-a250-ebf67c5ee4d2';
  static const defaultProduction = false;
  static const defaultOfflineMode = false;
  static const defaultBackgroundTracking = true;
  static const defaultTracking = true;
  static const defaultFbAppId = '1111111111111111';
  static const defaultDebugRequest = false;
  static const defaultDebugResponse = true;
  static const defaultUseCustomPredefined = false;
  static const defaultDomain = 'https://tracking.affattr.com';

  final String affiseAppId;
  final String secretKey;
  final String fbAppId;
  final bool production;
  final bool offlineMode;
  final bool backgroundTracking;
  final bool tracking;
  final bool debugRequest;
  final bool debugResponse;
  final String domain;
  final bool useCustomPredefined;
  final List<PredefinedData> predefinedData;

  const AppSettings({
    this.affiseAppId = defaultAffiseAppId,
    this.secretKey = defaultSecretKey,
    this.fbAppId = defaultFbAppId,
    this.production = defaultProduction,
    this.offlineMode = defaultOfflineMode,
    this.backgroundTracking = defaultBackgroundTracking,
    this.tracking = defaultTracking,
    this.debugRequest = defaultDebugRequest,
    this.debugResponse = defaultDebugResponse,
    this.domain = defaultDomain,
    this.useCustomPredefined = defaultUseCustomPredefined,
    this.predefinedData = const [],
  });

  static Future<AppSettings> load() async {
    final preferences = await SharedPreferences.getInstance();

    return AppSettings(
      affiseAppId:
          preferences.getString(_Keys.affiseAppId) ?? defaultAffiseAppId,
      secretKey: preferences.getString(_Keys.secretKey) ?? defaultSecretKey,
      fbAppId: preferences.getString(_Keys.fbAppId) ?? defaultFbAppId,
      production: preferences.getBool(_Keys.production) ?? defaultProduction,
      offlineMode: preferences.getBool(_Keys.offlineMode) ?? defaultOfflineMode,
      backgroundTracking: preferences.getBool(_Keys.backgroundTracking) ??
          defaultBackgroundTracking,
      tracking: preferences.getBool(_Keys.tracking) ?? defaultTracking,
      debugRequest:
          preferences.getBool(_Keys.debugRequest) ?? defaultDebugRequest,
      debugResponse:
          preferences.getBool(_Keys.debugResponse) ?? defaultDebugResponse,
      domain: preferences.getString(_Keys.domain) ?? defaultDomain,
      useCustomPredefined: preferences.getBool(_Keys.useCustomPredefined) ??
          defaultUseCustomPredefined,
      predefinedData: _loadPredefinedData(preferences),
    );
  }

  Future<void> save() async {
    final preferences = await SharedPreferences.getInstance();

    await preferences.setString(_Keys.affiseAppId, affiseAppId);
    await preferences.setString(_Keys.secretKey, secretKey);
    await preferences.setString(_Keys.fbAppId, fbAppId);
    await preferences.setBool(_Keys.production, production);
    await preferences.setBool(_Keys.offlineMode, offlineMode);
    await preferences.setBool(
      _Keys.backgroundTracking,
      backgroundTracking,
    );
    await preferences.setBool(_Keys.tracking, tracking);
    await preferences.setBool(_Keys.debugRequest, debugRequest);
    await preferences.setBool(_Keys.debugResponse, debugResponse);
    await preferences.setString(_Keys.domain, domain);
    await preferences.setBool(
      _Keys.useCustomPredefined,
      useCustomPredefined,
    );
    await preferences.setStringList(
      _Keys.predefinedData,
      predefinedData.map((item) => jsonEncode(item.toJson())).toList(),
    );
  }

  AppSettings copyWith({
    String? affiseAppId,
    String? secretKey,
    String? fbAppId,
    bool? production,
    bool? offlineMode,
    bool? backgroundTracking,
    bool? tracking,
    bool? debugRequest,
    bool? debugResponse,
    String? domain,
    bool? useCustomPredefined,
    List<PredefinedData>? predefinedData,
  }) {
    return AppSettings(
      affiseAppId: affiseAppId ?? this.affiseAppId,
      secretKey: secretKey ?? this.secretKey,
      fbAppId: fbAppId ?? this.fbAppId,
      production: production ?? this.production,
      offlineMode: offlineMode ?? this.offlineMode,
      backgroundTracking: backgroundTracking ?? this.backgroundTracking,
      tracking: tracking ?? this.tracking,
      debugRequest: debugRequest ?? this.debugRequest,
      debugResponse: debugResponse ?? this.debugResponse,
      domain: domain ?? this.domain,
      useCustomPredefined: useCustomPredefined ?? this.useCustomPredefined,
      predefinedData: predefinedData ?? this.predefinedData,
    );
  }

  static List<PredefinedData> _loadPredefinedData(
    SharedPreferences preferences,
  ) {
    final data = preferences.getStringList(_Keys.predefinedData) ?? const [];

    return data
        .map((item) {
          try {
            final json = jsonDecode(item) as Map<String, dynamic>;
            return PredefinedData.fromJson(json);
          } catch (e) {
            return null; // Return null on error
          }
        })
        .nonNulls
        .toList();
  }
}

abstract class _Keys {
  static const affiseAppId = 'affise_app_id';
  static const secretKey = 'secret_key';
  static const fbAppId = 'fb_app_id';
  static const production = 'production';
  static const offlineMode = 'offline_mode';
  static const backgroundTracking = 'background_tracking';
  static const tracking = 'tracking';
  static const debugRequest = 'debug_request';
  static const debugResponse = 'debug_response';
  static const domain = 'domain';
  static const useCustomPredefined = 'use_custom_predefined';
  static const predefinedData = 'predefined_data';
}
