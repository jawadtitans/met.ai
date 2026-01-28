import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jawadrahimi_contact_app/getting_data/ui/widget/answer_option.dart';
import 'package:jawadrahimi_contact_app/getting_data/ui/widget/model.dart';

class QuestionPage extends StatefulWidget {
  const QuestionPage({super.key});

  @override
  State<QuestionPage> createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;
  List<Question> questions = [];

  @override
  void initState() {
    super.initState();
    loadQuestions();
  }

  Future<void> loadQuestions() async {
    final String jsonString = await rootBundle.loadString(
      'assets/icon/questions.json',
    );
    final List<dynamic> jsonData = json.decode(jsonString);
    setState(() {
      questions = jsonData.map((q) => Question.fromJson(q)).toList();
    });
  }

  void _nextPage() {
    if (_currentIndex < questions.length - 1) {
      _currentIndex++;
      _pageController.animateToPage(
        _currentIndex,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
      setState(() {});
    }
  }

  void _prevPage() {
    if (_currentIndex > 0) {
      // Move to previous question
      _currentIndex--;
      _pageController.animateToPage(
        _currentIndex,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
      setState(() {});
    } else {
      // If already at the first page, go back to GetStarted page
      Navigator.pop(context); // or Navigator.pushReplacement if you want
    }
  }

  @override
  Widget build(BuildContext context) {
    final progress = questions.isEmpty
        ? 0.0
        : (_currentIndex + 1) / questions.length;

    return Scaffold(
      backgroundColor: const Color(0xFFf1f1f1),
      body: SafeArea(
        child: Column(
          children: [
            // Top bar: back + progress
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              child: Row(
                children: [
                  IconButton(
                    onPressed: _prevPage,
                    icon: const Icon(Icons.arrow_back),
                    style: IconButton.styleFrom(backgroundColor: Colors.white),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: TweenAnimationBuilder<double>(
                        tween: Tween<double>(begin: 0, end: progress),
                        duration: const Duration(
                          milliseconds: 600,
                        ), // smoother time
                        curve: Curves.easeInOut, // smooth easing
                        builder: (context, value, _) => LinearProgressIndicator(
                          value: progress, // <-- use animated value here
                          minHeight: 5,
                          backgroundColor: Colors.grey.shade300,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(width: 10),
                  Text("${_currentIndex + 1}/${questions.length}"),
                ],
              ),
            ),

            // PageView Questions
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: questions.length,
                itemBuilder: (context, index) {
                  final q = questions[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24.0,
                      vertical: 20,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          q.question,
                          style: const TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        if (q.subtitle.isNotEmpty)
                          Text(
                            q.subtitle,
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.black45,
                            ),
                          ),
                        const SizedBox(height: 25),
                        // Expanded scrollable answers
                        Expanded(
                          child: ListView.builder(
                            itemCount: q.answers.length,
                            itemBuilder: (context, aIndex) {
                              final answer = q.answers[aIndex];
                              // Use fade animation for answers
                              return AnimatedOpacity(
                                duration: Duration(
                                  milliseconds: 300 + aIndex * 100,
                                ),
                                opacity: 1,
                                child: buildAnswerOption(answer, aIndex),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),

            // Bottom Next Button
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  padding: const EdgeInsets.symmetric(vertical: 18),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(28),
                  ),
                ),
                onPressed: _currentIndex < questions.length - 1
                    ? _nextPage
                    : () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text("All questions completed!"),
                          ),
                        );
                      },
                child: Text(
                  _currentIndex < questions.length - 1 ? "Next" : "Finish",
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
