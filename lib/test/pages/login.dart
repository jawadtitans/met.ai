import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jawadrahimi_contact_app/test/pages/auth_service.dart';
import 'package:jawadrahimi_contact_app/test/pages/db_helper.dart';
import 'package:jawadrahimi_contact_app/test/pages/storage_shared_preference.dart';
import 'package:jawadrahimi_contact_app/test/pages/user_model.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _username = TextEditingController();
  final _password = TextEditingController();

  final authService = AuthService();
  final storage = StorageService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login Page")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _username,
                decoration: const InputDecoration(labelText: "Username"),
                validator: (value) =>
                    value!.isEmpty ? "Username required" : null,
              ),
              TextFormField(
                controller: _password,
                obscureText: true,
                decoration: const InputDecoration(labelText: "Password"),
                validator: (value) =>
                    value!.length < 6 ? "Min 6 characters needed" : null,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    String? token = await authService.login(
                      _username.text,
                      _password.text,
                    );

                    if (token != null) {
                      // Save token in SharedPreferences
                      await storage.saveToken(token);

                      // Save user in SQLite
                      await DatabaseHelper.instance.insertUser(
                        UserModel(
                          username: _username.text,
                          email: "${_username.text}@gmail.com",
                        ),
                      );

                      // Navigate with GoRouter + pass data
                      if (context.mounted) {
                        context.go('/home', extra: _username.text);
                      }
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text("Invalid credentials")),
                      );
                    }
                  }
                },
                child: const Text("Login"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
