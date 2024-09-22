import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/colors.dart';

class IntroScreen4 extends StatelessWidget {
  const IntroScreen4({super.key});

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
            "assets/images/duaa_intro.png",
            height: 250,
            width: 300,
          ),
          Text(
            "Bearish",
            style: GoogleFonts.amarante(
                fontSize: 24, fontWeight: FontWeight.w600, color: primaryColor),
          ),
          Text(
            "Praise the name of your Lord, the Most High",
            style: GoogleFonts.amarante(
              fontSize: 18,
              fontWeight: FontWeight.w300,
              color: primaryColor,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
