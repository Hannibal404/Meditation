import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:meditation/app/pages/home/home_page.dart';
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
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: height * 0.035,
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
                  height: height * 0.79,
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
                          views: '45,967',
                          color: overWatchBg,
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
                                builder: (context) => HomePage1()),
                          );
                        },
                        child: RecommendedGame(
                          name: 'Meditation',
                          views: '31,632',
                          color: apexLegendBg,
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
                                builder: (context) => HomePage1()),
                          );
                        },
                        child: RecommendedGame(
                          name: 'Forest',
                          views: '13,933',
                          color: cyberSpaceBg,
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
                                builder: (context) => HomePage1()),
                          );
                        },
                        child: RecommendedGame(
                          name: 'Rain',
                          views: '4,003',
                          color: Colors.blue[600],
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
