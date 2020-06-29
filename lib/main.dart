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
      home: MyHomePage(title: 'Meditation'),
      routes: {
        '/onboard_type_three': (context) => OnboardingPagerTypeThree(),
        "/home_screen": (context) => HomeScreen(),
        "/music_screen": (context) => HomePage1(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              ListTile(
                contentPadding: EdgeInsets.all(20),
                trailing: Icon(Icons.navigate_next),
                title: Text("Onboarding and Splash"),
                onTap: () {
                  Navigator.pushNamed(context, "/onboard_type_three");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
