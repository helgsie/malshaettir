import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'screens/quote_page.dart';
import 'package:google_fonts/google_fonts.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber.shade400),
        scaffoldBackgroundColor: Colors.amber.shade400,
        textTheme: TextTheme(
          headlineLarge: GoogleFonts.lato(fontSize: 26, fontWeight: FontWeight.bold),
          bodyLarge: GoogleFonts.lato(fontSize: 20),
        ),
      ),
      home: const QuotePage(),
    );
  }
}
