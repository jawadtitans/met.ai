import 'package:flutter/material.dart';

import 'bottom_sheet_language.dart';

class LanguageButton extends StatelessWidget {
  final String selectedLanguage;
  final ValueChanged<String> onLanguageChanged;

  const LanguageButton({
    super.key,
    required this.selectedLanguage,
    required this.onLanguageChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 17),
        backgroundColor: Colors.white,
      ),
      onPressed: () {
        showModalBottomSheet(
          backgroundColor: const Color(0xFFf1f1f1),
          context: context,
          isScrollControlled: true,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
          ),
          builder: (context) => LanguageBottomSheet(
            selectedLanguage: selectedLanguage,
            onLanguageChanged: onLanguageChanged,
          ),
        );
      },
      child: Text(
        selectedLanguage,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: Colors.black,
        ),
      ),
    );
  }
}
