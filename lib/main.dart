import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  Expanded buildKey({required int soundNumber, required Color colName}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(soundNumber);
        },
        style: TextButton.styleFrom(
          backgroundColor: colName,
        ), child: Text(""),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(soundNumber: 1, colName: Colors.red),
              buildKey(soundNumber: 2, colName: Colors.orange),
              buildKey(soundNumber: 3, colName: Colors.yellow),
              buildKey(soundNumber: 4, colName: Colors.green),
              buildKey(soundNumber: 5, colName: Colors.teal),
              buildKey(soundNumber: 8, colName: Colors.blue),
              buildKey(soundNumber: 9, colName: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
