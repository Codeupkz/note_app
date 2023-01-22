import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(View());
}

class View extends StatelessWidget {
  const View({Key? key}) : super(key: key);

  void playSound(int soundNumber){
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }


  Expanded buildUI(Color colorButton, soundNumber) {
    return Expanded(
      child: TextButton(
        onPressed: () {
         playSound(soundNumber);
        },
        child: Text(''),
        style: TextButton.styleFrom(backgroundColor: colorButton),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildUI(Colors.red, 1),
              buildUI(Colors.yellow, 2),
              buildUI(Colors.orange, 3),
              buildUI(Colors.blue, 4),
              buildUI(Colors.green, 5),
              buildUI(Colors.greenAccent, 6),
              buildUI(Colors.pink, 7),
            ],
          ),
        ),
      ),
    );
  }
}
