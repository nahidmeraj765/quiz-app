import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset("assets/images/quiz-logo.png",
              width: 300, color: const Color.fromARGB(149, 255, 255, 255)),
          const SizedBox(height: 80),
          Text(
            "Learn Flutter the Fun Way!",
            style: GoogleFonts.ubuntu(
              color: Colors.white,
              fontSize: 28,
            ),
          ),
          const SizedBox(height: 40),
          OutlinedButton.icon(
            onPressed: () {
              startQuiz();
            },
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            icon: const Icon(Icons.arrow_right_alt),
            label: Text(
              "Start Quiz",
              style: GoogleFonts.teko(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
