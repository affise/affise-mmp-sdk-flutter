import 'package:affise_attribution_lib/affise.dart';
import 'package:affise_attribution_lib/events/subscription/base_subscription_event.dart';
import 'package:affise_attribution_lib/utils/to_snake_case.dart';
import 'package:flutter/material.dart';

import '../components/affise_button.dart';
import 'factories/default_events_factory.dart';

class AffiseWidget extends StatefulWidget {
  const AffiseWidget({super.key});

  @override
  State<StatefulWidget> createState() => _AffiseWidgetState();
}

class _AffiseWidgetState extends State<AffiseWidget> {
  
  DefaultEventsFactory factory = DefaultEventsFactory();
  List<Event> items = [];

  @override
  void initState() {
    super.initState();
    items = factory.createEvents();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        // Container(
        //   margin: const EdgeInsets.only(left: 8, right: 8),
        //   child: AffiseButton(
        //     onPressed: () {
        //       for (var item in items) {
        //         item.send();
        //       }
        //     },
        //     backgroundColor: Colors.red,
        //     text: "Send All",
        //   ),
        // ),
        Flexible(
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
            itemCount: items.length,
            itemBuilder: (context, index) {
              return AffiseButton(
                onPressed: () {
                  // Events tracking https://github.com/affise/affise-mmp-sdk-flutter#events-tracking
                  // Send event
                  items[index].send();
                  // or
                  // Affise.sendEvent(items[index]);
                  // or
                  // items[index].sendNow(() {
                  //   debugPrint("success: ${items[index].getName()}");
                  // }, (status) {
                  //   debugPrint("failed: ${items[index].getName()} $status");
                  // });
                },
                backgroundColor: (items[index] is BaseSubscriptionEvent)
                    ? Colors.red
                    : Colors.blue,
                foregroundColor: Theme.of(context).colorScheme.onBackground,
                text: items[index].runtimeType.toString().toWords().toUpperCase(),
              );
            },
          ),
        ),
      ],
    );
  }
}

extension StringExtension on String {
  String toWords() => toSnakeCase().replaceAll("_", " ");
}