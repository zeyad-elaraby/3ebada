import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/my_theme_data.dart';
import 'package:islami/tabs/hadeth/hadeth_card_items.dart';
import 'package:islami/tabs/hadeth/hadeth_model.dart';

class HadethTab extends StatefulWidget {
  HadethTab({super.key});

  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {


  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Image.asset(
          "assets/images/hadeth_tab_background.jpg",
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.fill,
        ),
        Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(color: Colors.black.withOpacity(0.7)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: screenHeight * 0.05 ,),
              Image.asset(
                "assets/images/hadith_image_up.png",
                width: screenWidth * 0.9,
                height: screenHeight * 0.15,
              ),
              Expanded(
                child: HadethCardItems()
              )
            ],
          ),
        )
      ],
    );
  }


}
