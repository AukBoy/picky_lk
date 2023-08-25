// Packages
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

// Files
import '/utils/image_paths.dart';
import '/utils/color_resources.dart';
import 'main_screens//home_widget.dart';
import 'main_screens//notification_widget.dart';
import 'main_screens//profile_widget.dart';
import 'main_screens//tickets_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _page = 0;

  // List of widgets to be displayed for each navigation item
  final List<Widget> _pageWidgets = [
    // Widget for Home

    const HomeWidget(),

    // Widget for Tickets
    const TicketsWidget(),

    // Widget for Notifications
    const NotificationsWidget(),

    // Widget for Profile
    const ProfileWidget(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PICKY.LK'),
        // Add any additional AppBar properties you need
      ),
      body: _pageWidgets[_page],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: ColorResources.white,
        color: ColorResources.darkBlue,
        items: [
          Icon(Icons.home, size: 30, color: ColorResources.white),
          Image.asset(ImagePaths.ticketsIcon, height: 25),
          Icon(Icons.notifications, size: 30, color: ColorResources.white),
          Icon(Icons.person, size: 30, color: ColorResources.white),
        ],
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
        letIndexChange: (index) => true,
      ),
    );
  }
}
