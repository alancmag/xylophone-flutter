import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final audioCache = AudioCache();

  void playSound(int soundNumber) {
    audioCache.play('note$soundNumber.wav');
  }

  Expanded buildButton({Color color, int soundNumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildButton(color: Colors.red, soundNumber: 1),
              buildButton(color: Colors.orange, soundNumber: 2),
              buildButton(color: Colors.yellow, soundNumber: 3),
              buildButton(color: Colors.lightGreen, soundNumber: 4),
              buildButton(color: Colors.teal, soundNumber: 5),
              buildButton(color: Colors.blue, soundNumber: 6),
              buildButton(color: Colors.purple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
