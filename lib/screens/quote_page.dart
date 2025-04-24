import 'package:flutter/material.dart';
import 'package:hvatning/models/quote_model.dart';
import 'package:hvatning/widgets/quote_button.dart';
import 'dart:math';

class QuotePage extends StatefulWidget {
  const QuotePage({super.key});

  @override
  State<QuotePage> createState() => _QuotePageState();
}

class _QuotePageState extends State<QuotePage> {
  String _currentQuote = "Fáðu málshátt í tilefni páskanna!";

  // Fall sem velur málshátt úr lista handahófskennt
  void _getNewQuote() {
    final random = Random();
    setState(() {
      _currentQuote = QuoteData.quotes[random.nextInt(QuoteData.quotes.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Páskamálshættir"),
        centerTitle: true,
        backgroundColor: theme.colorScheme.primaryContainer,
        elevation: 10,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedSwitcher(
                duration: const Duration(milliseconds: 100),
                child: Text(
                  _currentQuote,
                  key: ValueKey(_currentQuote),
                  style: theme.textTheme.bodyLarge?.copyWith(
                    fontSize: screenWidth > 600 ? 24 : 18,
                    color: theme.colorScheme.onSurface,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 40),
              QuoteButton(onPressed: _getNewQuote),
              const SizedBox(height: 40),
              Image.asset(
                'assets/paskaegg.png',
                width: 70,
              ),
            ],
          ),
        ),
      )
    );
  }
}