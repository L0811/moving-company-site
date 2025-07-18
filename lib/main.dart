import 'package:flutter/material.dart';
import 'package:moving_company_site/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LIFT & LOAD',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 10, 27, 47),
          brightness: Brightness.light,
        ),
        scaffoldBackgroundColor: Colors.grey[100],
        appBarTheme: AppBarTheme(
          // backgroundColor: const Color.fromARGB(255, 94, 130, 168),
          // foregroundColor: Colors.white,
          backgroundColor: const Color.fromARGB(255, 143, 113, 6),
          foregroundColor: const Color.fromARGB(255, 5, 0, 0),
          elevation: 2,
          titleTextStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        textTheme: const TextTheme(
          headlineLarge: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          titleMedium: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          bodyMedium: TextStyle(fontSize: 16),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            // backgroundColor: const Color.fromARGB(255, 94, 130, 168),
            // foregroundColor: Colors.white,
            backgroundColor: const Color.fromARGB(255, 143, 113, 6),
            foregroundColor: const Color.fromARGB(255, 5, 0, 0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
            textStyle: const TextStyle(fontSize: 16),
          ),
        ),
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}
