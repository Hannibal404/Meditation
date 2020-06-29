import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:meditation/app/models/music_model.dart';

class LibraryTab extends StatefulWidget {
  @override
  _LibraryTabState createState() => _LibraryTabState();
}

class _LibraryTabState extends State<LibraryTab> {
  List<MusicModel> listMusic = [
    MusicModel(
        id: "01",
        title: "To Speak Of Solitude",
        album: "Brambles",
        duration: "4:21"),
    MusicModel(
        id: "02",
        title: "Unsayable",
        album: "Brambles",
        duration: "2:52",
        isPlay: true),
    MusicModel(
        id: "03",
        title: "In The Androgynous Dark",
        album: "Brambles",
        duration: "4:43"),
    MusicModel(
        id: "04",
        title: "Sait Photographs",
        album: "Brambles",
        duration: "6:54"),
    MusicModel(
        id: "05",
        title: "Pink And Golden Billows",
        album: "Brambles",
        duration: "2:58"),
  ];
  @override
  void initState() {
    super.initState();
    // create this only once
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        leading: IconButton(
            icon: Icon(FeatherIcons.chevronLeft),
            onPressed: () {
              //Navigator.pushNamed(context, "/onboard_type_three");
            }),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: listMusic
                      .map((item) => Container(
                            decoration: BoxDecoration(
                                gradient: item.isPlay
                                    ? LinearGradient(colors: [
                                        Theme.of(context)
                                            .scaffoldBackgroundColor,
                                        Colors.grey[200],
                                        Theme.of(context)
                                            .scaffoldBackgroundColor,
                                        Theme.of(context)
                                            .scaffoldBackgroundColor,
                                      ])
                                    : null),
                            child: ListTile(
                              leading: item.isPlay
                                  ? Icon(FontAwesomeIcons.solidPauseCircle,
                                      color: Theme.of(context).primaryColor)
                                  : Text(item.id,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color:
                                              Theme.of(context).primaryColor)),
                              title: Text(item.title,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Theme.of(context).primaryColor)),
                              subtitle:
                                  Text(item.album + " - " + item.duration),
                              trailing: IconButton(
                                  icon: Icon(Icons.more_horiz,
                                      color: Colors.grey),
                                  onPressed: () {}),
                            ),
                          ))
                      .toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
