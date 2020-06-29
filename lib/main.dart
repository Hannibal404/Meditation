import 'package:flutter/material.dart';
import 'package:meditation/Onboarding/onboard_page.dart';
import 'package:meditation/Onboarding/pager.dart';
import 'package:meditation/app/pages/home/home_page.dart';
import 'package:meditation/utils/colors.dart';
import 'package:meditation/screens/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Meditation App',
      theme: ThemeData(
          fontFamily: 'Montserrat',
          primarySwatch: Colors.blue,
          primaryColor: persian_blue),
      home: OnboardingPagerTypeThree(),
      routes: {
        '/onboard_type_three': (context) => OnboardingPagerTypeThree(),
        "/home_screen": (context) => HomeScreen(),
        "/music_screen": (context) => HomePage1(),
      },
    );
  }
}
