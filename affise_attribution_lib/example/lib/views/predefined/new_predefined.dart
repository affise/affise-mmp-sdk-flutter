import 'package:affise_attribution_lib/affise.dart';
import 'package:affise_attribution_lib/events/parameters/predefined.dart';
import 'package:flutter/material.dart';

import 'predefined_data.dart';

enum _PredefineType {
  float,
  long,
  string,
}

extension _PredefineTypeExt on _PredefineType {
  String get label {
    return switch (this) {
      _PredefineType.float => 'PredefinedFloat',
      _PredefineType.long => 'PredefinedLong',
      _PredefineType.string => 'PredefinedString',
    };
  }
}

class NewPredefined extends StatefulWidget {
  const NewPredefined({
    required this.onAdd,
    super.key,
  });

  final ValueChanged<PredefinedData> onAdd;

  @override
  State<NewPredefined> createState() => _NewPredefinedState();
}

class _NewPredefinedState extends State<NewPredefined> {
  final _valueController = TextEditingController();
  _PredefineType _selectedPredefineType = _PredefineType.float;
  Object _selectedPredefined = PredefinedFloat.values.first;

  List<Object> get _predefinedItems {
    return switch (_selectedPredefineType) {
      _PredefineType.float => PredefinedFloat.values,
      _PredefineType.long => PredefinedLong.values,
      _PredefineType.string => PredefinedString.values,
    };
  }

  String _predefinedLabel(Object value) {
    final predefinedValue = switch (value) {
      PredefinedFloat item => item.value,
      PredefinedLong item => item.value,
      PredefinedString item => item.value,
      _ => value.toString(),
    };

    return predefinedValue.replaceFirst(Predefined.PREFIX, '').toUpperCase();
  }

  TextInputType get _predefinedValueKeyboardType {
    return switch (_selectedPredefineType) {
      _PredefineType.float => const TextInputType.numberWithOptions(
          decimal: true,
          signed: true,
        ),
      _PredefineType.long => TextInputType.number,
      _PredefineType.string => TextInputType.text,
    };
  }

  Object? _parseValue() {
    final value = _valueController.text;

    return switch (_selectedPredefineType) {
      _PredefineType.float => double.tryParse(value),
      _PredefineType.long => int.tryParse(value),
      _PredefineType.string => value,
    };
  }

  void _addPredefined() {
    final data = _parseValue();
    if (data == null) {
      return;
    }

    widget.onAdd(PredefinedData(
      predefined: _selectedPredefined,
      data: data,
    ));
    _valueController.clear();
  }

  @override
  void dispose() {
    _valueController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        DropdownButtonFormField<_PredefineType>(
          initialValue: _selectedPredefineType,
          decoration: const InputDecoration(labelText: 'Predefine type'),
          items: _PredefineType.values
              .map(
                (item) => DropdownMenuItem(
                  value: item,
                  child: Text(item.label),
                ),
              )
              .toList(),
          onChanged: (value) {
            if (value == null) {
              return;
            }

            setState(() {
              _selectedPredefineType = value;
              _selectedPredefined = _predefinedItems.first;
            });
          },
        ),
        DropdownButtonFormField<Object>(
          initialValue: _selectedPredefined,
          decoration: const InputDecoration(labelText: 'Predefine'),
          items: _predefinedItems
              .map(
                (item) => DropdownMenuItem(
                  value: item,
                  child: Text(_predefinedLabel(item)),
                ),
              )
              .toList(),
          onChanged: (value) {
            if (value == null) {
              return;
            }

            setState(() {
              _selectedPredefined = value;
            });
          },
        ),
        TextField(
          controller: _valueController,
          decoration: const InputDecoration(labelText: 'Predefined value'),
          keyboardType: _predefinedValueKeyboardType,
          textInputAction: TextInputAction.done,
        ),
        const SizedBox(height: 16),
        FilledButton(
          onPressed: _addPredefined,
          child: const Text('Add Predefined'),
        ),
      ],
    );
  }
}
