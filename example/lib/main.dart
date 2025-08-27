import 'package:affise_attribution_lib/affise.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'affise/affise_api_widget.dart';
import 'affise/store/affise_store.dart';
import 'affise/affise_widget.dart';
import 'components/show_alert.dart';

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
    // Initialize https://github.com/affise/affise-mmp-sdk-flutter#initialize
    Affise
        .settings(
          affiseAppId: "129", //Change to your app id
          secretKey: "93a40b54-6f12-443f-a250-ebf67c5ee4d2", //Change to your SDK key
        )
        .setConfigValue(AffiseConfig.FB_APP_ID, "1111111111111111")
        .setProduction(false) //To enable debug methods set Production to false
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
        // print("Affise: $request");
        print("Affise: $response");
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
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: TabBar(
            labelColor: Theme.of(context).colorScheme.primary,
            indicatorColor: Theme.of(context).colorScheme.primary,
            tabs: [
              Tab(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(Icons.swap_horiz),
                    SizedBox(width: 8),
                    Text('API'),
                  ],
                ),
              ),
              Tab(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(Icons.file_upload),
                    SizedBox(width: 8),
                    Text('Events'),
                  ],
                ),
              ),
              Tab(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(Icons.store),
                    SizedBox(width: 8),
                    Text('Store'),
                  ],
                ),
              ),
            ],
          ),
        ),
        body: SafeArea(
          child: TabBarView(
            children: [
              AffiseApiWidget(output),
              const AffiseWidget(),
              const AffiseStore(),
            ],
          ),
        ),
      ),
    );
  }
}
