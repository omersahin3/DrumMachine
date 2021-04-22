import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(DrumMachine());
}

class DrumMachine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: DrumPage(),
      ),
    );
  }
}
class DrumPage extends StatelessWidget {
  void playSound(String ses){
    player.play('$ses.wav');
  }
  final player = AudioCache();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded  (
                    child: buildTextButton('bongo',Colors.pinkAccent),
                  ),
                  Expanded(
                    child: buildTextButton('bip',Colors.blueAccent),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded  (
                    child: buildTextButton('clap1',Colors.greenAccent),
                  ),
                  Expanded(
                    child: buildTextButton('clap2',Colors.yellowAccent),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded  (
                    child: buildTextButton('clap3',Colors.grey),
                  ),
                  Expanded(
                    child: buildTextButton('crash',Colors.purpleAccent),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded  (
                    child: buildTextButton('ridebel',Colors.deepOrangeAccent),
                  ),
                  Expanded(
                    child: buildTextButton('woo',Colors.brown),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  TextButton buildTextButton(String ses, Color col) {
    return TextButton(
                    style: TextButton.styleFrom(padding: EdgeInsets.all(5)),
                    onPressed: (){
                      playSound(ses);
                    },
                    child: Container(
                      color: col,
                    ),
                  );
  }
}
