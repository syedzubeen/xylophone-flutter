import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  void playSound(int keyNumber){
    final audioPlayer = AudioCache();
    audioPlayer.play('note$keyNumber.wav');
  }
  Expanded buildKey(int keyNumber, Color color)
  {
    return Expanded(
      child: FlatButton(
        color : color,
        onPressed: () {
          playSound(keyNumber);
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
                  buildKey(1,Colors.orange),
                  buildKey(2,Colors.yellow),
                  buildKey(3,Colors.red),
                  buildKey(4,Colors.lightBlueAccent),
                  buildKey(5,Colors.purpleAccent),
                  buildKey(6,Colors.lightGreenAccent),
                  buildKey(7,Colors.teal),
                ],
              )

        ),
      ),
    );
  }
}
