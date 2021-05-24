import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void soundplayer (int n){
    final player = AudioCache();
    player.play('note$n.wav');
  }

  Expanded buildKey({Color color, int soundNumber}){
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: (){
          soundplayer(soundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Xylophone'),
          backgroundColor: Colors.orange.shade200,
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.red.shade50,soundNumber: 1),
              buildKey(color: Colors.red.shade100,soundNumber: 2),
              buildKey(color: Colors.red.shade200,soundNumber: 3),
              buildKey(color: Colors.red.shade300,soundNumber: 4),
              buildKey(color: Colors.red.shade400,soundNumber: 5),
              buildKey(color: Colors.red.shade500,soundNumber: 6),
              buildKey(color: Colors.red.shade600,soundNumber: 7),
            ],
          )
        ),
      ),
    );
  }
}
