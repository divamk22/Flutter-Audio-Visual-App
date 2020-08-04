import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

myAVApp() {
  var myAccessibleIcon = IconButton(
    icon: Icon(Icons.accessible),
    onPressed: null,
  );

  var myBody = Container(
    alignment: Alignment.center,
    width: 500,
    height: 500,
    color: Colors.lightGreenAccent.shade200,
    child: Column(
      children: <Widget>[
        Card(
          color: Colors.white10,
          child: Text(
            'Audio from System',
          ),
        ),
        Text('Beyblade Burst Turbo Theme Song'),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.play_arrow),
              onPressed: () {
                var turboAudio = AudioCache();
                turboAudio.play('assets/audios/(BB13)-Turbo.mp3');
              },
            ),
          ],
        ),
      ],
    ),
  );

  var myAppBar = AppBar(
      title: Text('Beyblade Burst Audios and Videos'),
      centerTitle: true,
      backgroundColor: Colors.green,
      actions: <Widget>[
        myAccessibleIcon,
      ]);

  var myHome = Scaffold(
    appBar: myAppBar,
    body: myBody,
  );

  var design = MaterialApp(
    home: myHome,
    debugShowCheckedModeBanner: false,
  );

  return design;
}
