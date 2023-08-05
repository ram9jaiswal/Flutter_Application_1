import 'package:flutter/material.dart';
import 'package:flutter_application_1/user_profile/edit_profile_screen.dart';
import 'package:flutter_application_1/user_profile/profile_screen.dart';

import 'auth/login_screen.dart';
import 'auth/signup_screen.dart';
import 'dashboard_screens/home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // final TextEditingController emailController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    checkScreen();
  }

  void checkScreen() {
    Future.delayed(const Duration(seconds: 3), () async {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>  MyHomePage(),));
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
          child: FlutterLogo(
        size: 50,
      )),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    // emailController.dispose();
  }
}
