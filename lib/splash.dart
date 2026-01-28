import 'dart:async';
import 'package:flutter/material.dart';
import 'package:jawadrahimi_contact_app/main.dart';

import 'getstarted.dart';
// your main contact page

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(milliseconds: 2300), () {
      Navigator.pushReplacement(
        context,
        PageRouteBuilder(
          transitionDuration: const Duration(
            milliseconds: 1000,
          ), // animation time
          pageBuilder: (context, animation, secondaryAnimation) =>
              GetStartPage(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            // Fade In + Fade Out Animation
            return FadeTransition(opacity: animation, child: child);
          },
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Center content
          Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: EdgeInsets.all(2),
                  child: Image.asset(
                    "assets/icon/apps.png",
                    width: 70,
                    height: 70,
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(width: 0), // Space between image and text
                Padding(
                  padding: const EdgeInsets.only(top: 12.0),
                  child: Text(
                    "Met AI",
                    style: TextStyle(
                      fontSize: 57,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Bottom branding
          Positioned(
            bottom: 40,
            left: 0,
            right: 0,
            child: Center(
              child: Text(
                "RBS-Technology",
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey.shade400,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//  this is the lottie file for many of the ingine in the first section actually at the basic file of maintaince on boarding.
