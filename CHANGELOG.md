# Changelog

## [1.6.51] - 2026-02-12

### Fixed

- Fix `Affise.module.link.resolve` content downloading will be skipped

### Changed

- Update native iOS to [`1.6.60`](https://github.com/affise/affise-mmp-sdk-ios/blob/1.6.60/CHANGELOG.md)
- Update native Android to [`1.6.75`](https://github.com/affise/affise-mmp-sdk-android/blob/v1.6.75/CHANGELOG.md)

## [1.6.50] - 2026-02-04

### Added

- Provider `REFERRER_UPDATED`

### Fixed

- Android InstallReferrer reconnect on service disconnected

### Changed

- Update native Android to [`1.6.74`](https://github.com/affise/affise-mmp-sdk-android/blob/v1.6.74/CHANGELOG.md)

## [1.6.49] - 2026-01-23

### Added

- Api `Affise.getRandomUserId` added new algorithm for id generation
- Api `Affise.getRandomDeviceId` added new algorithm for id generation
- Error value for `AffiseError.UUID_NO_VALID_METHOD` is `22222222-2222-2222-2222-222222222222`
- Error value for `AffiseError.UUID_NOT_INITIALIZED` is `11111111-1111-1111-1111-111111111111`
- Api `Affise.getRandomUserId` return `AffiseError.UUID_NOT_INITIALIZED` if SDK not initialized
- Api `Affise.getRandomUserId` return `AffiseError.UUID_NO_VALID_METHOD` if no valid methods to retrieve id
- Api `Affise.getRandomDeviceId` return `AffiseError.UUID_NOT_INITIALIZED` if SDK not initialized
- Api `Affise.getRandomDeviceId` return `AffiseError.UUID_NO_VALID_METHOD` if no valid methods to retrieve id

### Fixed

- Fix `Android` `Affise.module.link.resolve` redirect

### Changed

- Update native iOS to [`1.6.59`](https://github.com/affise/affise-mmp-sdk-ios/blob/1.6.59/CHANGELOG.md)
- Update native Android to [`1.6.73`](https://github.com/affise/affise-mmp-sdk-android/blob/v1.6.73/CHANGELOG.md)

## [1.6.48] - 2025-12-18

### Changed

- Update native Android to [`1.6.72`](https://github.com/affise/affise-mmp-sdk-android/blob/v1.6.72/CHANGELOG.md)

## [1.6.47] - 2025-12-09

### Fixed

- Fix `Affise.getReferrerUrl`
- Fix `Affise.getReferrerUrlValue`

### Changed

- Update native Android to [`1.6.68`](https://github.com/affise/affise-mmp-sdk-android/blob/v1.6.68/CHANGELOG.md)

## [1.6.46] - 2025-11-25

### Fixed

- Fix `AffiseError` parsing

### Changed

- Update native iOS to [`1.6.58`](https://github.com/affise/affise-mmp-sdk-ios/blob/1.6.58/CHANGELOG.md)
- Update native Android to [`1.6.67`](https://github.com/affise/affise-mmp-sdk-android/blob/v1.6.67/CHANGELOG.md)

## [1.6.45] - 2025-10-23

### Fixed

- Fix iOS `Affise.getDeferredDeeplinkValue`

### Changed

- Update native iOS to [`1.6.57`](https://github.com/affise/affise-mmp-sdk-ios/blob/1.6.57/CHANGELOG.md)

## [1.6.44] - 2025-10-17

### Fixed

- Fix Xcode 16+ `channel sent a message from native Flutter on non-platform thread`

## [1.6.43] - 2025-10-16

### Changed

- Update `Flutter` minimal SDK to `3.3.0`
- Update Demo App run on `Flutter` `3.35.6`

## [1.6.42] - 2025-10-03

### Added

- Error `SDK is already initialized` to `Affise.settings.setOnInitError`

### Changed

- Update native iOS to [`1.6.56`](https://github.com/affise/affise-mmp-sdk-ios/blob/1.6.56/CHANGELOG.md)
- Update native Android to [`1.6.66`](https://github.com/affise/affise-mmp-sdk-android/blob/v1.6.66/CHANGELOG.md)

## [1.6.41] - 2025-09-19

### Added

- Api `Affise.settings.setDisableModules`
- Module Api `Affise.module.advertising.startModule`

### Removed

- Api `Affise.module.moduleStart`

### Changed

- Update native iOS to [`1.6.55`](https://github.com/affise/affise-mmp-sdk-ios/blob/1.6.55/CHANGELOG.md)
- Update native Android to [`1.6.65`](https://github.com/affise/affise-mmp-sdk-android/blob/v1.6.65/CHANGELOG.md)

## [1.6.40] - 2025-08-27

### Added

- New module `TikTok`.
- Api `Affise.module.tikTok.sendEvent`.

### Changed

- Update native iOS to [`1.6.54`](https://github.com/affise/affise-mmp-sdk-ios/blob/1.6.54/CHANGELOG.md)
- Update native Android to [`1.6.64`](https://github.com/affise/affise-mmp-sdk-android/blob/v1.6.64/CHANGELOG.md)

## [1.6.39] - 2025-07-30

### Fixed

- Fix [`issue`](https://github.com/affise/affise-mmp-sdk-flutter/issues/5) crash for android API < 24 

### Changed

- Update native Android to [`1.6.61`](https://github.com/affise/affise-mmp-sdk-android/blob/v1.6.61/CHANGELOG.md)

## [1.6.38] - 2025-07-24

### Added

- New module `AdService` for `iOS`
- Provider `AD_SERVICE_ATTRIBUTION`

### Changed

- Update native iOS to [`1.6.53`](https://github.com/affise/affise-mmp-sdk-ios/blob/1.6.53/CHANGELOG.md)

## [1.6.37] - 2025-07-15

### Added

- Provider `PUSHTOKEN_SERVICE`

### Changed

- Update native iOS to [`1.6.52`](https://github.com/affise/affise-mmp-sdk-ios/blob/1.6.52/CHANGELOG.md)
- Update native Android to [`1.6.60`](https://github.com/affise/affise-mmp-sdk-android/blob/v1.6.60/CHANGELOG.md)

## [1.6.36] - 2025-06-20

### Added

- Api `Affise.module.appsFlyer.hasModule`
- Api `Affise.module.link.hasModule`
- Api `Affise.module.subscription.hasModule`

### Changed

- Update native iOS to [`1.6.51`](https://github.com/affise/affise-mmp-sdk-ios/blob/1.6.51/CHANGELOG.md)
- Update native Android to [`1.6.59`](https://github.com/affise/affise-mmp-sdk-android/blob/v1.6.59/CHANGELOG.md)

## [1.6.35] - 2025-05-23

### Added

- New module `AppsFlyer`
- Api `Affise.module.appsFlyer.logEvent`

### Changed

- Api `Affise.module.linkResolve` moved to `Affise.module.link.resolve`
- Api `Affise.module.fetchProducts` moved to `Affise.module.subscription.fetchProducts`
- Api `Affise.module.purchase` moved to `Affise.module.subscription.purchase`
- Update native iOS to [`1.6.50`](https://github.com/affise/affise-mmp-sdk-ios/blob/1.6.50/CHANGELOG.md)
- Update native Android to [`1.6.58`](https://github.com/affise/affise-mmp-sdk-android/blob/v1.6.58/CHANGELOG.md)

## [1.6.34] - 2025-05-06

### Added

- New module `meta` for `Facebook`
- Provider for `Facebook` install referrer

### Changed

- Update native Android to [`1.6.57`](https://github.com/affise/affise-mmp-sdk-android/blob/v1.6.57/CHANGELOG.md)

## [1.6.33] - 2025-04-22

### Fixed

- Fix `Affise.settings.setOnInitSuccess` false positive error
- Fix `Affise.settings.setOnInitError` false positive error

## [1.6.32] - 2025-04-15

### Removed

- Remove code support for `iOS` version lesser then `12`

### Changed

- Update `android` provider `OAID` moved to module `huawei`
- Update `android` provider `OAID_MD5` moved to module `huawei`
- Update `android` provider `OAID` to use `com.huawei.hms:ads-identifier`
- Update `iOS` EventsManager scheduler
- Update native iOS to [`1.6.49`](https://github.com/affise/affise-mmp-sdk-ios/blob/1.6.49/CHANGELOG.md)
- Update native Android to [`1.6.56`](https://github.com/affise/affise-mmp-sdk-android/blob/v1.6.56/CHANGELOG.md)

## [1.6.31] - 2025-03-26

### Added

- Api `Affise.settings.setOnInitSuccess`
- Api `Affise.settings.setOnInitError`
- Api `Affise.debug.version`
- Api `Affise.debug.versionNative`

### Changed

- Update native iOS to [`1.6.48`](https://github.com/affise/affise-mmp-sdk-ios/blob/1.6.48/CHANGELOG.md)
- Update native Android to [`1.6.55`](https://github.com/affise/affise-mmp-sdk-android/blob/v1.6.55/CHANGELOG.md)
  
## [1.6.30] - 2025-03-13

### Changed

- Api `Affise.getReferrerOnServer` moved to `Affise.getDeferredDeeplink`
- Api `Affise.getReferrerOnServerValue` moved to `Affise.getDeferredDeeplinkValue`
- Update native iOS to [`1.6.47`](https://github.com/affise/affise-mmp-sdk-ios/blob/1.6.47/CHANGELOG.md)
- Update native Android to [`1.6.54`](https://github.com/affise/affise-mmp-sdk-android/blob/v1.6.54/CHANGELOG.md)
  
## [1.6.29] - 2025-02-28

### Added

- New module `Persistent` for `iOS`
- Persistent `AFFISE_DEVICE_ID`
- Added `namespace` in the module's `build.gradle`

### Changed

- Update native iOS to [`1.6.44`](https://github.com/affise/affise-mmp-sdk-ios/blob/1.6.44/CHANGELOG.md)
- Update native Android to [`1.6.53`](https://github.com/affise/affise-mmp-sdk-android/blob/v1.6.53/CHANGELOG.md)

## [1.6.28] - 2025-02-11

### Added

- New event index `affise_event_id_index`
- New postback index `uuid_index`

### Fixed

- Fix `ProviderType.INSTALL_FIRST_EVENT`

### Changed

- Update native iOS to [`1.6.43`](https://github.com/affise/affise-mmp-sdk-ios/blob/1.6.43/CHANGELOG.md)
- Update native Android to [`1.6.52`](https://github.com/affise/affise-mmp-sdk-android/blob/v1.6.52/CHANGELOG.md)

## [1.6.27] - 2025-01-22

### Added

- Api `Affise.getReferrerOnServer`
- Api `Affise.getReferrerOnServerValue`

### Changed

- Update native Android to [`1.6.51`](https://github.com/affise/affise-mmp-sdk-android/blob/v1.6.51/CHANGELOG.md)
  
## [1.6.26] - 2024-12-13

### Added

- New module `Huawei` for `AppGallery` install referrer

### Changed

- Update native Android to [`1.6.50`](https://github.com/affise/affise-mmp-sdk-android/blob/v1.6.50/CHANGELOG.md)

## [1.6.25] - 2024-11-26

### Added

- New module `RuStore`

### Fixed

- Fix event writing to storage exception.

### Changed

- Update native Android to [`1.6.49`](https://github.com/affise/affise-mmp-sdk-android/blob/v1.6.49/CHANGELOG.md)

## [1.6.24] - 2024-10-22

### Changed

- Update native Android to [`1.6.47`](https://github.com/affise/affise-mmp-sdk-android/blob/v1.6.47/CHANGELOG.md)

### Removed

- Api `setEnabledMetrics`
- Api `setAutoCatchingTypes`

## [1.6.23] - 2024-10-08

### Fixed

- Fix `Affise.module.getStatus` timing retry

### Changed

- Update native iOS to [`1.6.42`](https://github.com/affise/affise-mmp-sdk-ios/blob/1.6.42/CHANGELOG.md)
- Update native Android to [`1.6.45`](https://github.com/affise/affise-mmp-sdk-android/blob/v1.6.45/CHANGELOG.md)

## [1.6.22] - 2024-10-02

### Added

- Module `Subscription` StoreKit2 support

### Changed

- Update native iOS to [`1.6.41`](https://github.com/affise/affise-mmp-sdk-ios/blob/1.6.41/CHANGELOG.md)

## [1.6.21] - 2024-09-06

### Added

- Module `Subscription` support

### Changed

- Update native iOS to [`1.6.40`](https://github.com/affise/affise-mmp-sdk-ios/blob/1.6.40/CHANGELOG.md)
- Update native Android to [`1.6.44`](https://github.com/affise/affise-mmp-sdk-android/blob/v1.6.44/CHANGELOG.md)

## [1.6.20] - 2024-08-19

### Added

- iOS only api `Affise.ios.getReferrerOnServer`
- iOS only api `Affise.ios.getReferrerOnServerValue`

### Changed

- Api `Affise.getReferrer` to `Affise.getReferrerUrl`.
- Api `Affise.getReferrerValue` to `Affise.getReferrerUrlValue`.
- Update native iOS to [`1.6.39`](https://github.com/affise/affise-mmp-sdk-ios/blob/1.6.39/CHANGELOG.md)
- Update native Android to [`1.6.42`](https://github.com/affise/affise-mmp-sdk-android/blob/v1.6.42/CHANGELOG.md)

## [1.6.19] - 2024-08-01

### Fixed

- Fix build ios

## [1.6.18] - 2024-07-31

### Added

- Modules compatibility check

### Fixed

- Api `Affise.Module.getStatus`

### Changed

- Update native iOS to [`1.6.36`](https://github.com/affise/affise-mmp-sdk-ios/blob/1.6.36/CHANGELOG.md)
- Update native Android to [`1.6.40`](https://github.com/affise/affise-mmp-sdk-android/blob/v1.6.40/CHANGELOG.md)

## [1.6.17] - 2024-07-09

### Fixed

- AGP error
- Android Deeplink callback on open application
- Event timestamps

### Added

- New module `Link` support
- New module `AndroidId` support

### Changed

- Update native iOS to [`1.6.33`](https://github.com/affise/affise-mmp-sdk-ios/blob/1.6.33/CHANGELOG.md)
- Update native Android to [`1.6.38`](https://github.com/affise/affise-mmp-sdk-android/blob/v1.6.38/CHANGELOG.md)
- Update `registerDeeplinkCallback` change uri to convenient values
- Api `Affise.getStatus` moved to `Affise.module.getStatus`
- Api `Affise.moduleStart` moved to `Affise.module.moduleStart`
- Api `Affise.getModulesInstalled` moved to `Affise.module.getModulesInstalled`

## [1.6.16] - 2024-06-14

### Fixed

- Build failure

### Changed

- Update native Android to [`1.6.35`](https://github.com/affise/affise-mmp-sdk-android/blob/v1.6.35/CHANGELOG.md)

## [1.6.15] - 2024-06-03

### Changed

- Update native Android to [`1.6.34`](https://github.com/affise/affise-mmp-sdk-android/blob/v1.6.34/CHANGELOG.md)

## [1.6.14] - 2024-05-30

### Added

- Event api `sendNow`
- Affise `internal` library group callback support

### Changed

- Update native iOS to [`1.6.32`](https://github.com/affise/affise-mmp-sdk-ios/blob/1.6.32/CHANGELOG.md)
- Update native Android to [`1.6.33`](https://github.com/affise/affise-mmp-sdk-android/blob/v1.6.33/CHANGELOG.md)

## [1.6.13] - 2024-03-13

### Added

- Api `isFirstRun`

### Changed

- Update native iOS to `1.6.27`
- Update native Android to `1.6.32`

## [1.6.12] - 2024-02-06

### Changed

- Update native iOS to `1.6.25`
- Update native Android to `1.6.23`

## [1.6.11] - 2024-01-10

### Added

- Api `getModulesInstalled`
- New values in `ReferrerKey`

### Removed

- Event api `sendEvents`

### Changed

- Update native iOS to `1.6.20`
- Update native Android to `1.6.22`

## [1.6.10] - 2023-12-19

### Removed

- Api `init`

### Changed

- Api `Affise.android.getReferrer` to `Affise.getReferrer`
- Api `Affise.android.getReferrerValue` to  `Affise.getReferrerValue`
  
[1.6.51]: https://github.com/affise/affise-mmp-sdk-flutter/compare/1.6.50...1.6.51
[1.6.50]: https://github.com/affise/affise-mmp-sdk-flutter/compare/1.6.49...1.6.50
[1.6.49]: https://github.com/affise/affise-mmp-sdk-flutter/compare/1.6.48...1.6.49
[1.6.48]: https://github.com/affise/affise-mmp-sdk-flutter/compare/1.6.47...1.6.48
[1.6.47]: https://github.com/affise/affise-mmp-sdk-flutter/compare/1.6.46...1.6.47
[1.6.46]: https://github.com/affise/affise-mmp-sdk-flutter/compare/1.6.45...1.6.46
[1.6.45]: https://github.com/affise/affise-mmp-sdk-flutter/compare/1.6.44...1.6.45
[1.6.44]: https://github.com/affise/affise-mmp-sdk-flutter/compare/1.6.43...1.6.44
[1.6.43]: https://github.com/affise/affise-mmp-sdk-flutter/compare/1.6.42...1.6.43
[1.6.42]: https://github.com/affise/affise-mmp-sdk-flutter/compare/1.6.41...1.6.42
[1.6.41]: https://github.com/affise/affise-mmp-sdk-flutter/compare/1.6.40...1.6.41
[1.6.40]: https://github.com/affise/affise-mmp-sdk-flutter/compare/1.6.39...1.6.40
[1.6.39]: https://github.com/affise/affise-mmp-sdk-flutter/compare/1.6.38...1.6.39
[1.6.38]: https://github.com/affise/affise-mmp-sdk-flutter/compare/1.6.37...1.6.38
[1.6.37]: https://github.com/affise/affise-mmp-sdk-flutter/compare/1.6.36...1.6.37
[1.6.36]: https://github.com/affise/affise-mmp-sdk-flutter/compare/1.6.35...1.6.36
[1.6.35]: https://github.com/affise/affise-mmp-sdk-flutter/compare/1.6.34...1.6.35
[1.6.34]: https://github.com/affise/affise-mmp-sdk-flutter/compare/1.6.33...1.6.34
[1.6.33]: https://github.com/affise/affise-mmp-sdk-flutter/compare/1.6.32...1.6.33
[1.6.32]: https://github.com/affise/affise-mmp-sdk-flutter/compare/1.6.31...1.6.32
[1.6.31]: https://github.com/affise/affise-mmp-sdk-flutter/compare/1.6.30...1.6.31
[1.6.30]: https://github.com/affise/affise-mmp-sdk-flutter/compare/1.6.29...1.6.30
[1.6.29]: https://github.com/affise/affise-mmp-sdk-flutter/compare/1.6.28...1.6.29
[1.6.28]: https://github.com/affise/affise-mmp-sdk-flutter/compare/1.6.27...1.6.28
[1.6.27]: https://github.com/affise/affise-mmp-sdk-flutter/compare/1.6.26...1.6.27
[1.6.26]: https://github.com/affise/affise-mmp-sdk-flutter/compare/1.6.25...1.6.26
[1.6.25]: https://github.com/affise/affise-mmp-sdk-flutter/compare/1.6.24...1.6.25
[1.6.24]: https://github.com/affise/affise-mmp-sdk-flutter/compare/1.6.23...1.6.24
[1.6.23]: https://github.com/affise/affise-mmp-sdk-flutter/compare/1.6.22...1.6.23
[1.6.22]: https://github.com/affise/affise-mmp-sdk-flutter/compare/1.6.21...1.6.22
[1.6.21]: https://github.com/affise/affise-mmp-sdk-flutter/compare/1.6.20...1.6.21
[1.6.20]: https://github.com/affise/affise-mmp-sdk-flutter/compare/1.6.19...1.6.20
[1.6.19]: https://github.com/affise/affise-mmp-sdk-flutter/compare/1.6.18...1.6.19
[1.6.18]: https://github.com/affise/affise-mmp-sdk-flutter/compare/1.6.17...1.6.18
[1.6.17]: https://github.com/affise/affise-mmp-sdk-flutter/compare/1.6.16...1.6.17
[1.6.16]: https://github.com/affise/affise-mmp-sdk-flutter/compare/1.6.15...1.6.16
[1.6.15]: https://github.com/affise/affise-mmp-sdk-flutter/compare/1.6.14...1.6.15
[1.6.14]: https://github.com/affise/affise-mmp-sdk-flutter/compare/1.6.13...1.6.14
[1.6.13]: https://github.com/affise/affise-mmp-sdk-flutter/compare/1.6.12...1.6.13
[1.6.12]: https://github.com/affise/affise-mmp-sdk-flutter/compare/1.6.11...1.6.12
[1.6.11]: https://github.com/affise/affise-mmp-sdk-flutter/compare/1.6.10...1.6.11
[1.6.10]: https://github.com/affise/affise-mmp-sdk-flutter/compare/1.6.9...1.6.10
