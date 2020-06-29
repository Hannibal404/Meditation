import 'package:flutter/material.dart';
import 'package:meditation/components/myClipper.dart';

class RecommendedGame extends StatelessWidget {
  final String name;
  final String views;
  final String imagePath;
  final Color color;
  final double height;
  final double top;
  final double left;
  final double right;
  final double bottom;

  RecommendedGame(
      {this.name,
      this.views,
      this.imagePath,
      this.color,
      this.height,
      this.top,
      this.left,
      this.bottom,
      this.right});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 150,
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.bottomLeft,
            child: ClipPath(
              clipper: MyClipper(),
              child: Container(
                height: 180,
                width: 150,
                decoration: BoxDecoration(
                  color: color,
                ),
              ),
            ),
          ),
          Positioned(
            left: 10,
            top: 147,
            child: Text(
              name,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            left: 10,
            top: 165,
            child: Container(
              width: 110,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    views,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Play',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Icon(
                    Icons.remove_red_eye,
                    color: Colors.white,
                    size: 15,
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 110,
            left: 10,
            child: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
              child: Icon(
                Icons.play_arrow,
                color: Colors.black,
                size: 17,
              ),
            ),
          ),
          Positioned(
            left: 40,
            bottom: bottom,
            child: Image(
              height: height,
              image: AssetImage(
                imagePath,
              ),
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
