import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const ItsDarkApp());
}

class ItsDarkApp extends StatelessWidget {
  const ItsDarkApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "It'sDark Community",
      theme: ThemeData.dark(),
      home: const HomeScreen(),
    );
  }
}
