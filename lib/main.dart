import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatefulWidget {
  @override
  _XylophoneAppState createState() => _XylophoneAppState();
}

class _XylophoneAppState extends State<XylophoneApp> {
  static AudioCache player = AudioCache();

  void play(int a) {
    player.play('note$a.wav');
  }

  Expanded buildKey({int i,Color color}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          play(i);
        },
        child: Text(''),
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(brightness: Brightness.dark),
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red,i: 1),
              buildKey(color: Colors.orange,i: 2),
              buildKey(color: Colors.yellow,i: 3),
              buildKey(color: Colors.lightGreen,i: 4),
              buildKey(color: Colors.green,i: 5),
              buildKey(color: Colors.blue,i: 6),
              buildKey(color: Colors.purple,i: 7),
            ],
          ),
        ),
      ),
    );
  }
}
