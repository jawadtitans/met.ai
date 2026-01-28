import 'package:flutter/material.dart';
import 'package:jawadrahimi_contact_app/test/pages/db_helper.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:go_router/go_router.dart';

class VerifyPage extends StatelessWidget {
  final String username;
  const VerifyPage({required this.username});

  Future<void> saveLoginData(BuildContext context) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    // Save fake token
    await prefs.setString("token", "TOKEN_123456");
    await prefs.setString("username", username);

    // Save into SQLite DB
    // await DatabaseHelper.instance.insertUser(
    // UserModel(username: username, email: );
    // Navigate
    // context.go('/home', extra: username);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Verify Login")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Welcome $username", style: TextStyle(fontSize: 22)),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => saveLoginData(context),
              child: Text("Go to Home"),
            ),
          ],
        ),
      ),
    );
  }
}
