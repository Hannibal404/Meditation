import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:meditation/app/models/music_model.dart';
import 'package:audioplayer/audioplayer.dart';
import 'package:meditation/components/audio_provider.dart';

class LibraryTab4 extends StatefulWidget {
  @override
  _LibraryTabState createState() => _LibraryTabState();
}

class _LibraryTabState extends State<LibraryTab4> {
  static String url28 =
      'https://ucarecdn.com/9db9505e-c96b-482c-a4ef-7a5e16278810~36/nth/11/';
  static String url29 =
      'https://ucarecdn.com/9db9505e-c96b-482c-a4ef-7a5e16278810~36/nth/12/';
  static String url30 =
      'https://ucarecdn.com/9db9505e-c96b-482c-a4ef-7a5e16278810~36/nth/13/';
  static String url31 =
      'https://ucarecdn.com/9db9505e-c96b-482c-a4ef-7a5e16278810~36/nth/14/';
  static String url32 =
      'https://ucarecdn.com/9db9505e-c96b-482c-a4ef-7a5e16278810~36/nth/15/';
  static String url33 =
      'https://ucarecdn.com/9db9505e-c96b-482c-a4ef-7a5e16278810~36/nth/16/';
  static String url34 =
      'https://ucarecdn.com/9db9505e-c96b-482c-a4ef-7a5e16278810~36/nth/17/';
  static String url35 =
      'https://ucarecdn.com/9db9505e-c96b-482c-a4ef-7a5e16278810~36/nth/18/';
  static String url36 =
      'https://ucarecdn.com/9db9505e-c96b-482c-a4ef-7a5e16278810~36/nth/19/';

  AudioPlayer audioPlayer = new AudioPlayer();
  AudioProvider audioProvider1 = new AudioProvider(url28);
  AudioProvider audioProvider2 = new AudioProvider(url29);
  AudioProvider audioProvider3 = new AudioProvider(url30);
  AudioProvider audioProvider4 = new AudioProvider(url31);
  AudioProvider audioProvider5 = new AudioProvider(url32);
  AudioProvider audioProvider6 = new AudioProvider(url33);
  AudioProvider audioProvider7 = new AudioProvider(url34);
  AudioProvider audioProvider8 = new AudioProvider(url35);
  AudioProvider audioProvider9 = new AudioProvider(url36);

  List<MusicModel> listMusic = [
    MusicModel(id: "01", title: "Rain light", duration: "0:21"),
    MusicModel(id: "02", title: "Rain normal", duration: "0:52"),
    MusicModel(id: "03", title: "Rain ocean", duration: "0:43"),
    MusicModel(id: "04", title: "Rain on leaves", duration: "0:54"),
    MusicModel(id: "05", title: "Rain on roof", duration: "0:58"),
    MusicModel(id: "06", title: "Rain on window", duration: "0:58"),
    MusicModel(id: "07", title: "Rain thunders", duration: "0:58"),
    MusicModel(id: "08", title: "Rain under umbrella", duration: "0:58"),
    MusicModel(id: "09", title: "Rain water", duration: "0:58"),
  ];
  play1() async {
    String localUrl = await audioProvider1.load();
    String localUrl2 = await audioProvider2.load();
    String localUrl3 = await audioProvider3.load();
    String localUrl4 = await audioProvider4.load();
    String localUrl5 = await audioProvider5.load();
    String localUrl6 = await audioProvider6.load();
    String localUrl7 = await audioProvider7.load();
    String localUrl8 = await audioProvider8.load();
    String localUrl9 = await audioProvider9.load();

    audioPlayer.play(localUrl, isLocal: true);
    audioPlayer.play(localUrl2, isLocal: true);
    audioPlayer.play(localUrl3, isLocal: true);
    audioPlayer.play(localUrl4, isLocal: true);
    audioPlayer.play(localUrl5, isLocal: true);
    audioPlayer.play(localUrl6, isLocal: true);
    audioPlayer.play(localUrl7, isLocal: true);
    audioPlayer.play(localUrl8, isLocal: true);
    audioPlayer.play(localUrl9, isLocal: true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Rain Sounds'),
        brightness: Brightness.light,
        leading: IconButton(
            icon: Icon(FeatherIcons.chevronLeft),
            onPressed: () {
              Navigator.pushNamed(context, "/home_screen");
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
                                        Colors.black,
                                      ])
                                    : null),
                            child: ListTile(
                              leading: item.isPlay
                                  ? Icon(FontAwesomeIcons.solidPauseCircle,
                                      color: Theme.of(context).primaryColor)
                                  : Text(item.id,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      )),
                              title: Text(item.title,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  )),
                              trailing: IconButton(
                                  icon: Icon(
                                    FontAwesomeIcons.solidPauseCircle,
                                    color: Colors.black,
                                  ),
                                  onPressed: play1),
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
