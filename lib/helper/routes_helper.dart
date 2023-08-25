import 'package:get/get.dart';

// imports
import 'package:picky_lk/views/home_screen.dart';
import 'package:picky_lk/views/auth_screens/login_screen.dart';

class RouteHelper {
  // Custom paths for the routes
  static const String homeScreen = '/home_screen';
  static const String loginScreen = '/login_screen';

  // Methods to handle the routes
  static gethomeScreen() => homeScreen;
  static getloginScreen() => loginScreen;

  // Actual routes
  static List<GetPage> routes = [
    GetPage(name: homeScreen, page: () => const HomeScreen()),
    GetPage(name: loginScreen, page: () => const LoginScreen()),
  ];
}
