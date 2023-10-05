import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'results_numbering.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.getSummary, {super.key});

  final List<Map<String, Object>> getSummary;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: getSummary.map((item) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
                ResultNumber((item['question_index'] as int) + 1, item['user_ans'] == item['correct_ans']),

                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item['question'] as String,
                        textAlign: TextAlign.left,
                        style: GoogleFonts.lato(
                          fontSize: 20,
                          color: const Color.fromARGB(255, 233, 218, 218),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        item['user_ans'] as String,
                        textAlign: TextAlign.left,
                        style: GoogleFonts.lato(
                          fontSize: 17,
                          color: const Color.fromARGB(255, 163, 144, 168),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        item['correct_ans'] as String,
                        textAlign: TextAlign.left,
                        style: GoogleFonts.lato(
                          fontSize: 17,
                          color: const Color.fromARGB(255, 145, 214, 226),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                    ],
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
