import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
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
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        color: const Color.fromARGB(255, 2, 52, 138),
        items: [
          Icon(Icons.home, size: 30, color: Colors.white),
          Image.asset('assets/tickets.png', height: 25),
          Icon(Icons.notifications, size: 30, color: Colors.white),
          Icon(Icons.person, size: 30, color: Colors.white),
        ],
        onTap: (index) {},
      ),
      body: Container(color: const Color.fromARGB(255, 255, 255, 255)),
      appBar: AppBar(
        title: Text('PICKY.LK'),
        // Add any additional AppBar properties you need
      ),
    );
  }
}
