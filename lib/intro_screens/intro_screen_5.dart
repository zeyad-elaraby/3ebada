import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/my_theme_data.dart';

class IntroScreen5 extends StatelessWidget {
  const IntroScreen5({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF202020),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Image.asset(
            "assets/images/islami_image.png",
            height: 200,
            width: 200,
          ),
          Image.asset(
            "assets/images/radio_intro.png",
            height: 250,
            width: 300,
          ),
          Text(
            "Holy Quran Radio",
            style: GoogleFonts.amarante(
                fontSize: 24, fontWeight: FontWeight.w600, color: primaryColor),
          ),
          Text(
            "You can listen to the Holy Quran Radio through the application for free and easily",
            style: GoogleFonts.amarante(
                fontSize: 18, fontWeight: FontWeight.w300, color: primaryColor),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
