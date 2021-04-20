import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int index) {
    final player = AudioCache();
    try {
      player.play('note$index.wav', );
    } catch (e) {
      print('error on something');
      print(e);
    }
  }

  Expanded createExpandedKey(Color color, int index) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(color)),
        onPressed: () {
          playSound(index);
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
            children: [
              createExpandedKey(Colors.red, 1),
              createExpandedKey(Colors.orange, 2),
              createExpandedKey(Colors.yellow, 3),
              createExpandedKey(Colors.lightGreen, 4),
              createExpandedKey(Colors.green, 5),
              createExpandedKey(Colors.blue, 6),
              createExpandedKey(Colors.purple, 7)
            ],
          ),
        ),
      ),
    );
  }
}
