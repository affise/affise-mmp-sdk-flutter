import UIKit
import Flutter
import AffiseAttributionLib

@main
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
    let result = super.application(application, didFinishLaunchingWithOptions: launchOptions)

//     application.registerForRemoteNotifications()

    return result
  }

//   override func application(
//     _ application: UIApplication,
//     didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data
//   ) {
//     let pushToken = deviceToken.map { String(format: "%02.2hhx", $0) }.joined()
//     Affise.addPushToken(pushToken, .APPLE)
//   }
}
