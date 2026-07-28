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
      title: 'ItsDark Community',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF111827),
        primaryColor: const Color(0xFF8E2FFF),
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF111827),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('Hello,', style: TextStyle(fontSize: 12, color: Colors.grey)),
            Text('ItsDark Army 👋', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
          ],
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 16),
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: const Color(0xFF1E1E27),
              shape: BoxShape.circle,
              border: Border.all(color: const Color(0xFF8E2FFF).withOpacity(0.4)),
            ),
            child: const Icon(Icons.notifications_none, color: Colors.white, size: 20),
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Top Banner Card
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Color(0xFF5E17EB), Color(0xFF8E2FFF)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: const Color(0xFF8E2FFF).withOpacity(0.5)),
              ),
              child: Column(
                children: [
                  const Text('Thanks for being a part of the community! ❤️', style: TextStyle(fontSize: 11, color: Colors.white70)),
                  const SizedBox(height: 8),
                  const Text('NEW SHORT OUT NOW!', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.white)),
                  const SizedBox(height: 12),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF8E2FFF),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                    ),
                    onPressed: () {},
                    child: const Text('▶  Watch Now', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                  )
                ],
              ),
            ),
            const SizedBox(height: 24),

            // Quick Actions Header
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('Quick Actions', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white)),
                Text('See All', style: TextStyle(fontSize: 12, color: Color(0xFF8E2FFF))),
              ],
            ),
            const SizedBox(height: 12),

            // Quick Actions Grid
            GridTileBar(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildActionCard(Icons.warning_amber_rounded, 'Report Issue', Colors.redAccent),
                  _buildActionCard(Icons.lightbulb_outline, 'Suggestion', Colors.amber),
                  _buildActionCard(Icons.card_giftcard, 'Request', Colors.lightBlueAccent),
                  _buildActionCard(Icons.send_rounded, 'Contact Me', const Color(0xFF8E2FFF)),
                ],
              ),
            ),
            const SizedBox(height: 30),

            // Submit Button
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF8E2FFF),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                ),
                onPressed: () {},
                child: const Text('Submit Request', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15)),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFF0B0F19),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color(0xFF8E2FFF),
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.assignment_outlined), label: 'Requests'),
          BottomNavigationBarItem(icon: Icon(Icons.add_circle, size: 35, color: Color(0xFF8E2FFF)), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.notifications_none), label: 'Notifications'),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: 'Profile'),
        ],
      ),
    );
  }

  static Widget _buildActionCard(IconData icon, String label, Color iconColor) {
    return Container(
      width: 75,
      padding: const EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        color: const Color(0xFF1E1E27),
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: Colors.white10),
      ),
      child: Column(
        children: [
          Icon(icon, color: iconColor, size: 22),
          const SizedBox(height: 6),
          Text(label, style: const TextStyle(fontSize: 9, color: Colors.white70), textAlign: TextAlign.Center),
        ],
      ),
    );
  }
}
