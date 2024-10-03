import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/my_theme_data.dart';
import 'package:islami/tabs/quran/aya_item.dart';
import 'package:islami/tabs/quran/sura_model.dart';

class SuraDetails extends StatefulWidget {
  SuraDetails({super.key});
  static const String routeName = "sura_details";

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    SuraModel model = ModalRoute.of(context)!.settings.arguments as SuraModel;
    readSuraData(model.index);
    return Scaffold(
      appBar: AppBar(
        title:
            Text(model.suraNameEnglish, style: MyThemeData.lightTheme.textTheme.titleSmall),
        iconTheme: IconThemeData(color: primaryColor),
        centerTitle: true,
        backgroundColor: backgroundColor,
        toolbarHeight: MediaQuery.of(context).size.height * 0.044,
      ),
      backgroundColor: backgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(
      horizontal: MediaQuery.of(context).size.width * 0.03

    ),

              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      "assets/images/left_corner.png",
                      height: MediaQuery.of(context).size.height * 0.15,
                      width: MediaQuery.of(context).size.width * 0.15,
                    ),
                    Text(
                      model.suraNameArabic,
                      style: MyThemeData.lightTheme.textTheme.headlineLarge
                    ),
                    Image.asset(
                      "assets/images/right_corner.png",
                      height: MediaQuery.of(context).size.height * 0.15,
                      width: MediaQuery.of(context).size.width * 0.15,
                    ),
                  ],
                ),
                Expanded(
                  child: ListView.separated(
                    itemBuilder: (BuildContext context, int index) {
                      return AyaItem(
                        aya: verses[index],
                        ayaNumber: index + 1,
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        height: 10,
                      );
                    },
                    itemCount: verses.length,
                  ),
                ),
              ]),
            ),
          ),
          Image.asset("assets/images/page_down_mosque.png",)
        ],
      ),
    );
  }

  void readSuraData(int suraIndex) async {
    String suraData =
        await rootBundle.loadString("assets/files/${suraIndex + 1}.txt");
    List<String> suraLines = suraData.trim().split("\n");
    setState(() {
      verses = suraLines;
    });
  }
}
