import 'package:flutter/material.dart';
import 'package:islami/home_screen.dart';
import 'package:islami/page_views.dart';
import 'package:islami/tabs/quran/sura_details.dart';

import 'my_theme_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: MyThemeData.lightTheme,
        debugShowCheckedModeBanner: false,
        initialRoute: HomeScreen.routeName,
        routes: {
          HomeScreen.routeName: (context) => HomeScreen(),
          SuraDetails.routeName: (context) => SuraDetails(),
          PageViews.routeName: (context) => PageViews(),
        });
  }
}
