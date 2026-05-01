import 'package:flutter/material.dart';

import '../../settings/app_settings.dart';
import 'new_predefined.dart';
import 'predefined_card.dart';
import 'predefined_data.dart';

class PredefinedView extends StatefulWidget {
  const PredefinedView({
    required this.useCustomPredefined,
    required this.onUseCustomPredefinedChanged,
    super.key,
  });

  final bool useCustomPredefined;
  final ValueChanged<bool> onUseCustomPredefinedChanged;

  @override
  State<PredefinedView> createState() => _PredefinedViewState();
}

class _PredefinedViewState extends State<PredefinedView> {
  var _predefinedItems = <PredefinedData>[];

  @override
  void initState() {
    super.initState();
    _loadPredefinedData();
  }

  Future<void> _loadPredefinedData() async {
    final settings = await AppSettings.load();

    if (!mounted) {
      return;
    }

    setState(() {
      _predefinedItems = settings.predefinedData;
    });
  }

  Future<void> _savePredefinedData() async {
    final settings = await AppSettings.load();
    await settings.copyWith(predefinedData: _predefinedItems).save();
  }

  Future<void> _saveUseCustomPredefined(bool value) async {
    final settings = await AppSettings.load();
    await settings.copyWith(useCustomPredefined: value).save();
  }

  void _addPredefined(PredefinedData item) {
    setState(() {
      final index = _predefinedItems.indexWhere(
        (predefinedItem) => predefinedItem.predefined == item.predefined,
      );

      if (index == -1) {
        _predefinedItems.add(item);
      } else {
        _predefinedItems[index] = item;
      }
    });
    _savePredefinedData();
  }

  void _deletePredefined(PredefinedData item) {
    setState(() {
      _predefinedItems.removeWhere(
        (predefinedItem) => predefinedItem.predefined == item.predefined,
      );
    });
    _savePredefinedData();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          SwitchListTile(
            title: const Text('Use custom Predefined'),
            value: widget.useCustomPredefined,
            onChanged: (value) {
              widget.onUseCustomPredefinedChanged(value);
              _saveUseCustomPredefined(value);
            },
          ),
          NewPredefined(onAdd: _addPredefined),
          const SizedBox(height: 16),
          Expanded(
            child: ListView(
              children: _predefinedItems
                  .map(
                    (item) => PredefinedCard(
                      data: item,
                      onDelete: () {
                        _deletePredefined(item);
                      },
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
