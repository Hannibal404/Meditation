import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:meditation/app/pages/home/home_page.dart';
import 'package:meditation/app/pages/home/home_page2.dart';
import 'package:meditation/app/pages/home/homepage3.dart';
import 'package:meditation/app/pages/home/homepage4.dart';
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
      resizeToAvoidBottomPadding: false,
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: height * 0.040,
                ),
                Text(
                  "Welcome User!",
                  style: TextStyle(
                    fontSize: 36,
                    color: Colors.black87,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                SizedBox(
                  height: height * 0.018,
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
                  height: 15.0,
                ),
                Container(
                  height: height * 0.75,
                  width: double.infinity,
                  child: GridView(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 5,
                    ),
                    scrollDirection: Axis.vertical,
                    children: <Widget>[
                      new InkWell(
                        onTap: () {
                          // Navigate to Learning
                          debugPrint("Pressed here");
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage1()),
                          );
                        },
                        child: RecommendedGame(
                          name: 'City',
                          views: 'Tap to',
                          color: Colors.black,
                          imagePath: 'images/overwatch4.png',
                          height: 150,
                          left: 150,
                          bottom: 45,
                        ),
                      ),
                      new InkWell(
                        onTap: () {
                          // Navigate to Learning
                          debugPrint("Pressed here");
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage2()),
                          );
                        },
                        child: RecommendedGame(
                          name: 'Meditation',
                          views: 'Tap to',
                          color: Colors.black,
                          imagePath: 'images/al2.png',
                          height: 115,
                          left: 153,
                          bottom: 50,
                        ),
                      ),
                      new InkWell(
                        onTap: () {
                          // Navigate to Learning
                          debugPrint("Pressed here");
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage3()),
                          );
                        },
                        child: RecommendedGame(
                          name: 'Forest',
                          views: 'Tap to',
                          color: Colors.black,
                          imagePath: 'images/overwatch2.png',
                          height: 115,
                          left: 153,
                          bottom: 50,
                        ),
                      ),
                      new InkWell(
                        onTap: () {
                          // Navigate to Learning
                          debugPrint("Pressed here");
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage4()),
                          );
                        },
                        child: RecommendedGame(
                          name: 'Rain',
                          views: 'Tap to',
                          color: Colors.black,
                          imagePath: 'images/al3.png',
                          height: 115,
                          left: 153,
                          bottom: 50,
                        ),
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
