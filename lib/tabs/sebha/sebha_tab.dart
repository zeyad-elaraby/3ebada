import 'package:flutter/material.dart';

class SebhaTab extends StatefulWidget {
  const SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  double angle = 0;
  List<String> azkar = [
    "سبحان الله",
    "الحمدلله",
    "لا اله الا الله",
    "الله اكبر",
  ];
  int index = 0;
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Image.asset(
          "assets/images/sebha_tab_background.png",
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Container(
          decoration: BoxDecoration(color: Colors.black.withOpacity(0.7)),
          height: double.infinity,
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(
                height: screenHeight * 0.05,
              ),
              Image.asset(
                "assets/images/sebha_tab_logo.png",
                width: screenWidth * 0.9,
                height: screenHeight * 0.15,
              ),
              Expanded(
                child: Stack(
                  // fit: StackFit.expand,
                  alignment: Alignment.center,
                  children: [
                    Positioned(
                        top: screenHeight * 0.08,
                        child: Image.asset(
                          "assets/images/sebha_head.png",
                          height: screenHeight * 0.14,
                        )),
                    Positioned(
                        top: screenHeight * 0.193,
                        child: Stack(
                          children: [
                            Positioned(
                              top: screenHeight * 0.165,
                              left: screenWidth * 0.22,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    azkar[index],
                                    style:
                                        Theme.of(context).textTheme.labelLarge,
                                    textAlign: TextAlign.center,
                                  ),
                                  SizedBox(
                                    height: screenHeight * 0.01,
                                  ),
                                  Text("$counter",
                                      style: TextStyle(color: Colors.white),
                                      textAlign: TextAlign.center)
                                ],
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                zekrIncrement();
                              },
                              child: Transform.rotate(
                                angle: angle,
                                child: Image.asset(
                                  "assets/images/sebha_body.png",
                                  height: screenHeight * 0.4,
                                ),
                              ),
                            ),
                          ],
                        ))
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  zekrIncrement() {
    counter++;
    if (counter % 33 == 0) {
      index++;
      counter = 0;
    }
    if (index == azkar.length) {
      index = 0;
    }
    angle += 3.1416 / 2;

    setState(() {});
  }
}
