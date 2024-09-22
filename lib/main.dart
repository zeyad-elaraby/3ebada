import 'package:flutter/material.dart';
import 'package:islami/home_screen.dart';
import 'package:islami/page_views.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: PageViews.routeName,
        routes: {
          HomeScreen.routeName: (context) => HomeScreen(),
          PageViews.routeName: (context) => PageViews(),
        });
  }
}