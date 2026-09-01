import 'package:flutter/material.dart';

import 'predefined_data.dart';

class PredefinedCard extends StatelessWidget {
  const PredefinedCard({
    required this.data,
    required this.onDelete,
    super.key,
  });

  final PredefinedData data;
  final VoidCallback onDelete;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 2, horizontal: 0),
      child: ListTile(
        dense: true,
        visualDensity: VisualDensity.compact,
        contentPadding: const EdgeInsets.only(left: 8),
        title: Text(
          data.predefined.toString(),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        subtitle: Text(data.data.toString()),
        trailing: IconButton(
          onPressed: onDelete,
          padding: EdgeInsets.zero,
          constraints: const BoxConstraints(),
          icon: const Icon(Icons.close),
        ),
      ),
    );
  }
}
