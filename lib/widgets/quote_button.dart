import 'package:flutter/material.dart';

class QuoteButton extends StatelessWidget {
  final VoidCallback onPressed;

  const QuoteButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return FilledButton.icon(
      onPressed: onPressed,
      icon: const Icon(Icons.refresh, size: 20),
      label: const Text("Nýr málsháttur"),
      style: FilledButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        backgroundColor: theme.colorScheme.secondary,
        textStyle: theme.textTheme.bodyMedium?.copyWith(fontSize: 18),
      ),
    );
  }
}