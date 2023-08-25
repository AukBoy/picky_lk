// Packages
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

// Files
import '/utils/image_paths.dart';
import '/utils/color_resources.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PICKY.LK'),
        // Add any additional AppBar properties you need
      ),
      body: Container(color: ColorResources.white),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: ColorResources.white,
        color: ColorResources.darkBlue,
        items: [
          Icon(Icons.home, size: 30, color: ColorResources.white),
          Image.asset(ImagePaths.ticketsIcon, height: 25),
          Icon(Icons.notifications, size: 30, color: ColorResources.white),
          Icon(Icons.person, size: 30, color: ColorResources.white),
        ],
        onTap: (index) {},
      ),
    );
  }
}
