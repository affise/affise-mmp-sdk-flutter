import 'package:flutter/material.dart';

Future<void> showAlert(BuildContext context, {required String title, required String text}) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: true,
    builder: (BuildContext context) {
      return AlertDialog(
        elevation: 8,
        shadowColor: Theme.of(context).colorScheme.surfaceTint.withValues(alpha: 0.2),
        title: Text(title),
        content: Text(text),
        actions: <Widget>[
          TextButton(
            child: const Text('Ok'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
