import 'package:flutter/material.dart';
import 'package:islami/home_screen.dart';
import 'package:islami/intro_screens/intro_screen_1.dart';
import 'package:islami/intro_screens/intro_screen_2.dart';
import 'package:islami/intro_screens/intro_screen_3.dart';
import 'package:islami/intro_screens/intro_screen_4.dart';
import 'package:islami/intro_screens/intro_screen_5.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageViews extends StatefulWidget {
  const PageViews({super.key});
  static const String routeName = "page_views";
  @override
  State<PageViews> createState() => _PageViewsState();
}

class _PageViewsState extends State<PageViews> {
  PageController _pageController = PageController();
  int _currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        PageView(
          controller: _pageController,
          onPageChanged: (int page) {
            _currentPage = page;
            setState(
              () {},
            );
          },
          children: [
            IntroScreen1(),
            IntroScreen2(),
            IntroScreen3(),
            IntroScreen4(),
            IntroScreen5()
          ],
        ),
        Container(
          alignment: Alignment(0, 0.92),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _currentPage > 0
                  ? InkWell(
                      onTap: () {
                        _pageController.previousPage(
                            duration: Duration(seconds: 1),
                            curve: Curves.easeInOutQuad);
                      },
                      child: Text(
                        "Previous",
                        // textAlign: TextAlign.end,
                        style: TextStyle(
                          color: Color(0xFFFFD482),
                        ),
                      ),
                    )
                  : SizedBox(),
              SmoothPageIndicator(
                  effect: WormEffect(
                      // activeStrokeWidth: 100,
                      activeDotColor: Color(0xFFFFD482),
                      dotColor: Colors.grey,
                      dotHeight: 10,
                      spacing: 10),
                  controller: _pageController,
                  count: 5),
              InkWell(
                onTap: _currentPage < 4
                    ? () {
                        _pageController.nextPage(
                            duration: Duration(seconds: 1),
                            curve: Curves.easeInOutQuad);
                      }
                    : () {
                        Navigator.pushReplacementNamed(
                            context, HomeScreen.routeName);
                      },
                child: Text(
                  "Next",
                  // textAlign: TextAlign.end,
                  style: TextStyle(
                    color: Color(0xFFFFD482),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    ));
  }
}
