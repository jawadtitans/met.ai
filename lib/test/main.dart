import 'package:flutter/material.dart';
import 'package:jawadrahimi_contact_app/test/route.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SharedPreferences prefs = await SharedPreferences.getInstance();
  String? token = prefs.getString("token");

  runApp(MyApp(startPage: token == null ? "/" : "/home"));
}

class MyApp extends StatelessWidget {
  final String startPage;
  const MyApp({required this.startPage});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(routerConfig: AppRouter.router(startPage));
  }
}
