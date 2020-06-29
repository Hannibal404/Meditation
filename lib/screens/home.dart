import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:meditation/components/game.dart';
import 'package:meditation/utils/colors.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(
                      Icons.menu,
                      size: 25,
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.024,
                ),
                Text(
                  "Welcome User",
                  style: TextStyle(
                    fontSize: 26,
                    color: Colors.black87,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: height * 0.036,
                ),
                Text(
                  'Recommended Sounds',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.black87,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: height * 0.018,
                ),
                Container(
                  height: height * 0.74,
                  width: double.infinity,
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: <Widget>[
                      RecommendedGame(
                        name: 'Overwatch',
                        views: '45,967',
                        color: overWatchBg,
                        imagePath: 'images/overwatch4.png',
                        height: 150,
                        left: 150,
                        bottom: 45,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      RecommendedGame(
                        name: 'Apex Legends',
                        views: '31,632',
                        color: apexLegendBg,
                        imagePath: 'images/al2.png',
                        height: 115,
                        left: 153,
                        bottom: 50,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      RecommendedGame(
                        name: 'Cyberspace',
                        views: '13,933',
                        color: cyberSpaceBg,
                        imagePath: 'images/overwatch2.png',
                        height: 115,
                        left: 153,
                        bottom: 50,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      RecommendedGame(
                        name: 'HunterKillar',
                        views: '4,003',
                        color: Colors.blue[600],
                        imagePath: 'images/al3.png',
                        height: 115,
                        left: 153,
                        bottom: 50,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
