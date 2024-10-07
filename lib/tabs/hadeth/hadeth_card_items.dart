import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../my_theme_data.dart';
import 'hadeth_model.dart';

class HadethCardItems extends StatefulWidget {
  HadethCardItems({super.key});

  @override
  State<HadethCardItems> createState() => _HadethCardItemsState();
}

class _HadethCardItemsState extends State<HadethCardItems> {
  List<HadethModel> allAhadeth = [];
  @override
  void initState() {
    readHadethData();
  }

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return allAhadeth.isEmpty
        ? Center(
            child: CircularProgressIndicator(),
          )
        : CarouselSlider.builder(
            itemCount: allAhadeth.length,
            itemBuilder: (BuildContext context, int index, int realIndex) {
              return Container(
                height: screenHeight * 0.6,
                width: screenWidth * 0.8,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: primaryColor,
                ),
                child: Stack(
                  children: [
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(height: screenHeight * 0.01),
                          Image.asset(
                            "assets/images/HadithCardBackGround.png",
                            height: screenHeight * 0.4,
                            width: screenWidth * 0.5,
                            opacity: const AlwaysStoppedAnimation(.11),
                          ),
                          ColorFiltered(
                              colorFilter: ColorFilter.mode(
                                  Colors.black, BlendMode.srcIn),
                              child: Image.asset(
                                "assets/images/page_down_mosque.png",
                                height: screenHeight * 0.1,
                                opacity: AlwaysStoppedAnimation(.3),
                              )),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: screenWidth * 0.05,
                          vertical: screenHeight * 0.03),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ColorFiltered(
                                  colorFilter: ColorFilter.mode(
                                      Colors.black, BlendMode.srcIn),
                                  child: Image.asset(
                                    "assets/images/left_corner.png",
                                    width: screenWidth * 0.1, // Adjust width
                                    fit: BoxFit.contain,
                                  )),
                              Text(
                                "${allAhadeth[index].title}",
                                style: MyThemeData
                                    .lightTheme.textTheme.labelMedium!
                                    .copyWith(color: Colors.black),
                              ),
                              ColorFiltered(
                                  colorFilter: ColorFilter.mode(
                                      Colors.black, BlendMode.srcIn),
                                  child: Image.asset(
                                    "assets/images/right_corner.png",
                                    width: screenWidth * 0.1, // Adjust width
                                    fit: BoxFit.contain,
                                  )),
                            ],
                          ),
                          Expanded(
                              child: SingleChildScrollView(
                                  child: Text(
                            "${allAhadeth[index].content}",
                            style: MyThemeData.lightTheme.textTheme.bodySmall!
                                .copyWith(color: Colors.black, fontSize: 13),
                            textAlign: TextAlign.center,
                          ))),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
            options: CarouselOptions(
                height: screenHeight * 0.6,
                viewportFraction: 1,
                enlargeCenterPage: true),
          );
  }

  readHadethData() async {
    String hadethData = await rootBundle.loadString("assets/files/ahadeth.txt");
    List<String> ahadethList = hadethData.split("#");
    for (int i = 0; i < ahadethList.length; i++) {
      String singleHadeth = ahadethList[i];
      List<String> hadethLines = singleHadeth.trim().split("\n");
      String title = hadethLines[0];
      hadethLines.removeAt(0);
      String content = hadethLines.join("\n");
      HadethModel hadethModel = HadethModel(title: title, content: content);
      setState(() {
        allAhadeth.add(hadethModel);
      });
    }
  }
}
