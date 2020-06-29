import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:meditation/app/models/music_model.dart';
import 'package:audioplayer/audioplayer.dart';
import 'package:meditation/components/audio_provider.dart';

class LibraryTab extends StatefulWidget {
  @override
  _LibraryTabState createState() => _LibraryTabState();
}

class _LibraryTabState extends State<LibraryTab> {
  static String url =
      'https://ucarecdn.com/9db9505e-c96b-482c-a4ef-7a5e16278810~36/nth/20/';
  static String url2 =
      'https://ucarecdn.com/9db9505e-c96b-482c-a4ef-7a5e16278810~36/nth/21/';
  static String url3 =
      'https://ucarecdn.com/9db9505e-c96b-482c-a4ef-7a5e16278810~36/nth/22/';
  static String url4 =
      'https://ucarecdn.com/9db9505e-c96b-482c-a4ef-7a5e16278810~36/nth/23/';
  static String url5 =
      'https://ucarecdn.com/9db9505e-c96b-482c-a4ef-7a5e16278810~36/nth/24/';
  static String url6 =
      'https://ucarecdn.com/9db9505e-c96b-482c-a4ef-7a5e16278810~36/nth/25/';
  static String url7 =
      'https://ucarecdn.com/9db9505e-c96b-482c-a4ef-7a5e16278810~36/nth/26/';
  static String url8 =
      'https://ucarecdn.com/9db9505e-c96b-482c-a4ef-7a5e16278810~36/nth/27/';

  AudioPlayer audioPlayer = new AudioPlayer();
  AudioProvider audioProvider2 = new AudioProvider(url);
  AudioProvider audioProvider3 = new AudioProvider(url2);
  AudioProvider audioProvider4 = new AudioProvider(url3);
  AudioProvider audioProvider5 = new AudioProvider(url4);
  AudioProvider audioProvider6 = new AudioProvider(url5);
  AudioProvider audioProvider7 = new AudioProvider(url6);
  AudioProvider audioProvider8 = new AudioProvider(url7);
  AudioProvider audioProvider9 = new AudioProvider(url8);
  List<MusicModel> listMusic = [
    MusicModel(id: "01", title: "City airplane", duration: "0:21"),
    MusicModel(id: "02", title: "City car", duration: "0:52"),
    MusicModel(id: "03", title: "City fan", duration: "0:43"),
    MusicModel(id: "04", title: "City keyboard", duration: "0:54"),
    MusicModel(id: "05", title: "City rails", duration: "0:58"),
    MusicModel(id: "06", title: "City restaurant", duration: "0:58"),
    MusicModel(id: "07", title: "City subway", duration: "0:58"),
    MusicModel(id: "08", title: "City traffic", duration: "0:58"),
  ];
  play1() async {
    String localUrl2 = await audioProvider2.load();
    String localUrl3 = await audioProvider3.load();
    String localUrl4 = await audioProvider4.load();
    String localUrl5 = await audioProvider5.load();
    String localUrl6 = await audioProvider6.load();
    String localUrl7 = await audioProvider7.load();
    String localUrl8 = await audioProvider8.load();
    String localUrl9 = await audioProvider9.load();

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
        brightness: Brightness.light,
        leading: IconButton(
            icon: Icon(FeatherIcons.chevronLeft),
            onPressed: () {
              Navigator.pushNamed(context, "/onboard_type_three");
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
                              trailing: IconButton(
                                  icon: Icon(FontAwesomeIcons.solidPauseCircle,
                                      color: Colors.grey),
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
