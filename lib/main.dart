import 'package:flutter/material.dart';
import 'package:jawadrahimi_contact_app/contact_page.dart';
import 'package:jawadrahimi_contact_app/splash.dart';
import 'package:jawadrahimi_contact_app/widgets/inputs.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'getstarted.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      themeAnimationCurve: Curves.easeInOut,
      themeAnimationDuration: Duration(microseconds: 500),
      themeAnimationStyle: AnimationStyle(
        curve: Curves.easeInOut,
        duration: Duration(milliseconds: 500),
      ),
      routes: {"/getstart": (context) => GetStartPage()},
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "Poppins",
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const SplashScreen(),
    );
  }
}

//  class cotact to manage the crud operations:

// lets create on a new view for adding a new contact:
