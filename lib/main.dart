import 'package:flutter/material.dart';

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
      home: const Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Text(
            "It'sDark Community",
            style: TextStyle(
              color: Colors.deepPurple,
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
