import 'dart:io';

import 'package:affise_attribution_lib/affise.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ApiFactory {
  void Function(String data)? output;
  void Function({required String title, required String text})? alert;

  BuildContext? context;

  Map<String, Function> create() {
    return {
      "Debug: Validate credentials": () {
        // Debug: Validate credentials https://github.com/affise/affise-mmp-sdk-flutter#validate-credentials
        Affise.debug.validate((status) {
          output?.call("Validate: $status");
        });
      },
      "Debug: Version": () {
        // Debug: Version https://github.com/affise/affise-mmp-sdk-flutter#version
        output?.call("Version: ${Affise.debug.version()}");
      },
      "Debug: Version Native": () {
        // Debug: Version https://github.com/affise/affise-mmp-sdk-flutter#version-native
        Affise.debug.versionNative().then((version) {
          output?.call("Version ${Platform.operatingSystem} Native: $version");
        });
      },
      "Deeplink": () {
        // Deeplinks https://github.com/affise/affise-mmp-sdk-flutter#deeplinks
        Affise.registerDeeplinkCallback((value) {
          output?.call("Deeplink: $value");
          alert?.call(
            title: "Deeplink",
            text: "${value.deeplink}\n\n"
                "scheme: \"${value.scheme}\"\n"
                "host: \"${value.host}\"\n"
                "path: \"${value.path}\"\n\n"
                "parameters: ${value.parameters}",
          );
        });
      },
      "Status": () {
        // Get module state https://github.com/affise/affise-mmp-sdk-flutter#get-module-state
        Affise.module.getStatus(AffiseModules.STATUS, (value) {
          output?.call("Status: ${value.toString()}");
        });
      },
      "Get Modules Installed": () {
        // Get module state https://github.com/affise/affise-mmp-sdk-flutter#modules
        Affise.module.getModulesInstalled().then((value) {
          output?.call("Modules: $value");
        });
      },
      "Get Referrer Url": () {
        // Get referrer https://github.com/affise/affise-mmp-sdk-flutter#get-referrer
        Affise.getReferrerUrl((value) {
          output?.call("Referrer: $value");
        });
      },
      "Get Referrer Url Value": () {
        // Get referrer value https://github.com/affise/affise-mmp-sdk-flutter#get-referrer-value
        Affise.getReferrerUrlValue(ReferrerKey.CLICK_ID, (value) {
          output?.call("ReferrerValue: $value");
        });
      },
      "Get Deferred Deeplink On Server": () {
        // Get deferred deeplink https://github.com/affise/affise-mmp-sdk-flutter#get-deferred-deeplink
        Affise.getDeferredDeeplink((value) {
          output?.call("DeferredDeeplink: $value");
        });
      },
      "Get Deferred Deeplink Value On Server": () {
        // Get deferred deeplink value https://github.com/affise/affise-mmp-sdk-flutter#get-deferred-deeplink-value
        Affise.getDeferredDeeplinkValue(ReferrerKey.CLICK_ID, (value) {
          output?.call("DeferredDeeplinkValue: $value");
        });
      },
      "iOS: SKAd register": () {
        // StoreKit Ad Network https://github.com/affise/affise-mmp-sdk-flutter#storekit-ad-network
        Affise.ios.registerAppForAdNetworkAttribution((error) {
          output?.call("SKAd register: $error");
        });
      },
      "iOS: SKAd update": () {
        // StoreKit Ad Network https://github.com/affise/affise-mmp-sdk-flutter#storekit-ad-network
        Affise.ios.updatePostbackConversionValue(
            1, SKAdNetwork.CoarseConversionValue.medium, (error) {
          output?.call("SKAd update: $error");
        });
      },
      "Get Providers": () {
        // Get providers https://github.com/affise/affise-mmp-sdk-flutter#get-providers
        Affise.getProviders().then((data) {
          var key = ProviderType.AFFISE_APP_TOKEN;
          output?.call("Get Providers: $key = ${data[key]}");
        });
      },
      "Get Random User Id": () {
        // Get Random Device Id https://github.com/affise/affise-mmp-sdk-flutter#get-random-device-id
        Affise.getRandomUserId().then((value) {
          output?.call("RandomUserId: $value");
        });
      },
      "Get Random Device Id": () {
        // Get Random User Id https://github.com/affise/affise-mmp-sdk-flutter#get-random-user-id
        Affise.getRandomUserId().then((value) {
          output?.call("RandomUserId: $value");
        });
      },
    };
  }
}
