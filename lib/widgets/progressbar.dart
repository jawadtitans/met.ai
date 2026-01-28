// import 'package:flutter/material.dart';
//
// class DataSetupWizard extends StatefulWidget {
//   @override
//   _DataSetupWizardState createState() => _DataSetupWizardState();
// }
//
// class _DataSetupWizardState extends State<DataSetupWizard> {
//   int _currentStep = 0;
//
//   final List<Widget> _steps = [
//     QuestionPage(
//       title: "What is your height?",
//       inputType: TextInputType.number,
//     ),
//     QuestionPage(
//       title: "What is your weight?",
//       inputType: TextInputType.number,
//     ),
//     QuestionPage(title: "How old are you?", inputType: TextInputType.number),
//     QuestionPage(title: "What is your sex?", isToggle: true),
//     QuestionPage(
//       title: "Enter waist and hip size (optional)",
//       inputType: TextInputType.number,
//     ),
//     QuestionPage(title: "How active are you daily?", isDropdown: true),
//   ];
//
//   void _nextStep() {
//     if (_currentStep < _steps.length - 1) {
//       setState(() => _currentStep++);
//     } else {
//       // Submit data and run AI analysis
//       Navigator.push(context, MaterialPageRoute(builder: (_) => ResultPage()));
//     }
//
//     final int _totalSteps = 6;
//
//     void _nextStep() {
//       if (_currentStep < _totalSteps - 1) {
//         setState(() => _currentStep++);
//       } else {
//         // Go to result page or analysis
//         Navigator.push(
//           context,
//           MaterialPageRoute(builder: (_) => ResultPage()),
//         );
//       }
//     }
//
//     void _prevStep() {
//       if (_currentStep > 0) {
//         setState(() => _currentStep--);
//       }
//     }
//
//     @override
//     Widget build(BuildContext context) {
//       double progress = (_currentStep + 1) / _totalSteps;
//
//       return Scaffold(
//         appBar: AppBar(title: Text("Data Setup")),
//         body: Column(
//           children: [
//             // 🔥 Animated Progress Bar
//             Padding(
//               padding: const EdgeInsets.all(12.0),
//               child: TweenAnimationBuilder<double>(
//                 tween: Tween<double>(begin: 0, end: progress),
//                 duration: Duration(milliseconds: 400),
//                 curve: Curves.easeInOut,
//                 builder: (context, value, _) => LinearProgressIndicator(
//                   borderRadius: BorderRadius.circular(18),
//
//                   value: value,
//
//                   minHeight: 10,
//                   backgroundColor: Colors.grey.shade300,
//                   color: const Color.fromARGB(255, 0, 0, 0),
//                 ),
//               ),
//             ),
//
//             // Question page placeholder
//             Expanded(
//               child: Center(
//                 child: Text(
//                   "Question ${_currentStep + 1} of $_totalSteps",
//                   style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
//                 ),
//               ),
//             ),
//
//             // Navigation buttons
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 if (_currentStep > 0)
//                   ElevatedButton(onPressed: _prevStep, child: Text("Back")),
//                 ElevatedButton(
//                   onPressed: _nextStep,
//                   child: Text(
//                     _currentStep == _totalSteps - 1 ? "Finish" : "Next",
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(height: 12),
//           ],
//         ),
//       );
//     }
//   }
// }
