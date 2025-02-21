import 'package:flutter/material.dart';
import 'package:flutter_application_quiz_app/answer_button.dart';

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
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Questions....", style: TextStyle(color: Colors.white)),
          const SizedBox(height: 30),
          AnswerButton(
            answerText: "Answer 1",
            onTap: () {},
          ),
          const SizedBox(height: 30),
          AnswerButton(
            answerText: "Answer 2",
            onTap: () {},
          ),
          const SizedBox(height: 30),
          AnswerButton(
            answerText: "Answer 3",
            onTap: () {},
          ),
          const SizedBox(height: 30),
          AnswerButton(
            answerText: "Answer 4",
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
