import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset("assets/images/quiz-logo.png", width: 300),
          const SizedBox(height: 80),
          const Text(
            "Learn Flutter the Fun Way!",
            style: TextStyle(color: Colors.white, fontSize: 28),
          ),
          const SizedBox(height: 40),
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            child: const Text("Start Quiz"),
          ),
        ],
      ),
    );
  }
}
