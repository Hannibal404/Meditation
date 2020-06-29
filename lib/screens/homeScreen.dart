import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: null,
          ),
          Icon(Icons.music_note),
          Text(
            "Breathe",
          ),
          Icon(Icons.portrait),
        ],
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Text("Welcome Back! user"),
            Text("How are you?"),
            Text("First Session"),
            Text("Other Sessions"),
          ],
        ),
      ),
    );
  }
}
