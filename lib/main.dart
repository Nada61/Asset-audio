import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:assetaudio/test.dart';


void main() => runApp(MyApp());

//class MyApp extends StatefulWidget {
//  @override
//  _MyAppState createState() => _MyAppState();
//}
//
//class _MyAppState extends State<MyApp> {
//
//  AssetsAudioPlayer _assetsAudioPlayer;
//
//  @override
//  void initState() {
//    super.initState();
//    _assetsAudioPlayer = AssetsAudioPlayer();
//    _assetsAudioPlayer.open(
//      AssetsAudio(
//        asset: "hello.mp3",
//        folder: "assets/audios/",
//      ),
//    );
//    //_assetsAudioPlayer.stop();//make the audio doesnt work
//
//
//    _assetsAudioPlayer.current; //ValueObservable<PlayingAudio>
//
////Retrieve directly the current played asset
//    final PlayingAudio playing =  _assetsAudioPlayer.current.value;
//
////Listen to the current playing song
//    _assetsAudioPlayer.current.listen((playingAudio){
//      final asset = playingAudio.assetAudio;
//      final songDuration = playingAudio.duration;
//    });
//
//
//
//  }
//
//
//  @override
//  void dispose() {
//    _assetsAudioPlayer = null;
//    super.dispose();
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      home: Scaffold(
//        appBar: AppBar(
//          title: const Text('Asset Audio Example'),
//        ),
//        body: Container(),
//      ),
//    );
//  }
//}