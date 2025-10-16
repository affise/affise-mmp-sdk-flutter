import 'package:flutter/material.dart';

class AffiseButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final String text;

  const AffiseButton({
    super.key,
    required this.onPressed,
    this.backgroundColor,
    this.foregroundColor,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor ?? Theme.of(context).colorScheme.surface,
        foregroundColor: foregroundColor ?? Theme.of(context).colorScheme.onSurface,
        shape:  const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
      ),
      child: Text(text),
    );
  }
}
