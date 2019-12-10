import 'package:flutter/material.dart';

import 'package:assets_audio_player/assets_audio_player.dart';
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final asset =
  Icon(
    Icons.volume_up,
    color: Colors.black,
    size: 40.0,
  );
  final nonaudio = Icon(
    Icons.volume_off,
    size: 40.0,

  );

  final AssetsAudioPlayer _assetsAudioPlayer = AssetsAudioPlayer();

  void _open() { // make the audio song
    _assetsAudioPlayer.open(
      AssetsAudio(
        asset: "baby.mp3", //asset[_currentAssetPosition],
        folder: "assets/audios/",
      ),
    );
  }


  void _playPause() {
    _assetsAudioPlayer.playOrPause();
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _assetsAudioPlayer.open(
      AssetsAudio(
        asset: "hello.mp3", //asset[_currentAssetPosition],
        folder: "assets/audios/",
      ),
    );
  }

  @override
  void dispose() {

    _assetsAudioPlayer.stop();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body:Row(
            children: <Widget>[
              IconButton(icon: (asset),
              onPressed: (_open),
              ) ,
              IconButton(icon: (nonaudio),
              onPressed: (){
                dispose();
              },)
            ],

//          IconButton(
//            icon: (asset),
//            onPressed: () {
//              dispose();
//            },
//                        return ListTile(
//
//                            title: Icon(asset[position]),//Text(asset[position],
//                                style: TextStyle(
//                                    color: asset[position] ==
//                                        currentAudio.assetAudio.asset
//                                        ? Colors.blue
//                                        : Colors.black)),
//                            ),
//                                onTap: () {
//                                  _open(position);
//                                }


          ),

      ),
    );
  }
}

