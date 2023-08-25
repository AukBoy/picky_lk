// Packages
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// Files
import 'helper/routes_helper.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // Initial route of the app
      initialRoute: RouteHelper.getloginScreen(),
      // Other routes of the app
      getPages: RouteHelper.routes,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
