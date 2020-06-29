import 'package:flutter/material.dart';

import 'homeScreen.dart';

class StartUpScreen extends StatefulWidget {
  @override
  _StartUpScreenState createState() => _StartUpScreenState();
}

class _StartUpScreenState extends State<StartUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: <Widget>[
            Icon(Icons.music_note),
            Text("Breathe"),
          ],
        ),
      ),
      body: Container(
        child: Text("Hello, breathe please"),
      ),
      floatingActionButton: FloatingActionButton(
        child: Text("Start"),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HomeScreen(),
            ),
          );
        },
      ),
    );
  }
}
