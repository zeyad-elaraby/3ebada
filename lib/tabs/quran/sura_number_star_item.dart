import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islami/my_theme_data.dart';

class SuraNumberStarItem extends StatelessWidget {
  SuraNumberStarItem({required this.number, super.key});
  int number;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
            // height: ,
            width: MediaQuery.of(context).size.height*0.07,
            height:MediaQuery.of(context).size.height*0.065,
            child: Center(child: Text(number.toString(),style: TextStyle(color: primaryColor),))),
        SvgPicture.asset(
          "assets/images/sura_number_star.svg",
          width: MediaQuery.of(context).size.height*0.07,
          colorFilter: ColorFilter.mode(
               Colors.white ,
              BlendMode.srcIn),
        ),
      ],
    );
  }
}
