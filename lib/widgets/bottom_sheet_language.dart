import 'package:flutter/material.dart';

// Language selection bottom sheet
class LanguageBottomSheet extends StatefulWidget {
  final String selectedLanguage;
  final ValueChanged<String> onLanguageChanged;

  const LanguageBottomSheet({
    super.key,
    required this.selectedLanguage,
    required this.onLanguageChanged,
  });

  @override
  State<LanguageBottomSheet> createState() => _LanguageBottomSheetState();
}

class _LanguageBottomSheetState extends State<LanguageBottomSheet> {
  late String currentSelected;

  final List<String> languages = [
    "🇺🇸 English",
    "🇦🇫 Dari",
    "🇦🇫 Pashto",
    "🇫🇷 French",
    "🇩🇪 German",
    "🇮🇳 Hindi",
    "🇯🇵 Japanese",
    "🇨🇳 Chinese",
    "🇹🇷 Turkish",
    "🇦🇪 Arabic",
  ];

  @override
  void initState() {
    super.initState();
    currentSelected = widget.selectedLanguage;
  }

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      expand: false,
      initialChildSize: 0.94,
      minChildSize: 0.3,
      maxChildSize: 0.95,
      builder: (context, scrollController) {
        return Column(
          children: [
            _buildHeader(context),
            Expanded(
              child: ListView.builder(
                controller: scrollController,
                itemCount: languages.length,
                itemBuilder: (context, index) {
                  final lang = languages[index];
                  final isSelected = currentSelected == lang;
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 6,
                    ),
                    child: Material(
                      color: isSelected
                          ? const Color(0xFF231F20)
                          : Colors.white,
                      borderRadius: BorderRadius.circular(17),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(17),
                        onTap: () {
                          setState(() => currentSelected = lang);
                          widget.onLanguageChanged(lang);
                          Navigator.pop(context);
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            vertical: 20,
                            horizontal: 16,
                          ),
                          width: double.infinity,
                          child: Text(
                            lang,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: isSelected ? Colors.white : Colors.black87,
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 17),
      child: Row(
        children: [
          Expanded(
            child: Center(
              child: const Text(
                "Interface Language",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ),
          ),
          IconButton(
            style: IconButton.styleFrom(backgroundColor: Colors.white),
            icon: const Icon(Icons.close, size: 19),
            onPressed: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }
}
