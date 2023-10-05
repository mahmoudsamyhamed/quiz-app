import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:adv_basics/data/my_questions.dart';
import 'button_style.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen(this.onSelectAns,{super.key});

  final void Function(String answer) onSelectAns;
  @override
  State<StatefulWidget> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  _QuestionsScreenState();

  int ansIdx = 0;

  void changeQuestion(String selectedAns) {
    widget.onSelectAns(selectedAns);
    setState(() {
      ansIdx++;
    });
  }

  @override
  Widget build(context) {

    var currQuestion = questions[ansIdx];

    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment : CrossAxisAlignment.stretch,
          children: [
            Text(
              currQuestion.text,
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 201, 153, 251),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),

            const SizedBox(
              height: 30,
            ),

            ...currQuestion.shuffledAnswers.map((item) {
              return ButtonStyles(
                item,
                () {
                  changeQuestion(item);
                }
              );
            }),
          ],
        ),
      ),
    );
  }
}
