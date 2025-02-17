import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({super.key});

  @override
  Widget build(context) {
    return ElevatedButton(
      onPressed: () {}, 
      style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 18, 188, 165), foregroundColor: const Color.fromARGB(255, 255, 255, 255)),
      child: const Text("Answer")
      );
  }
}
