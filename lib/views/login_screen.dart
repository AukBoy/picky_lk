// ignore_for_file: avoid_print

// Packages
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// Files
import '/helper/routes_helper.dart';
import '/utils/color_resources.dart';
import '/utils/image_paths.dart';
import 'widgets/input_box.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: ColorResources.loginBackgroundColor,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Row 01
              SizedBox(
                height: 150,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Image.asset(ImagePaths.logo)],
                ),
              ),

              // Row 02
              Column(
                children: [
                  InputBox(
                    feildName: "Email address",
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  InputBox(
                    feildName: "Password",
                  ),
                ],
              ),

              // Row 03
              SizedBox(
                height: 55,
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ColorResources.darkBlue,
                    foregroundColor: ColorResources.white,
                  ),
                  onPressed: () {
                    print("Login clicked");

                    // Navigate to the home screen
                    Get.toNamed(RouteHelper.gethomeScreen());
                  },
                  child: const Text("Login"),
                ),
              ),

              // Row 04
              const Align(
                alignment: Alignment.center,
                child: Text(
                  "if you don't have an account yet go to Register",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
