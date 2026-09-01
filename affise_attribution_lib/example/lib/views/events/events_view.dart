import 'package:affise_attribution_lib/affise.dart';
import 'package:affise_attribution_lib/events/subscription/base_subscription_event.dart';
import 'package:affise_attribution_lib/utils/to_snake_case.dart';
import 'package:affise_attribution_lib_example/factories/simple_events_factory.dart';
import 'package:flutter/material.dart';

import '../../components/affise_button.dart';
import '../../factories/default_events_factory.dart';
import '../../settings/app_settings.dart';
import '../predefined/predefined_data.dart';

class EventsView extends StatefulWidget {
  const EventsView({
    required this.useCustomPredefined,
    super.key,
  });

  final bool useCustomPredefined;

  @override
  State<StatefulWidget> createState() => _EventsViewState();
}

class _EventsViewState extends State<EventsView> {
  List<Event> defaultEvents = DefaultEventsFactory().createEvents();
  List<Event> simpleEvents = SimpleEventsFactory().createEvents();
  List<Event> items = [];

  @override
  void initState() {
    super.initState();
    _updateItems();
  }

  @override
  void didUpdateWidget(covariant EventsView oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.useCustomPredefined != widget.useCustomPredefined) {
      _updateItems();
    }
  }

  void _updateItems() {
    items = widget.useCustomPredefined ? simpleEvents : defaultEvents;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Flexible(
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
            itemCount: items.length,
            itemBuilder: (context, index) {
              return AffiseButton(
                onPressed: () async {
                  await applyCustomPredefines(items[index]);
                  
                  // Events tracking https://github.com/affise/affise-mmp-sdk-flutter#events-tracking
                  // Send event
                  items[index].send();
                  // or
                  // items[index].sendNow(() {
                  //   debugPrint("success: ${items[index].getName()}");
                  // }, (errorResponse) {
                  //   debugPrint("failed: ${items[index].getName()} $errorResponse");
                  // });
                },
                backgroundColor: (items[index] is BaseSubscriptionEvent)
                    ? Colors.red
                    : Colors.blue,
                foregroundColor: Theme.of(context).colorScheme.onSurface,
                text:
                    items[index].runtimeType.toString().toWords().toUpperCase(),
              );
            },
          ),
        ),
      ],
    );
  }

  Future<void> applyCustomPredefines(Event event) async {
    if (!widget.useCustomPredefined) {
      return;
    }

    final settings = await AppSettings.load();
    for (final predefinedData in settings.predefinedData) {
      _applyCustomPredefine(event, predefinedData);
    }
  }

  void _applyCustomPredefine(Event event, PredefinedData predefinedData) {
    final predefined = predefinedData.predefined;
    final data = predefinedData.data;

    if (predefined is PredefinedFloat && data is num) {
      event.addPredefinedFloat(predefined, data.toDouble());
    } else if (predefined is PredefinedLong && data is int) {
      event.addPredefinedLong(predefined, data);
    } else if (predefined is PredefinedString && data is String) {
      event.addPredefinedString(predefined, data);
    }
  }
}

extension StringExtension on String {
  String toWords() => toSnakeCase().replaceAll("_", " ");
}
