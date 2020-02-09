import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  void playSound(int num) {
    final player = AudioCache();
    player.play('note$num.wav');
  }

  Widget makeKey(Color color, int sound, String text) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(sound);
        },
        child: Text(text),
      ),
    );
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              makeKey(Colors.red, 1, 'C'),
              makeKey(Colors.orange, 2, 'D'),
              makeKey(Colors.yellow, 3, 'E'),
              makeKey(Colors.green, 4, 'F'),
              makeKey(Colors.teal, 5, 'G'),
              makeKey(Colors.blue, 6, 'A'),
              makeKey(Colors.purple, 7, 'B'),
            ],
          ),
        ),
      ),
    );
  }
}

class XylophoneDynamicApp extends StatefulWidget {
  @override
  _XylophoneDynamicAppState createState() => _XylophoneDynamicAppState();
}

class _XylophoneDynamicAppState extends State<XylophoneDynamicApp> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
