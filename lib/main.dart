import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  void playSound(int soundNumber){
    final audioPlayer = AudioCache();
    audioPlayer.play('note$soundNumber.wav');
  }
  Expanded buildKey()
  {
    return Expanded(
      child: FlatButton(
        color: Colors.pink,
        onPressed: () {
          playSound(1);
        },
      ),
    );
  }
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child:
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  buildKey(),
                  buildKey(),
                  buildKey(),
                  buildKey(),
                  buildKey(),
                  buildKey(),
                  buildKey(),
                ],
              )

        ),
      ),
    );
  }
}
