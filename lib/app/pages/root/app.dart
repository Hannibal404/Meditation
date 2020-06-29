import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:meditation/app/pages/home/home_page.dart';
import 'package:meditation/app/shared/theme/theme.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Theme.of(context).scaffoldBackgroundColor));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themeData,
      home: HomePage1(),
    );
  }
}
