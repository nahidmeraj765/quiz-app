import 'package:flutter/material.dart';
import 'package:flutter_application_quiz_app/answer_button.dart';
import 'package:flutter_application_quiz_app/data/questions.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() {
    return _QuizScreenState();
  }
}

class _QuizScreenState extends State<QuizScreen> {
  @override
  Widget build(context) {
    final currentQuestion = questions[0];

    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            currentQuestion.questions,
            style: const TextStyle(color: Colors.white),
          ),
          const SizedBox(height: 30),
          AnswerButton(
            answerText: currentQuestion.answers[0],
            onTap: () {},
          ),
          const SizedBox(height: 30),
          AnswerButton(
            answerText: currentQuestion.answers[1],
            onTap: () {},
          ),
          const SizedBox(height: 30),
          AnswerButton(
            answerText: currentQuestion.answers[2],
            onTap: () {},
          ),
          const SizedBox(height: 30),
          AnswerButton(
            answerText: currentQuestion.answers[3],
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
