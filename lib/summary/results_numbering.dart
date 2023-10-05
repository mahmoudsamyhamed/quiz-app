import 'package:flutter/material.dart';

class ResultNumber extends StatelessWidget {
  const ResultNumber(this.questionIndex, this.isCorrect, {super.key});

  final int questionIndex;
  final bool isCorrect;
  @override
  Widget build(context) {
    return Container(
      width: 40,
      height: 40,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: (isCorrect)
            ? const Color.fromARGB(255, 150, 198, 241)
            : const Color.fromARGB(255, 249, 133, 241),
        
        borderRadius: BorderRadius.circular(100),
      ),
      child: Text(
        questionIndex.toString(),
        textAlign: TextAlign.left,
        style: const TextStyle(
          color: Color.fromARGB(255, 35, 2, 61),
          fontSize: 25,
        ),
      ),
    );
  }
}
