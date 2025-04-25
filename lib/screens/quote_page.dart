import 'package:flutter/material.dart';
import 'package:hvatning/models/quote_model.dart';
import 'dart:math';

class QuotePage extends StatefulWidget {
  const QuotePage({super.key});

  @override
  State<QuotePage> createState() => _QuotePageState();
}

class _QuotePageState extends State<QuotePage> {
  String _currentQuote = "";

  // Fall sem velur málshátt úr lista handahófskennt
  void _getNewQuote() {
    final random = Random();
    setState(() {
      _currentQuote = QuoteData.quotes[random.nextInt(QuoteData.quotes.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Fáðu málshátt í tilefni páskanna!",
                  style: theme.textTheme.headlineLarge?.copyWith(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 32),
                SizedBox(
                  width: 320,
                  height: 200,
                  child: Container(
                    padding: const EdgeInsets.all(24),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    child: AnimatedSwitcher(
                      duration: const Duration(milliseconds: 100),
                      child: Text(
                        _currentQuote,
                        key: ValueKey(_currentQuote),
                        style: theme.textTheme.bodyLarge?.copyWith(
                          fontWeight: FontWeight.w500,
                          color: Colors.black87,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                SizedBox(
                  width: 320,
                  child: FilledButton.icon(
                    onPressed: _getNewQuote,
                    icon: const Icon(Icons.refresh),
                    label: const Text("Nýr málsháttur"),
                    style: FilledButton.styleFrom(
                      backgroundColor: Colors.amber.shade800,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                      textStyle: theme.textTheme.bodyLarge?.copyWith(fontSize: 18),
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                Image.asset(
                  'assets/paskaegg.png',
                  width: 70,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}