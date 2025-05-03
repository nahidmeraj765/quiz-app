import 'package:flutter/material.dart';
import 'package:flutter_application_quiz_app/results_screen.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData,{super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: summaryData.map(
        (data){
          return Row(children: [
            Text(((data['questions_index'] as int) + 1).toString()),
          ]);
      }
      ).toList(),
    );
  }
}
