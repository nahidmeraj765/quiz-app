import 'package:flutter/material.dart';
import 'package:flutter_application_quiz_app/data/questions.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.chooseAnswers});

  final List<String> chooseAnswers;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chooseAnswers.length; i++) {
      summary.add({
        'questions_index' : i,
        'questions' : questions[i].questions,
        'correct_answers' : questions[i].answers[0],
        'user_answers' : chooseAnswers[i],
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: Container(
          margin: const EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("You answered X out of Y questions correctly!"),
              const SizedBox(
                height: 30,
              ),
              const Text("List of answers and questions..."),
              const SizedBox(
                height: 30,
              ),
              TextButton(onPressed: () {}, child: const Text("Restart Quiz!")),
            ],
          ),
        ));
  }
}
