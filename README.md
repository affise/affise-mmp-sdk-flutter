# Affise Attribution Flutter Library

[Change Log](CHANGELOG.md)

| Package                  |                         Version                          |
|--------------------------|:--------------------------------------------------------:|
| `affise_attribution_lib` | [`1.6.48`](https://github.com/affise/sdk-react/releases) |

- [Affise Attribution Flutter Library](#affise-attribution-flutter-library)
- [Description](#description)
  - [Quick start](#quick-start)
    - [SDK compatibility](#sdk-compatibility)
  - [Integration](#integration)
    - [Integrate as dependency](#integrate-as-dependency)
    - [Initialize](#initialize)
      - [Initialization callbacks](#initialization-callbacks)
      - [Before application is published](#before-application-is-published)
      - [Domain](#domain)
    - [Requirements](#requirements)
      - [Android](#android-1)
      - [iOS](#ios-1)
    - [Modules](#modules)
      - [Android](#android)
      - [iOS](#ios)
      - [Installed active modules](#installed-active-modules)
      - [Manual exclude modules](#manual-exclude-modules)
      - [Module AdService](#module-adservice)
      - [Module Advertising](#module-advertising)
      - [Module AppsFlyer](#module-appsflyer)
      - [Module Huawei](#module-huawei)
      - [Module Link](#module-link)
      - [Module Meta](#module-meta)
      - [Module Persistent](#module-persistent)
      - [Module Status](#module-status)
      - [Module Subscription](#module-subscription)
        - [AffiseProductType](#affiseproducttype)
      - [Module TikTok](#module-tiktok)
    - [Persistent data](#persistent-data)
    - [Reinstall tracking](#reinstall-tracking)
- [Features](#features)
  - [ProviderType identifiers collection](#providertype-identifiers-collection)
    - [Attribution](#attribution)
    - [Advertising](#advertising)
    - [AndroidId](#androidid)
    - [Huawei](#huawei)
    - [Meta](#meta)
    - [Network](#network)
    - [Phone](#phone)
  - [Event send control](#event-send-control)
  - [Events tracking](#events-tracking)
  - [Custom events tracking](#custom-events-tracking)
  - [Predefined event parameters](#predefined-event-parameters)
    - [PredefinedString](#predefinedstring)
    - [PredefinedLong](#predefinedlong)
    - [PredefinedFloat](#predefinedfloat)
    - [PredefinedObject](#predefinedobject)
    - [PredefinedListObject](#predefinedlistobject)
    - [PredefinedListString](#predefinedliststring)
  - [Events buffering](#events-buffering)
  - [Advertising Identifier (google) tracking](#advertising-identifier-google-tracking)
  - [Open Advertising Identifier (huawei) tracking](#open-advertising-identifier-huawei-tracking)
  - [Install referrer tracking](#install-referrer-tracking)
  - [Push token tracking](#push-token-tracking)
    - [Native](#native)
      - [iOS APNs](#ios-apns)
    - [Firebase Flutter Plugin](#firebase-flutter-plugin)
      - [iOS APNs](#ios-apns-1)
  - [Uninstall tracking](#uninstall-tracking)
  - [APK preinstall tracking](#apk-preinstall-tracking)
  - [Links](#links)
    - [Deeplinks](#deeplinks)
      - [Android](#android-2)
      - [iOS](#ios-2)
    - [AppLinks](#applinks)
      - [Android](#android-3)
      - [iOS](#ios-3)
    - [Get deferred deeplink](#get-deferred-deeplink)
    - [Get deferred deeplink value](#get-deferred-deeplink-value)
  - [Offline mode](#offline-mode)
  - [Disable tracking](#disable-tracking)
  - [Disable background tracking](#disable-background-tracking)
  - [Get random user Id](#get-random-user-id)
  - [Get Affice device Id](#get-Affice-device-id)
  - [Get providers](#get-providers)
  - [Is first run](#is-first-run)
  - [Get referrer](#get-referrer)
  - [Get referrer value](#get-referrer-value)
  - [Referrer keys](#referrer-keys)
  - [Get module status](#get-module-status)
  - [Platform specific](#platform-specific)
    - [GDPR right to be forgotten](#gdpr-right-to-be-forgotten)
    - [StoreKit Ad Network](#storekit-ad-network)
- [SDK to SDK integrations](#sdk-to-sdk-integrations)
- [Debug](#debug)
  - [Validate credentials](#validate-credentials)
  - [Version](#version)
  - [Version native](#version-native)
- [Troubleshoots](#troubleshoots)
  - [iOS](#ios-4)

# Description

Affise SDK is a software you can use to collect app usage statistics, device identifiers, deeplink usage, track install
referrer.

## Quick start

### SDK compatibility

- `Flutter` `3.3.0+`
- `Android` `24+`
- `iOS`     `12+`
- `Xcode`   `14.2+`
- `Java`    `17+`

Demo App:

- `Flutter` `3.35.6+`

## Integration

### Integrate as dependency

Add [git](https://github.com/affise/affise-mmp-sdk-flutter) dependency to `pubspec.yaml` in your flutter application

```yaml
dependencies:
  flutter:
    sdk: flutter

  affise_attribution_lib:
    git:
      url: https://github.com/affise/affise-mmp-sdk-flutter
```

### Initialize

After dependency is added, sync project with `flutter pub get` and initialize.

> Demo app [`main.dart`](example/lib/main.dart)

```dart
import 'package:flutter/foundation.dart';
import 'package:affise_attribution_lib/affise.dart';

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();

    Affise
      .settings(
        affiseAppId: "Your appId", //Change to your app id
        secretKey: "Your SDK secretKey", //Change to your SDK secretKey
      )
      .start(); // Start Affise SDK
  }
}
```

#### Initialization callbacks

Check Affise library initialization

```dart
Affise
  .settings(
    affiseAppId: "Your appId",
    secretKey: "Your SDK secretKey",
  )
  .setOnInitSuccess(() { 
    // Called if library initialization succeeded
    print("Affise: init success");
  })
  .setOnInitError((error) {
    // Called if library initialization failed
    print("Affise: init error  $error");
  })
  .start(); // Start Affise SDK
```

#### Before application is published

> [!CAUTION]
>
> 🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥
>
> Please make sure your credentials are valid
>
> Visit section [validation credentials](#validate-credentials)
>
> 🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥

#### Domain

Set SDK server domain:

```dart
Affise
  .settings(
    affiseAppId: "Your appId", 
    secretKey: "Your SDK secretKey",
  )
  .setProduction(false)
  .setDomain("https://YoureCustomDomain/") // Set custom domain
  .start(); // Start Affise SDK
```

### Requirements

#### Android

Minimal Android SDK version is 21
Example [`example/android/app/build.gradle`](example/android/app/build.gradle)

```groovy
android {
  defaultConfig {
    minSdkVersion Math.max(flutter.minSdkVersion, 21)
  }
}
```

For a minimal working functionality your app needs to declare internet permission:

```xml
<manifest>
    <uses-permission android:name="android.permission.INTERNET"/>
</manifest>
```

OAID certificate in your project [`example/android/app/src/main/assets/oaid.cert.pem`](example/android/app/src/main/assets/oaid.cert.pem)

#### iOS

Affise SDK uses `AppTrackingTransparency` framework to get `advertisingIdentifier`
For working functionality your app needs to declare [`NSUserTrackingUsageDescription` permission](https://developer.apple.com/documentation/bundleresources/information_property_list/nsusertrackingusagedescription):

Open XCode project `info.plist` and add key `NSUserTrackingUsageDescription` with string value

Example [`info.plist`](example/ios/Runner/Info.plist):

```xml
<plist version="1.0">
<dict>
    ...
	<key>NSUserTrackingUsageDescription</key>
	<string>Youre permission text</string>
</dict>
```

### Modules

#### Android

Add modules to android project

| Module         | Version                                                                                                                                                                      |
|----------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `ADVERTISING`  | [![module-advertising](https://img.shields.io/maven-central/v/com.affise/module-advertising?label=latest)](https://mvnrepository.com/artifact/com.affise/module-advertising) |
| `ANDROIDID`    | [![module-androidid](https://img.shields.io/maven-central/v/com.affise/module-androidid?label=latest)](https://mvnrepository.com/artifact/com.affise/module-androidid)       |
| `APPSFLYER`    | [![module-appsflyer](https://img.shields.io/maven-central/v/com.affise/module-appsflyer?label=latest)](https://mvnrepository.com/artifact/com.affise/module-appsflyer)       |
| `LINK`         | [![module-link](https://img.shields.io/maven-central/v/com.affise/module-link?label=latest)](https://mvnrepository.com/artifact/com.affise/module-link)                      |
| `NETWORK`      | [![module-network](https://img.shields.io/maven-central/v/com.affise/module-network?label=latest)](https://mvnrepository.com/artifact/com.affise/module-network)             |
| `PHONE`        | [![module-phone](https://img.shields.io/maven-central/v/com.affise/module-phone?label=latest)](https://mvnrepository.com/artifact/com.affise/module-phone)                   |
| `STATUS`       | [![module-status](https://img.shields.io/maven-central/v/com.affise/module-status?label=latest)](https://mvnrepository.com/artifact/com.affise/module-status)                |
| `SUBSCRIPTION` | [![module-status](https://img.shields.io/maven-central/v/com.affise/module-subscription?label=latest)](https://mvnrepository.com/artifact/com.affise/module-subscription)    |
| `RUSTORE`      | [![module-rustore](https://img.shields.io/maven-central/v/com.affise/module-rustore?label=latest)](https://mvnrepository.com/artifact/com.affise/module-rustore)             |
| `HUAWEI`       | [![module-rustore](https://img.shields.io/maven-central/v/com.affise/module-huawei?label=latest)](https://mvnrepository.com/artifact/com.affise/module-huawei)               |
| `META`         | [![module-meta](https://img.shields.io/maven-central/v/com.affise/module-meta?label=latest)](https://mvnrepository.com/artifact/com.affise/module-meta)                      |
| `TIKTOK`         | [![module-tiktok](https://img.shields.io/maven-central/v/com.affise/module-tiktok?label=latest)](https://mvnrepository.com/artifact/com.affise/module-tiktok)                      |

Example [`example/android/app/build.gradle`](example/android/app/build.gradle)

```gradle
final affise_version = '1.6.72'

dependencies {
    // Affise modules
    implementation "com.affise:module-advertising:$affise_version"
    implementation "com.affise:module-androidid:$affise_version"
    implementation "com.affise:module-link:$affise_version"
    implementation "com.affise:module-network:$affise_version"
    implementation "com.affise:module-phone:$affise_version"
    implementation "com.affise:module-status:$affise_version"
//    implementation "com.affise:module-subscription:$affise_version"
//    implementation "com.affise:module-meta:$affise_version"
//    implementation "com.affise:module-rustore:$affise_version"
//    implementation "com.affise:module-huawei:$affise_version"
//    implementation "com.affise:module-appsflyer:$affise_version"
//    implementation "com.affise:module-tiktok:$affise_version"
}
```

#### iOS

Add modules to iOS project

| Module         |                                       Version                                        |
|----------------|:------------------------------------------------------------------------------------:|
| `ADSERVICE`    | [`1.6.58`](https://github.com/CocoaPods/Specs/tree/master/Specs/0/3/d/AffiseModule/) |
| `ADVERTISING`  | [`1.6.58`](https://github.com/CocoaPods/Specs/tree/master/Specs/0/3/d/AffiseModule/) |
| `APPSFLYER`    | [`1.6.58`](https://github.com/CocoaPods/Specs/tree/master/Specs/0/3/d/AffiseModule/) |
| `LINK`         | [`1.6.58`](https://github.com/CocoaPods/Specs/tree/master/Specs/0/3/d/AffiseModule/) |
| `PERSISTENT`   | [`1.6.58`](https://github.com/CocoaPods/Specs/tree/master/Specs/0/3/d/AffiseModule/) |
| `STATUS`       | [`1.6.58`](https://github.com/CocoaPods/Specs/tree/master/Specs/0/3/d/AffiseModule/) |
| `SUBSCRIPTION` | [`1.6.58`](https://github.com/CocoaPods/Specs/tree/master/Specs/0/3/d/AffiseModule/) |
| `TIKTOK`       | [`1.6.58`](https://github.com/CocoaPods/Specs/tree/master/Specs/0/3/d/AffiseModule/) |

Example [example/ios/Podfile](example/ios/Podfile)

```ruby
target 'Runner' do
  # ...
  
  affise_version = '1.6.58'
  # All Affise Modules
  pod 'AffiseModule', affise_version
  # Or only specific Modules
  pod 'AffiseModule/AdService', affise_version
  pod 'AffiseModule/Advertising', affise_version
  pod 'AffiseModule/Link', affise_version
  pod 'AffiseModule/Persistent', affise_version
  pod 'AffiseModule/Status', affise_version
#  pod 'AffiseModule/Subscription', affise_version
#  pod 'AffiseModule/AppsFlyer', affise_version
#  pod 'AffiseModule/TikTok', affise_version
end
```

#### Installed active modules

Get list of installed modules:

```dart
Affise.module.getModulesInstalled().then((modules) {
  print("Modules: $modules");
});
```

#### Manual exclude modules

To manually stop modules from starting use `Affise.settings.setDisableModules`:

```dart
Affise
  .settings(
    affiseAppId: "Your appId", //Change to your app id
    secretKey: "Your SDK secretKey", //Change to your SDK secretKey
  )
  .setDisableModules([  
    // Exclude modules from start
    AffiseModules.ADVERTISING,
    AffiseModules.SUBSCRIPTION,
  ])
  .start(); // Start Affise SDK
```

#### Module AdService

`iOS 14.3+`

Sends `attributionToken` from `AdServices` framework `AAAttribution.attributionToken()` to Affise server

#### Module Advertising

> [!CAUTION]
>
> 🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥
>
> `iOS` only
> 
> Advertising Module starting **Manually**
>
> 🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥

```dart
Affise.module.advertising.startModule();
```

> [!CAUTION]
>
> 🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥
>
> `iOS` only
>
> Module Advertising requires `NSUserTrackingUsageDescription` key in `info.plist`
>
> Application **will crash** if key not present
>
> 🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥

This module required to Use [`IDFA`](https://developer.apple.com/documentation/adsupport/asidentifiermanager/advertisingidentifier) (Identifier for advertisers)


Open `info.plist` and add key `NSUserTrackingUsageDescription` with string value. For more information [read requirements](#requirements)

#### Module AppsFlyer

Send AppsFlyer event data to Affise

[AppsFlyer In-App Events Docs](https://github.com/AppsFlyerSDK/appsflyer-flutter-plugin/blob/master/doc/InAppEvents.md)

```dart
//AppsFlyer event data
String eventName = "af_add_to_wishlist";
Map<String, dynamic> eventValues = {
  "af_price": 1234.56,
  "af_content_id": "1234567",
};
// Send AppsFlyer event
appsflyerSdk.logEvent(eventName, eventValues).then((onValue) {});
// Send AppsFlyer data to Affise
Affise.module.appsFlyer.logEvent(eventName, eventValues);
```

Is Module present:

```dart
Affise.module.appsFlyer.hasModule().then((hasModule) => {
  // Check is module present
});
```

#### Module Huawei

> [!CAUTION]
>
> 🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥
>
> Use `Android` [Huawei Module](#modules) to get OAID (Open Advertising Identifier)
>
> 🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥

```dart
Affise.getProviders().then((providers) {
  var oaid = providers[ProviderType.OAID];
});
```

#### Module Link

Return last url in chan of redirection

🟥Support MAX 10 redirections🟥

```dart
Affise.module.link.resolve("SITE_WITH_REDIRECTION", (redirectUrl) {  
    // handle redirect url
});
```

Is Module present:

```dart
Affise.module.link.hasModule().then((hasModule) => {
  // Check is module present
});
```

#### Module Meta

- [Meta Install Referrer Docs](https://developers.facebook.com/docs/app-ads/meta-install-referrer)
- [Google's Install Referral Docs](https://developer.android.com/google/play/installreferrer)

1. Add `queries` to your `AndroidManifest.xml`

```xml
<?xml version="1.0" encoding="utf-8"?>
<manifest xmlns:android="http://schemas.android.com/apk/res/android">
    <queries>
        <package android:name="com.facebook.katana" />
        <package android:name="com.instagram.android" />
        <package android:name="com.facebook.lite" />
    </queries>

    <application>
      ...
    </application>
</manifest>
```

2. Add your `Facebook App Id` as config value `AffiseConfig.FB_APP_ID` in `Affise.settings`

```dart
Affise
  .settings(
    affiseAppId: "Your appId", //Change to your app id
    secretKey: "Your SDK secretKey", //Change to your SDK secretKey
  )
  .setConfigValue(AffiseConfig.FB_APP_ID, "Your Facebook App Id")
  .start(); // Start Affise SDK
```

#### Module Persistent

`iOS Only`

> [!NOTE]
> 
> Module requires user phone to be authenticated by Apple ID
>
> It uses Apple `Security` framework to store protected information in user account

Persist `device id` value for [Get random device Id](#get-random-device-id) on application reinstall

#### Module Status

```dart
Affise.module.getStatus(AffiseModules.STATUS, (response) {
    // handle status response
});
```

#### Module Subscription

Get products by ids:

```dart
var ids = ["exampple.product.id_1", "exampple.product.id_2"];

Affise.module.subscription.fetchProducts(ids, (result) {
  if (result.isSuccess) {
    var value = result.asSuccess;
    List<AffiseProduct> products = value.products;
    List<String> invalidIds = value.invalidIds;
  } else {
    String error = result.asFailure;
  }
});
```

Purchase product:

```dart
// Specify product type for correct affise event
Affise.module.subscription.purchase(product, AffiseProductType.CONSUMABLE, (result) {
  if (result.isSuccess) {
    AffisePurchasedInfo purchasedInfo = result.asSuccess;
  } else {
    String error = result.asFailure;
  }
});
```

Is Module present:

```dart
Affise.module.subscription.hasModule().then((hasModule) => {
  // Check is module present
});
```

##### AffiseProductType

- `CONSUMABLE`
- `NON_CONSUMABLE`
- `RENEWABLE_SUBSCRIPTION`
- `NON_RENEWABLE_SUBSCRIPTION`


#### Module TikTok

> [!CAUTION]
>
> 🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥
>
> There are no official flutter TikTok package.
> 
> You have to add native dependency manually.
> 
> Add the Android TikTok SDK dependency [TikTok Docs](https://business-api.tiktok.com/gateway/docs/index?identify_key=c0138ffadd90a955c1f0670a56fe348d1d40680b3c89461e09f78ed26785164b&language=ENGLISH&doc_id=1739585434183746#item-link-1.%20Add%20the%20SDK%20as%20a%20build%20dependency)
>
> Add the iOS TikTok SDK dependency [TikTok Docs](https://business-api.tiktok.com/gateway/docs/index?identify_key=c0138ffadd90a955c1f0670a56fe348d1d40680b3c89461e09f78ed26785164b&language=ENGLISH&doc_id=1739585432134657#item-link-1.%20Add%20the%20SDK%20as%20a%20build%20dependency)
>
> 🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥

```dart
final String eventName = "AddToCart";
final String eventId = "eventId";

final Map<String, dynamic> properties = {
  "currency": "USD",
  "value": 4.99,
  "contents": [
    {
      "price": "4.99",
      "quantity": "1",
      "content_name": "Name of the product",
      "brand": "Brand of the product",
    },
  ],
};

// Send TikTok data to Affise
Affise.module.tikTok.sendEvent(eventName, properties, eventId);
```

Is Module present:

```dart
Affise.module.tikTok.hasModule().then((hasModule) => {
  // Check is module present
});
```

### Persistent data

Some methods require to return **same data** on application reinstall

It is achieved by using [Affise Persistent Module](#module-persistent) for `iOS` and [Affise AndroidId Module](#modules) for `Android`

Such SDK methods are:

- [Get Affice device Id](#get-affice-device-id)

To simulate multiple device install for testing purpose you can use one of two options:

1. Disable module dependencies:

`iOS`

```ruby
# Disable module dependency
# pod 'AffiseModule/Persistent', affise_version
```

`Android`

```groovy
// Disable module dependency
// implementation("com.affise:module-androidid:$affise_version")
```

2. Disable module programmatically:

```dart
Affise
  .settings(
    affiseAppId: "Your appId",
    secretKey: "Your SDK secretKey",
  )
  .setDisableModules([ 
    AffiseModules.PERSISTENT, // Disable module programmatically for iOS
    AffiseModules.ANDROIDID, // Disable module programmatically for Android
  ])
  .start(); 
```

### Reinstall tracking

> [!NOTE]
>
> Read more about [Persistent data](#persistent-data)

There are two working mode for [Affice device Id](#get-affice-device-id):

1. Return persistent value on each reinstall
2. Return new value on each reinstall

First mode require:

- Enabling [Affise Persistent Module](#module-persistent) for `iOS`

```ruby
# Enable module dependency
pod 'AffiseModule/Persistent', affise_version
```

- Enabling [Affise AndroidId Module](#modules) for `Android`

```groovy
// Enable module dependency
implementation("com.affise:module-androidid:$affise_version")
```

Even after deleting application [Affice device Id](#get-affice-device-id) will be preserved and will restore on next installation

Second mode is convenient for testing.
By removing dependency or [disabling module programmatically](#manual-exclude-modules), a new [Affice device Id](#get-affice-device-id) will be generated for each **new** installation.

# Features

## ProviderType identifiers collection

To match users with events and data library is sending, these `ProviderType` identifiers are collected:

### Attribution

- `AFFISE_APP_ID`
- `AFFISE_PKG_APP_NAME`
- `AFF_APP_NAME_DASHBOARD`
- `APP_VERSION`
- `APP_VERSION_RAW`
- `STORE`
- `TRACKER_TOKEN`
- `TRACKER_NAME`
- `FIRST_TRACKER_TOKEN`
- `FIRST_TRACKER_NAME`
- `LAST_TRACKER_TOKEN`
- `LAST_TRACKER_NAME`
- `OUTDATED_TRACKER_TOKEN`
- `INSTALLED_TIME`
- `FIRST_OPEN_TIME`
- `INSTALLED_HOUR`
- `FIRST_OPEN_HOUR`
- `INSTALL_FIRST_EVENT`
- `INSTALL_BEGIN_TIME`
- `INSTALL_FINISH_TIME`
- `REFERRER_INSTALL_VERSION`
- `REFERRAL_TIME`
- `REFERRER_CLICK_TIME`
- `REFERRER_CLICK_TIME_SERVER`
- `REFERRER_GOOGLE_PLAY_INSTANT`
- `CREATED_TIME`
- `CREATED_TIME_MILLI`
- `CREATED_TIME_HOUR`
- `UNINSTALL_TIME`
- `REINSTALL_TIME`
- `LAST_SESSION_TIME`
- `CPU_TYPE`
- `HARDWARE_NAME`
- `DEVICE_MANUFACTURER`
- `DEEPLINK_CLICK`
- `DEVICE_ATLAS_ID`
- `AFFISE_DEVICE_ID`
- `AFFISE_ALT_DEVICE_ID`
- `REFTOKEN`
- `REFTOKENS`
- `REFERRER`
- `USER_AGENT`
- `MCCODE`
- `MNCODE`
- `REGION`
- `COUNTRY`
- `LANGUAGE`
- `DEVICE_NAME`
- `DEVICE_TYPE`
- `OS_NAME`
- `PLATFORM`
- `SDK_PLATFORM`
- `API_LEVEL_OS`
- `AFFISE_SDK_VERSION`
- `OS_VERSION`
- `RANDOM_USER_ID`
- `AFFISE_SDK_POS`
- `TIMEZONE_DEV`
- `AFFISE_EVENT_NAME`
- `AFFISE_EVENT_TOKEN`
- `LAST_TIME_SESSION`
- `TIME_SESSION`
- `AFFISE_SESSION_COUNT`
- `LIFETIME_SESSION_COUNT`
- `AFFISE_DEEPLINK`
- `AFFISE_PART_PARAM_NAME`
- `AFFISE_PART_PARAM_NAME_TOKEN`
- `AFFISE_APP_TOKEN`
- `LABEL`
- `AFFISE_SDK_SECRET_ID`
- `UUID`
- `AFFISE_APP_OPENED`
- `PUSHTOKEN`
- `PUSHTOKEN_SERVICE`
- `AFFISE_EVENTS_COUNT`
- `AFFISE_SDK_EVENTS_COUNT`
- `AFFISE_METRICS_EVENTS_COUNT`
- `AFFISE_INTERNAL_EVENTS_COUNT`
- `IS_ROOTED`
- `IS_EMULATOR`

### AdService

- `AD_SERVICE_ATTRIBUTION`

### Advertising

- `GAID_ADID`
- `GAID_ADID_MD5`
- `ADID`
- `ALTSTR_ADID`
- `FIREOS_ADID`
- `COLOROS_ADID`

### AndroidId

- `ANDROID_ID`
- `ANDROID_ID_MD5`

### Huawei

- `OAID`
- `OAID_MD5`

### Meta

- `META`

### Network

- `MAC_SHA1`
- `MAC_MD5`
- `CONNECTION_TYPE`
- `PROXY_IP_ADDRESS`

### Phone

- `NETWORK_TYPE`
- `ISP`

## Event send control

There are two ways to send events

1. Cache event to later scheduled send in batch

```dart
AddToCartEvent()
    .send();
```

2. Send event right now

```dart
AddToCartEvent()
    .sendNow(() {
      // handle event send success
    }, (status) {
      // handle event send failed
      // 🟥Warning🟥: event is NOT cached for later send
    });
```

## Events tracking

For example, we want to track what items usually user adds to shopping cart. To send event first create it with
following code

```dart
import 'package:affise_attribution_lib/affise.dart';

class Presenter {
  void onUserAddsItemsToCart(String item) {
    Map<String, dynamic> items = {
      "items": "cookies, potato, milk",
    };

    AddToCartEvent(userData: "groceries")
      .addPredefinedObject(PredefinedObject.CONTENT, items)
      .send(); // Send event
  }
}
```

With above example you can implement other events:

- `AchieveLevel`
- `AddPaymentInfo`
- `AddToCart`
- `AddToWishlist`
- `AdRevenue`
- `ClickAdv`
- `CompleteRegistration`
- `CompleteStream`
- `CompleteTrial`
- `CompleteTutorial`
- `Contact`
- `ContentItemsView`
- `CustomizeProduct`
- `DeepLinked`
- `Donate`
- `FindLocation`
- `InitiateCheckout`
- `InitiatePurchase`
- `InitiateStream`
- `Invite`
- `LastAttributedTouch`
- `Lead`
- `ListView`
- `Login`
- `OpenedFromPushNotification`
- `Order`
- `OrderItemAdded`
- `OrderItemRemove`
- `OrderCancel`
- `OrderReturnRequest`
- `OrderReturnRequestCancel`
- `Purchase`
- `Rate`
- `ReEngage`
- `Reserve`
- `Sales`
- `Schedule`
- `Search`
- `Share`
- `SpendCredits`
- `StartRegistration`
- `StartTrial`
- `StartTutorial`
- `SubmitApplication`
- `Subscribe`
- `TravelBooking`
- `UnlockAchievement`
- `Unsubscribe`
- `Update`
- `ViewAdv`
- `ViewCart`
- `ViewContent`
- `ViewItem`
- `ViewItems`
- `InitialSubscription`
- `InitialTrial`
- `InitialOffer`
- `ConvertedTrial`
- `ConvertedOffer`
- `TrialInRetry`
- `OfferInRetry`
- `SubscriptionInRetry`
- `RenewedSubscription`
- `FailedSubscriptionFromRetry`
- `FailedOfferFromRetry`
- `FailedTrialFromRetry`
- `FailedSubscription`
- `FailedOfferise`
- `FailedTrial`
- `ReactivatedSubscription`
- `RenewedSubscriptionFromRetry`
- `ConvertedOfferFromRetry`
- `ConvertedTrialFromRetry`
- `Unsubscription`

## Custom events tracking

Use any of custom events if default doesn't fit your scenario:

- `CustomId01Event`
- `CustomId02Event`
- `CustomId03Event`
- `CustomId04Event`
- `CustomId05Event`
- `CustomId06Event`
- `CustomId07Event`
- `CustomId08Event`
- `CustomId09Event`
- `CustomId10Event`

If above event functionality still limits your usecase, you can use `UserCustomEvent`

```dart
UserCustomEvent(eventName: "MyCustomEvent")
    .send(); 
```

## Predefined event parameters

To enrich your event with another dimension, you can use predefined parameters for most common cases.
Add it to any event:

```dart
import 'package:affise_attribution_lib/affise.dart';

class Presenter {
  void onUserAddsItemsToCart(String item) {
    Map<String, dynamic> items = {
      "items": "cookies, potato, milk",
    };

    AddToCartEvent(
      timeStampMillis: DateTime.now().millisecondsSinceEpoch,
    )
      .addPredefinedString(PredefinedString.DESCRIPTION, "best before 2029")
      .addPredefinedObject(PredefinedObject.CONTENT, items)
      .send(); // Send event
  }
}
```

In examples above `PredefinedParameters.DESCRIPTION` and `PredefinedObject.CONTENT` is used, but many others is available:

| PredefinedParameter                           | Type                                   | Event Method              |
|-----------------------------------------------|----------------------------------------|---------------------------|
| [PredefinedString](#predefinedstring)         | String                                 | addPredefinedString()     |
| [PredefinedLong](#predefinedlong)             | int                                    | addPredefinedLong()       |
| [PredefinedFloat](#predefinedfloat)           | double                                 | addPredefinedFloat()      |
| [PredefinedObject](#predefinedobject)         | Map&lt;String, dynamic&gt;             | addPredefinedObject()     |
| [PredefinedListObject](#predefinedlistobject) | List&lt;Map&lt;String, dynamic&gt;&gt; | addPredefinedListObject() |
| [PredefinedListString](#predefinedliststring) | List&lt;String&gt;                     | addPredefinedListString() |

### PredefinedString

- `ACHIEVEMENT_ID`
- `ADREV_AD_TYPE`
- `BRAND`
- `BRICK`
- `CAMPAIGN_ID`
- `CATALOGUE_ID`
- `CHANNEL_TYPE`
- `CITY`
- `CLASS`
- `CLICK_ID`
- `CONTENT_ID`
- `CONTENT_NAME`
- `CONTENT_TYPE`
- `CONVERSION_ID`
- `COUNTRY`
- `COUPON_CODE`
- `CURRENCY`
- `CUSTOMER_SEGMENT`
- `CUSTOMER_TYPE`
- `CUSTOMER_USER_ID`
- `DEEP_LINK`
- `DESCRIPTION`
- `DESTINATION_A`
- `DESTINATION_B`
- `DESTINATION_LIST`
- `EVENT_NAME`
- `NEW_VERSION`
- `NETWORK`
- `OLD_VERSION`
- `ORDER_ID`
- `PARAM_01`
- `PARAM_02`
- `PARAM_03`
- `PARAM_04`
- `PARAM_05`
- `PARAM_06`
- `PARAM_07`
- `PARAM_08`
- `PARAM_09`
- `PARAM_10`
- `PAYMENT_INFO_AVAILABLE`
- `PID`
- `PLACEMENT`
- `PREFERRED_NEIGHBORHOODS`
- `PRODUCT_ID`
- `PRODUCT_NAME`
- `PURCHASE_CURRENCY`
- `RECEIPT_ID`
- `REGION`
- `REGISTRATION_METHOD`
- `REVIEW_TEXT`
- `SEARCH_STRING`
- `SEGMENT`
- `SOURCE`
- `STATUS`
- `SUBSCRIPTION_ID`
- `SUCCESS`
- `SUGGESTED_DESTINATIONS`
- `SUGGESTED_HOTELS`
- `TUTORIAL_ID`
- `UNIT`
- `UTM_CAMPAIGN`
- `UTM_MEDIUM`
- `UTM_SOURCE`
- `VALIDATED`
- `VERTICAL`
- `VIRTUAL_CURRENCY_NAME`
- `VOUCHER_CODE`

### PredefinedLong

- `AMOUNT`
- `DATE_A`
- `DATE_B`
- `DEPARTING_ARRIVAL_DATE`
- `DEPARTING_DEPARTURE_DATE`
- `HOTEL_SCORE`
- `LEVEL`
- `MAX_RATING_VALUE`
- `NUM_ADULTS`
- `NUM_CHILDREN`
- `NUM_INFANTS`
- `PREFERRED_NUM_STOPS`
- `PREFERRED_STAR_RATINGS`
- `QUANTITY`
- `RATING_VALUE`
- `RETURNING_ARRIVAL_DATE`
- `RETURNING_DEPARTURE_DATE`
- `SCORE`
- `TRAVEL_START`
- `TRAVEL_END`
- `USER_SCORE`
- `EVENT_START`
- `EVENT_END`

### PredefinedFloat

- `PREFERRED_PRICE_RANGE`
- `PRICE`
- `REVENUE`
- `LAT`
- `LONG`

### PredefinedObject

- `CONTENT`

### PredefinedListObject

- `CONTENT_LIST`

### PredefinedListString

- `CONTENT_IDS`

## Events buffering

Affise library will send any pending events with first opportunity,
but if there is no network connection or device is disabled, events are kept locally for 7 days before deletion.

## Advertising Identifier (google) tracking

> [!NOTE] 
>
> Requires [Affise Advertising Module](#modules)

Advertising Identifier (google) tracking is supported automatically, no actions needed

## Open Advertising Identifier (huawei) tracking

> [!NOTE] 
>
> Requires [Affise Huawei Module](#modules)

Open Advertising Identifier is supported automatically, no actions needed

## Install referrer tracking

Install referrer tracking is supported automatically, no actions needed

## Push token tracking

To let affise track push token you need to receive it from your push service provider, and pass to Affise library.

Supported service providers:

- `APPLE` - **iOS only**
- `FIREBASE`

### Native

#### iOS APNs

Edit `[AppDelegate.swift](ios/Runner/AppDelegate.swift)`

```swift
import AffiseAttributionLib

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
    let result = super.application(application, didFinishLaunchingWithOptions: launchOptions)

    application.registerForRemoteNotifications()

    return result
  }

  override func application(
    _ application: UIApplication,
    didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data
  ) {
    let pushToken = deviceToken.map { String(format: "%02.2hhx", $0) }.joined()

    // Pass APNs token to Affise
    Affise.addPushToken(pushToken, .APPLE)
  }
}
```

### Firebase Flutter Plugin

[Firebase Flutter Plugin](https://pub.dev/packages/firebase_messaging)

Add Firebase integration by completing steps in [Firebase Flutter Docs](https://firebase.google.com/docs/cloud-messaging/flutter/client)

After you have done with firebase integration, add to your cloud messaging service 
`FirebaseMessaging.instance.onTokenRefresh` method `Affise.addPushToken(pushToken)`

```dart
import 'package:affise_attribution_lib/affise.dart';
import 'package:firebase_messaging/firebase_messaging.dart';


class _Application extends State<Application> {

  @override
  void initState() {
    super.initState();

    // Any time the token refreshes, pass this to Affise.
    FirebaseMessaging.instance.onTokenRefresh.listen((pushToken) {
      Affise.addPushToken(pushToken, PushTokenService.FIREBASE);
    })
    .onError((err) {
      // Error getting token.
    });
  }

  ...
}
```

#### iOS APNs

After you have done with firebase integration, pass APNs token from
`FirebaseMessaging.instance.getAPNSToken()` to `Affise.addPushToken(pushToken)`

```dart
import 'dart:io';
import 'package:affise_attribution_lib/affise.dart';
import 'package:firebase_messaging/firebase_messaging.dart';


class _Application extends State<Application> {

  @override
  void initState() {
    super.initState();

    // Works only on iOS
    if (Platform.isIOS) {
      // Get Apple Push Notification Service token
      FirebaseMessaging.instance.getAPNSToken().then((pushToken) {
        if (pushToken != null) {
          Affise.addPushToken(pushToken, PushTokenService.APPLE);
        }
      });
    }
  }

  ...
}
```

## Uninstall tracking

Affise automatically track reinstall events by using silent-push technology, to make this feature work, 
pass push token when it is recreated by user and on you application starts up

```dart
Affise.addPushToken("token", PushTokenService.FIREBASE);
```

## APK preinstall tracking

SDK is also supports scenario when APK is installed not from one of application markets, such as google play, huawei appgallery or amazon appstore
To use this feature, create file with name `partner_key` in your app assets directory, and write unique identifier inside, this key will be passed to our backend so you can track events by partner later in your Affise console.

## Links

### Deeplinks

> [!CAUTION]
>
> 🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥
>
> Deeplinks support only **CUSTOM** scheme **NOT** `http` or `https`
>
> For `http` or `https` read how to setup [AppLinks](#applinks)
>
> 🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥

To integrate deeplink support you need:

- Follow how to set up deeplinks for [Android](#android-2) or [iOS](#ios-2)

- Register deeplink callback right after `Affise.settings(..).start()`

```dart
void init() {
  Affise.settings(affiseAppId, secretKey).start(); // Start Affise SDK

  Affise.registerDeeplinkCallback((value) {
    // full uri "scheme://host/path?parameters"
    var deeplink = value.deeplink;

    // separated for convenience
    var scheme = value.scheme;
    var host = value.host;
    var path = value.path;
    var queryParametersMap = value.parameters;

    if(queryParametersMap["<your_uri_key>"]?.contains("<your_uri_key_value>") == true) {
      // handle value
    }
  });
}
```

Test Android DeepLink via terminal command:

```terminal
adb shell am start -a android.intent.action.VIEW -d "YOUR_SCHEME://YOUR_DOMAIN/somepath?param=1\&list=some\&list=other\&list="
```

Test iOS DeepLink via terminal command:

```terminal
xcrun simctl openurl booted "YOUR_SCHEME://YOUR_DOMAIN/somepath?param=1&list=some&list=other&list=1"
```

#### Android

To integrate deeplink support in android you need:

- Add intent filter to one of your activities [`AndroidManifest.xml example`](example/android/app/src/main/AndroidManifest.xml)

- Add **custom** scheme (**NOT** `http` or `https`) and host to filter

Example: `YOUR_SCHEME://YOUR_DOMAIN`

Example: `myapp://mydomain.com`

```xml
<meta-data android:name="flutter_deeplinking_enabled" android:value="true" />
<intent-filter android:autoVerify="true">
    <action android:name="android.intent.action.VIEW" />
    
    <category android:name="android.intent.category.DEFAULT" />
    <category android:name="android.intent.category.BROWSABLE" />
    
    <data
        android:host="YOUR_DOMAIN"
        android:scheme="YOUR_SCHEME" />
</intent-filter>
```

#### iOS

To integrate deeplink support in iOS you need:

Add key `CFBundleURLTypes` to `Info.plist` [`example Info.plist`](example/ios/Runner/Info.plist)

Example: `YOUR_SCHEME://YOUR_DOMAIN`

Example: `myapp://mydomain.com`

```xml
<key>CFBundleURLTypes</key>
<array>
    <dict>
        <key>CFBundleTypeRole</key>
        <string>Editor</string>
        <key>CFBundleURLName</key>
        <string>YOUR_DOMAIN</string>
        <key>CFBundleURLSchemes</key>
        <array>
            <string>YOUR_SCHEME</string>
        </array>
    </dict>
</array>
```

### AppLinks

> [!CAUTION]
>
> 🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥
>
> You must owne website domain.
>
> And has ability to add file `https://yoursite/.well-known/apple-app-site-association` for iOS support
>
> And has ability to add file `https://yoursite/.well-known/assetlinks.json` for Android support
>
> 🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥

- Follow how to set up AppLinks for [Android](#android-3) or [iOS](#ios-3)

#### Android

To integrate applink support in android you need:

- Add intent filter to one of your activities [`AndroidManifest.xml example`](example/android/app/src/main/AndroidManifest.xml)

- Add `https` or `http` scheme and host to filter

Example: `https://YOUR_DOMAIN`

Example: `https://mydomain.com`

```xml
<meta-data android:name="flutter_deeplinking_enabled" android:value="true" />
<intent-filter android:autoVerify="true">
    <action android:name="android.intent.action.VIEW" />
    
    <category android:name="android.intent.category.DEFAULT" />
    <category android:name="android.intent.category.BROWSABLE" />
    
    <data
        android:host="YOUR_DOMAIN"
        android:scheme="https" />
</intent-filter>
```

- Associate your app with your website. [Read Google instructions](https://developer.android.com/studio/write/app-link-indexing#associatesite) <details>
  <summary>How To Associate your app with your website</summary>

  ---

  After setting up URL support for your app, the App Links Assistant generates a Digital Assets Links file you can use to [associate your website with your app](https://developer.android.com/training/app-links/verify-android-applinks#web-assoc).

  As an alternative to using the Digital Asset Links file, you can [associate your site and app in Search Console](https://support.google.com/webmasters/answer/6212023).

  If you're using [Play App Signing](https://support.google.com/googleplay/android-developer/answer/9842756) for your app, then the certificate fingerprint produced by the App Links Assistant usually doesn't match the one on users' devices. In this case, you can find the correct Digital Asset Links JSON snippet for your app in your [Play Console](https://play.google.com/console/) developer account under **Release** > **Setup** > **App signing**.

  To associate your app and your website using the App Links Assistant, click **Open Digital Asset Links File Generator** from the App Links Assistant and follow these steps:

  ![app-links-assistant-dal-file-generator_2x](https://developer.android.com/static/studio/images/write/app-links-assistant-dal-file-generator_2x.png)
  **Figure 2**. Enter details about your site and app to generate a Digital Asset Links file.

  1. Enter your **Site domain** and your [**Application ID**](https://developer.android.com/studio/build/configure-app-module#set-application-id).

  2. To include support in your Digital Asset Links file for [One Tap sign-in](https://developers.google.com/identity/one-tap/android/overview), select **Support sharing credentials between the app and the website** and enter your site's sign-in URL.This adds the following string to your Digital Asset Links file declaring that your app and website share sign-in credentials: `delegate_permission/common.get_login_creds`.

  3. Specify the [signing config](https://developer.android.com/studio/publish/app-signing#sign-auto) or select a [keystore file](https://developer.android.com/studio/publish/app-signing#certificates-keystores).

  Make sure you select the right release config or keystore file for the release build or the debug config or keystore file for the debug build of your app. If you want to set up your production build, use the release config. If you want to test your build, use the debug config.

  4. Click **Generate Digital Asset Links file**.
  5. Once Android Studio generates the file, click **Save file** to download it.
  6. Upload the `assetlinks.json` file to your site, with read access for everyone, at `https://yoursite/.well-known/assetlinks.json`.

  > [!IMPORTANT]
  >
  > The system verifies the Digital Asset Links file via the encrypted HTTPS protocol. Make sure that the **assetlinks.json** file is accessible over an HTTPS connection, regardless of whether your app's intent filter includes **https**.

  7. Click **Link and Verify** to confirm that you've uploaded the correct Digital Asset Links file to the correct location.

  Learn more about associating your website with your app through the Digital Asset Links file in Declare website associations.

  ---

</details>

#### iOS

To integrate applink support in iOS you need:

- Follow how to set up applink in the [official documentation](https://developer.apple.com/documentation/xcode/supporting-universal-links-in-your-app).

- Associate your app with your website. [Supporting associated domains](https://developer.apple.com/documentation/xcode/supporting-associated-domains)

- [Configuring an associated domain](https://developer.apple.com/documentation/xcode/configuring-an-associated-domain/)

- Add key `com.apple.developer.associated-domains` to `Info.plist`

Example: `https://YOUR_DOMAIN`

Example: `https://mydomain.com`

```xml
<key>com.apple.developer.associated-domains</key>
<array>
    <string>applinks:YOUR_DOMAIN</string>
</array>
```

### Get deferred deeplink

> [!NOTE] 
>
> Requires [Affise Status Module](#modules)

Use the next public method of SDK to get deferred deeplink from server

```dart
Affise.getDeferredDeeplink((deferredDeeplink) {
  // handle deferred deeplink
});
```

### Get deferred deeplink value

> [!NOTE] 
>
> Requires [Affise Status Module](#modules)

Use the next public method of SDK to get deferred deeplink value from server

```dart
Affise.getDeferredDeeplinkValue(ReferrerKey.CLICK_ID, (deferredDeeplinkValue) {
  // handle deferred deeplink value
});
```

## Offline mode

In some scenarios you would want to limit Affise network usage, to pause that activity call anywhere in your application following code after Affise start:

```dart
Affise.settings(affiseAppId, secretKey).start(); // Start Affise SDK

Affise.setOfflineModeEnabled(true); // to enable offline mode
Affise.setOfflineModeEnabled(false); // to disable offline mode
```

While offline mode is enabled, your metrics and other events are kept locally, and will be delivered once offline mode is disabled.
Offline mode is persistent as Application lifecycle, and will be disabled with process termination automatically.
To check current offline mode status call:

```dart
Affise.isOfflineModeEnabled(); // returns true or false describing current tracking state
```

## Disable tracking

To disable any tracking activity, storing events and gathering device identifiers and metrics call anywhere in your application following code after Affise start:

```dart
Affise.settings(affiseAppId, secretKey).start(); // Start Affise SDK

Affise.setTrackingEnabled(true); // to enable tracking
Affise.setTrackingEnabled(false); // to disable tracking
```

By default tracking is enabled.

While tracking mode is disabled, metrics and other identifiers is not generated locally.
Keep in mind that this flag is persistent until app reinstall, and don't forget to reactivate tracking when needed.
To check current status of tracking call:

```dart
Affise.isTrackingEnabled(); // returns true or false describing current tracking state
```

## Disable background tracking

To disable any background tracking activity, storing events and gathering device identifiers and metrics call anywhere in your application following code after Affise start:

```dart
Affise.settings(affiseAppId, secretKey).start(); // Start Affise SDK

Affise.setBackgroundTrackingEnabled(true); // to enable background tracking
Affise.setBackgroundTrackingEnabled(false); // to disable background tracking
```

By default background tracking is enabled.

While background tracking mode is disabled, metrics and other identifiers is not generated locally.
Background tracking mode is persistent as Application lifecycle, and will be re-enabled with process termination automatically.
To check current status of background tracking call:

```dart
Affise.isBackgroundTrackingEnabled(); // returns true or false describing current background tracking state
```

## Get random user Id

```dart
Affise.getRandomUserId();
```

## Get Affice device Id

> [!NOTE] 
>
> To make `device id` more persistent on application reinstall
>
> use [Affise `Persistent` Module](#modules-persistent) for `iOS`
>
> use [Affise `AndroidId` Module](#modules) for `Android`

> [!NOTE]
>
> Read more about [Persistent data](#persistent-data) and [Reinstall tracking](#reinstall-tracking)

```dart
Affise.getRandomDeviceId();
```

## Get providers

Returns providers map with [ProviderType](#providertype-identifiers-collection) as key

```dart
Affise.getProviders().then((providers) {
  var key = ProviderType.AFFISE_APP_TOKEN;
  var value = providers[key];
});
```

## Is first run
```dart
Affise.isFirstRun().then((isFirstRun) {
  // handle
});
```

## Get referrer

Use the next public method of SDK

> To get Install referrer by installing from `Android` `RuStore` include module [`RuStore`](#modules)

> To get Install referrer by installing from `Android` `AppGallery` include module [`Huawei`](#modules)

```dart
Affise.getReferrerUrl((value) {
  // handle referrer
});
```

## Get referrer value

Use the next public method of SDK to get referrer value by

> To get Install referrer by installing from `Android` `RuStore` include module [`RuStore`](#modules)

> To get Install referrer by installing from `Android` `AppGallery` include module [`Huawei`](#modules)

```dart
Affise.getReferrerUrlValue(ReferrerKey.CLICK_ID, (value) {
  // handle referrer
});
```

## Referrer keys

In examples above `ReferrerKey.CLICK_ID` is used, but many others is available:

- `AD_ID`
- `CAMPAIGN_ID`
- `CLICK_ID`
- `AFFISE_AD`
- `AFFISE_AD_ID`
- `AFFISE_AD_TYPE`
- `AFFISE_ADSET`
- `AFFISE_ADSET_ID`
- `AFFISE_AFFC_ID`
- `AFFISE_CHANNEL`
- `AFFISE_CLICK_LOOK_BACK`
- `AFFISE_COST_CURRENCY`
- `AFFISE_COST_MODEL`
- `AFFISE_COST_VALUE`
- `AFFISE_DEEPLINK`
- `AFFISE_KEYWORDS`
- `AFFISE_MEDIA_TYPE`
- `AFFISE_MODEL`
- `AFFISE_OS`
- `AFFISE_PARTNER`
- `AFFISE_REF`
- `AFFISE_SITE_ID`
- `AFFISE_SUB_SITE_ID`
- `AFFISE_SUB_1`
- `AFFISE_SUB_2`
- `AFFISE_SUB_3`
- `AFFISE_SUB_4`
- `AFFISE_SUB_5`
- `AFFC`
- `PID`
- `SUB_1`
- `SUB_2`
- `SUB_3`
- `SUB_4`
- `SUB_5`

## Get module status

```dart
Affise.module.getStatus(AffiseModules.STATUS, (response) {
    // handle status response
});
```

## Platform specific

### GDPR right to be forgotten

> `Android Only`

Under the EU's General Data Protection Regulation (GDPR): An individual has the right to have their personal data erased.
To provide this functionality to user, as the app developer, you can call

```dart
Affise.settings(affiseAppId, secretKey).start(); // Start Affise SDK

Affise.android.forget(); // to forget users data
```

After processing such request our backend servers will delete all users data.
To prevent library from generating new events, disable tracking just before calling Affise.forget:

```dart
Affise.settings(affiseAppId, secretKey).start(); // Start Affise SDK

Affise.setTrackingEnabled(false);
Affise.android.forget(); // to forget users data
```

### StoreKit Ad Network

> `iOS Only`

For ios prior `16.1` first call

```dart
Affise.ios.registerAppForAdNetworkAttribution((error) { 
  // Handle error
});
```

Updates the fine and coarse conversion values, and calls a completion handler if the update fails.
Second argument coarseValue is available in iOS 16.1+

```dart
Affise.ios.updatePostbackConversionValue(1, SKAdNetwork.CoarseConversionValue.medium, (error) { 
  // Handle error
});
```

Configure your app to send postback copies to Affise:

Add key `NSAdvertisingAttributionReportEndpoint` to `Info.plist`
Set key value to `https://affise-skadnetwork.com/`

Example: [`example/ios/Runner/Info.plist`](example/ios/Runner/Info.plist)

```xml
<key>CFBundleURLTypes</key>
<array>
    <dict>
      <key>NSAdvertisingAttributionReportEndpoint</key>
      <string>https://affise-skadnetwork.com/</string>
    </dict>
</array>
```

# SDK to SDK integrations

```dart
// Send AdRevenue info
AffiseAdRevenue(AffiseAdSource.ADMOB)
  .setRevenue(2.5, "ImpressionData_Currency")
  .setNetwork("ImpressionData_Network")
  .setUnit("ImpressionData_Unit")
  .setPlacement("ImpressionData_Placement")
  .send();
```

# Debug

## Validate credentials

> [!CAUTION]
>
> 🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥
> 
> Debug methods WON'T work on Production
>
> 🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥

Validate your credentials by receiving `ValidationStatus` values:

- `VALID` - your credentials are valid
- `INVALID_APP_ID` - your app id is not valid
- `INVALID_SECRET_KEY` - your SDK secretKey is not valid
- `PACKAGE_NAME_NOT_FOUND` - your application package name not found
- `NOT_WORKING_ON_PRODUCTION` - you using debug method on production
- `NETWORK_ERROR` - network or server not available (for example `Airoplane mode` is active)

```dart
Affise
  .settings(
    affiseAppId: "Your appId",
    secretKey: "Your SDK secretKey",
  )
  .setProduction(false) //To enable debug methods set Production to false
  .start(); // Start Affise SDK

Affise.debug.validate((status) {
    // Handle validation status
});
```

## Version

Get Affise flutter library version

```kotlin
Affise.debug.version()
```

## Version native

Get Affise native `Android`/`iOS` library version

```kotlin
Affise.debug.versionNative().then((version) {
  // Native version
})
```

# Troubleshoots

> [!CAUTION]
>
> 🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥
> 
> If Affise settings doesn't change or api is working incorrectly
>
> **First**: completely stop android application on device
>
> Flutter relaunch on live code change, 
> but native code (such as Affise native library) won't restart 
> unless Android application is **manually restarted** or **completely rebuild**
>
> 🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥


> [!NOTE]
>
> 🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥
> 
> Then reporting a **BUG**
>
> **Please** provide information:
>
> 1. From command `flutter doctor -v`
>
> 2. On which platform bug occurred `iOS` or `Android`
>
> 3. Detailed log of a bug
>
> 4. Steps to reproduse a bug
>
> 5. Code which cause a bug
>
> 🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥

## iOS

> [!CAUTION]
>
> 🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥
>
> This app has crashed because Affise Advertising Module is attempted to access privacy-sensitive data without a usage description.
>
> The app's `Info.plist` must contain an `NSUserTrackingUsageDescription` key with a string value explaining
>
> to the user how the app uses this data.
>
> 🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥

Open `info.plist` and add key `NSUserTrackingUsageDescription` with string value. For more information [read requirements](#requirements)
