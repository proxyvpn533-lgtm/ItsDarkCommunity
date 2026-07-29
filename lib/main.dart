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
      title: "It's Dark",
      theme: ThemeData.dark(),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("It's Dark"),
        actions: const [
          Icon(Icons.notifications),
          SizedBox(width: 15),
          Icon(Icons.settings),
          SizedBox(width: 15),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 45,
              backgroundImage: AssetImage("assets/logo.png"),
            ),
            const SizedBox(height: 15),
            const Text(
              "Welcome to It's Dark",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 25),
            Card(
              child: ListTile(
                leading: Icon(Icons.play_circle_fill),
                title: Text("Latest Shorts"),
                subtitle: Text("Watch your latest uploads"),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.favorite),
                title: Text("Favourite"),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.info),
                title: Text("More Functions"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
