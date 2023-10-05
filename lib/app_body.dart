import 'package:flutter/material.dart';
import 'main_text.dart';

class AppBody extends StatelessWidget {
  const AppBody(this.start, {super.key});

  final String img = 'assets/images/quiz-logo.png';

  final void Function() start;
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(162, 255, 255, 255),
          ),
          
          const SizedBox(
            height: 80,
          ),

          const MainText(),

          const SizedBox(
            height: 40,
          ),

          OutlinedButton.icon(
            onPressed: start,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            label: const Text('Start Quiz'),
            icon: const Icon(
              Icons.not_started_outlined,
            ),
          ),
        ],
      ),
    );
  }
}
