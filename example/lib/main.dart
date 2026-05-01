import 'package:affise_attribution_lib/affise.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'components/show_alert.dart';
import 'settings/app_settings.dart';
import 'views/main_view.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
      ),
      home: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ValueNotifier<String> output = ValueNotifier("");

  @override
  void initState() {
    super.initState();
    initAffise();
  }

  void setOutput(String data) {
    output.value = data;
  }

  void alert({required String title, required String text}) {
    showAlert(context, title: title, text: text);
  }

  void initAffise() async {
    final settings = await AppSettings.load();

    // Initialize https://github.com/affise/affise-mmp-sdk-flutter#initialize
    Affise.settings(
      affiseAppId: settings.affiseAppId,
      secretKey: settings.secretKey,
    )
        .setConfigValue(AffiseConfig.FB_APP_ID, settings.fbAppId)
        // To enable debug methods set Production to false
        .setProduction(settings.production)
        .setDomain(settings.domain)
        .setDisableModules([
          // Exclude modules from start
          AffiseModules.ADVERTISING,
          AffiseModules.PERSISTENT,
        ])
        .setOnInitSuccess(() {
          // Called if library initialization succeeded
          if (kDebugMode) {
            print("Affise: init success");
          }
        })
        .setOnInitError((error) {
          // Called if library initialization failed
          if (kDebugMode) {
            print("Affise: init error  $error");
          }
        })
        .start(); // Start Affise SDK

    // Deeplinks https://github.com/affise/affise-mmp-sdk-flutter#deeplinks
    Affise.registerDeeplinkCallback((value) {
      setOutput("Deeplink: $value");
      alert(
        title: "Deeplink",
        text: "${value.deeplink}\n\n"
            "scheme: \"${value.scheme}\"\n"
            "host: \"${value.host}\"\n"
            "path: \"${value.path}\"\n\n"
            "parameters: ${value.parameters}",
      );
    });

    // Debug: network request/response
    Affise.debug.network((request, response) {
      if (kDebugMode) {
        if (settings.debugRequest) {
          print("Affise: $request");
        }
        if (settings.debugResponse) {
          print("Affise: $response");
        }
      }
    });

    // SDK to SDK integrations https://github.com/affise/affise-mmp-sdk-flutter#sdk-to-sdk-integrations
    // AffiseAdRevenue(AffiseAdSource.ADMOB)
    //   .setRevenue(2.5, "USD")
    //   .setNetwork("network")
    //   .setUnit("unit")
    //   .setPlacement("placement")
    //   .send();
  }

  @override
  Widget build(BuildContext context) {
    return MainView(output);
  }
}
