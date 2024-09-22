import 'package:flutter/material.dart';

class IntroScreen1 extends StatelessWidget {
  const IntroScreen1({super.key});

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
            "assets/images/intro_screen_1_image.png",
            height: 250,
            width: 300,
          ),
        ],
      ),
    );
  }
}
