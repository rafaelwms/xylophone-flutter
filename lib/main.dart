import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  void playSound(int num) {
    final player = AudioCache();
    player.play('note$num.wav');
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              FlatButton(
                color: Colors.red,
                onPressed: () {
                  playSound(1);
                },
                child: Text('C'),
              ),
              FlatButton(
                color: Colors.orange,
                onPressed: () {
                  playSound(2);
                },
                child: Text('D'),
              ),
              FlatButton(
                color: Colors.yellow,
                onPressed: () {
                  playSound(3);
                },
                child: Text('E'),
              ),
              FlatButton(
                color: Colors.green,
                onPressed: () {
                  playSound(4);
                },
                child: Text('F'),
              ),
              FlatButton(
                color: Colors.green[900],
                onPressed: () {
                  playSound(5);
                },
                child: Text('G'),
              ),
              FlatButton(
                color: Colors.blue,
                onPressed: () {
                  playSound(6);
                },
                child: Text('A'),
              ),
              FlatButton(
                color: Colors.purple,
                onPressed: () {
                  playSound(7);
                },
                child: Text('B'),
              ),
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
