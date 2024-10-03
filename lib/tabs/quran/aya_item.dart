import 'package:flutter/material.dart';
import 'package:islami/my_theme_data.dart';

class AyaItem extends StatelessWidget {
  String aya;
  int ayaNumber;
   AyaItem({required this.aya,required this.ayaNumber, super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: primaryColor)),
      child: Text(
        "[$ayaNumber] $aya ",
        style: MyThemeData.lightTheme.textTheme.bodySmall,
        textAlign: TextAlign.center,
      ),
    );
  }
}
