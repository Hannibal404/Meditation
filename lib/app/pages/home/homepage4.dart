import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:meditation/app/models/music_model.dart';
import 'package:meditation/app/pages/home/tabs/library4.dart';
import 'package:meditation/app/pages/home/tabs/library_tab.dart';
import 'package:meditation/app/pages/home/tabs/library_tab2.dart';

class HomePage4 extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage4> {
  List<MusicModel> listMusic = [
    MusicModel(id: "01", title: "To Speak Of Solitude", duration: "4:21"),
    MusicModel(id: "02", title: "Unsayable", duration: "2:52", isPlay: true),
    MusicModel(id: "03", title: "In The Androgynous Dark", duration: "4:43"),
    MusicModel(id: "04", title: "Sait Photographs", duration: "6:54"),
    MusicModel(id: "05", title: "Pink And Golden Billows", duration: "2:58"),
  ];

  int indexPage = 0;
  int indexNavBar = 0;
  PageController _pageController;

  @override
  void initState() {
    _pageController = PageController(initialPage: indexPage, keepPage: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        onPageChanged: (index) {
          if (index == 1) {
            setState(() {
              indexNavBar = 2;
            });
          }
        },
        children: <Widget>[LibraryTab4()],
      ),
      bottomNavigationBar: _buildBottomNav(),
    );
  }

  _buildBottomNav() {
    return Card(
      elevation: 30,
      margin: EdgeInsets.all(0),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      )),
    );
  }
}
