import 'package:assignment/screens/bottom_navigation/bottom_nav.dart';
import 'package:assignment/screens/dashboard/dashboard_screen.dart';
import 'package:flutter/material.dart';

import 'package:assignment/constants/assets_images.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      Future.delayed(const Duration(seconds: 2), () async {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const BottomBarScreen(),
            ));
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Image.asset(
            appLogo,
            alignment: Alignment.center,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
