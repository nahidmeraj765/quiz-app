import 'package:flutter/material.dart';
import 'package:flutter_application_quiz_app/data/questions.dart';
import 'package:flutter_application_quiz_app/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.chooseAnswers});

  final List<String> chooseAnswers;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chooseAnswers.length; i++) {
      summary.add({
        'questions_index': i,
        'questions': questions[i].questions,
        'correct_answers': questions[i].answers[0],
        'user_answers': chooseAnswers[i],
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numOfTotalQuestions = questions.length;
    final numOfCorrectAnswers = summaryData.where((data) {
      return data['correct_questions'] == data['user_answers'];
    }).length;

    return SizedBox(
        width: double.infinity,
        child: Container(
          margin: const EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "You answered $numOfCorrectAnswers out of $numOfTotalQuestions questions correctly!",
              ),
              const SizedBox(
                height: 30,
              ),
              QuestionsSummary(summaryData),
              const SizedBox(
                height: 30,
              ),
              TextButton(onPressed: () {}, child: const Text("Restart Quiz!")),
            ],
          ),
        ),
        );
  }
}
