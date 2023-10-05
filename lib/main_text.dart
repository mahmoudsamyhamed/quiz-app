import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainText extends StatelessWidget {
  const MainText({super.key});

  @override
  Widget build(context) {
    return Text(
      "Learn Flutter the fun way!!",
      style: GoogleFonts.lato(
        fontSize: 24,
        color: const Color.fromARGB(255, 255, 255, 255),
      ),
    );
  }
}
