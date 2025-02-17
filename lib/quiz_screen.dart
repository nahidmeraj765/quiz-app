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
    return const SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Questions....",style: TextStyle(color: Colors.white)),
          SizedBox(height:30),
          AnswerButton(),
          SizedBox(height:30),
          AnswerButton(),
          SizedBox(height:30),
          AnswerButton(),
          SizedBox(height:30),
          AnswerButton(),
        ],
      ),
    );
  }
}
