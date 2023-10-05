import 'package:flutter/material.dart';

class ButtonStyles extends StatelessWidget {
  const ButtonStyles(this.ans, this.changeQuestion, {super.key});

  final String ans;
  final void Function() changeQuestion;
  @override
  Widget build(context) {
    return ElevatedButton(
      onPressed: changeQuestion,
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 42, 4, 85),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      ),
      child: Text(
        ans,
        style: const TextStyle(
          fontSize: 15,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
