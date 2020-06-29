import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:meditation/app/models/music_model.dart';
import 'package:audioplayer/audioplayer.dart';
import 'package:meditation/components/audio_provider.dart';

class LibraryTab2 extends StatefulWidget {
  @override
  _LibraryTabState createState() => _LibraryTabState();
}

class _LibraryTabState extends State<LibraryTab2> {
  static String url9 =
      'https://ucarecdn.com/9db9505e-c96b-482c-a4ef-7a5e16278810~36/nth/28/';
  static String url10 =
      'https://ucarecdn.com/9db9505e-c96b-482c-a4ef-7a5e16278810~36/nth/29/';
  static String url11 =
      'https://ucarecdn.com/9db9505e-c96b-482c-a4ef-7a5e16278810~36/nth/30/';
  static String url12 =
      'https://ucarecdn.com/9db9505e-c96b-482c-a4ef-7a5e16278810~36/nth/31/';
  static String url13 =
      'https://ucarecdn.com/9db9505e-c96b-482c-a4ef-7a5e16278810~36/nth/32/';
  static String url14 =
      'https://ucarecdn.com/9db9505e-c96b-482c-a4ef-7a5e16278810~36/nth/33/';
  static String url15 =
      'https://ucarecdn.com/9db9505e-c96b-482c-a4ef-7a5e16278810~36/nth/34/';
  static String url16 =
      'https://ucarecdn.com/9db9505e-c96b-482c-a4ef-7a5e16278810~36/nth/35/';
  static String url17 =
      'https://ucarecdn.com/9db9505e-c96b-482c-a4ef-7a5e16278810~36/nth/0/';
  static String url18 =
      'https://ucarecdn.com/9db9505e-c96b-482c-a4ef-7a5e16278810~36/nth/1/';

  AudioPlayer audioPlayer = new AudioPlayer();
  AudioProvider audioProvider1 = new AudioProvider(url9);
  AudioProvider audioProvider2 = new AudioProvider(url10);
  AudioProvider audioProvider3 = new AudioProvider(url11);
  AudioProvider audioProvider4 = new AudioProvider(url12);
  AudioProvider audioProvider5 = new AudioProvider(url13);
  AudioProvider audioProvider6 = new AudioProvider(url14);
  AudioProvider audioProvider7 = new AudioProvider(url15);
  AudioProvider audioProvider8 = new AudioProvider(url16);
  AudioProvider audioProvider9 = new AudioProvider(url17);
  AudioProvider audioProvider10 = new AudioProvider(url18);

  List<MusicModel> listMusic = [
    MusicModel(id: "01", title: "Forest birds", duration: "0:21"),
    MusicModel(id: "02", title: "Forest Creek", duration: "0:52"),
    MusicModel(id: "03", title: "Forest fire", duration: "0:43"),
    MusicModel(id: "04", title: "Forest forest", duration: "0:54"),
    MusicModel(id: "05", title: "Forest frogs", duration: "0:58"),
    MusicModel(id: "06", title: "Forest grasshoppers", duration: "0:58"),
    MusicModel(id: "07", title: "Forest leaves", duration: "0:58"),
    MusicModel(id: "08", title: "Forest waterfall", duration: "0:58"),
    MusicModel(id: "09", title: "Forest wind", duration: "0:58"),
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
        title: Text('Meditating Sounds'),
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
