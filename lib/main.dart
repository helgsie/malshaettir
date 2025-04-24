import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'screens/quote_page.dart';

void main() {
  runApp(const MalshatturApp());
}

final String fontFamily = defaultTargetPlatform == TargetPlatform.iOS ? 'SFPro' : 'Roboto';

class MalshatturApp extends StatelessWidget {
  const MalshatturApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Páskamálshættir',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.pink.shade300),
        fontFamily: 'SFPro',
        textTheme: TextTheme(
          bodyLarge: TextStyle(color: Colors.brown.shade600),
          bodyMedium: TextStyle(color: Colors.pink.shade600),
        ),
      ),
      home: const QuotePage(),
    );
  }
}
