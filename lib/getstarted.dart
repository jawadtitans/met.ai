import 'package:flutter/material.dart';
import 'package:jawadrahimi_contact_app/contact_page.dart';
import 'package:jawadrahimi_contact_app/main.dart';
import 'package:jawadrahimi_contact_app/widgets/compoents_intro.dart';
import 'package:jawadrahimi_contact_app/widgets/primary_button.dart';
import 'package:jawadrahimi_contact_app/widgets/titles_intro.dart';
import 'package:lottie/lottie.dart';
import 'getting_data/ui/container_page.dart';

class GetStartPage extends StatefulWidget {
  const GetStartPage({super.key});

  @override
  State<GetStartPage> createState() => _GetStartPageState();
}

class _GetStartPageState extends State<GetStartPage> {
  String selectedLanguage = "🇺🇸 en"; // persistent selected language

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand, // background fills whole screen
        children: [
          /// Background image
          Image.asset(
            "assets/img/ma.webp", // <-- put your image path
            fit: BoxFit.cover,
          ),

          /// Foreground content
          Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  LanguageButton(
                    selectedLanguage: selectedLanguage,
                    onLanguageChanged: (lang) {
                      setState(() => selectedLanguage = lang);
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Language set to $lang")),
                      );
                    },
                  ),
                  const SizedBox(height: 15),
                  MainButton(
                    title: "Get Started!",
                    onPressed: () {
                      Navigator.of(context).push(
                        PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) =>
                                  const QuestionPage(),
                          transitionsBuilder:
                              (context, animation, secondaryAnimation, child) {
                                const begin = Offset(1.0, 0.0);
                                const end = Offset.zero;
                                const curve = Curves.easeInOut;

                                var tween = Tween(
                                  begin: begin,
                                  end: end,
                                ).chain(CurveTween(curve: curve));

                                return SlideTransition(
                                  position: animation.drive(tween),
                                  child: child,
                                );
                              },
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
