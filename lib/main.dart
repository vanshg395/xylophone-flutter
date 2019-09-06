import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  // void _playAudio() {
  //   final player = AudioCache(prefix: 'sounds/');
  //   player.play('note7.wav');
  // }
  Widget buildKey(int soundNo, Color keyColor) {
    return Expanded(
      child: RaisedButton(
        child: null,
        color: keyColor,
        onPressed: () {
          final player = AudioCache(prefix: 'sounds/');
          player.play('note$soundNo.wav');
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildKey(1, Colors.red),
                buildKey(2, Colors.orange),
                buildKey(3, Colors.yellow),
                buildKey(4, Colors.green),
                buildKey(5, Colors.blue),
                buildKey(6, Colors.indigo),
                buildKey(7, Colors.purple),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
