import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DrumMachine());
}

class DrumMachine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: DrumPage(),
      ),
    );
  }
}

class DrumPage extends StatelessWidget {
  static AudioCache oynatici = AudioCache();
  void sesiCal(String ses) {
    oynatici.play('$ses.wav');
  }

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
                  Expanded(child: buildDrumPad('bongo', Colors.blueAccent)),
                  Expanded(child: buildDrumPad('bip', Colors.redAccent)),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(child: buildDrumPad('clap1', Colors.purpleAccent)),
                  Expanded(child: buildDrumPad('clap2', Colors.blueGrey)),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(child: buildDrumPad('clap3', Colors.orangeAccent)),
                  Expanded(child: buildDrumPad('crash', Colors.cyanAccent)),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(child: buildDrumPad('how', Colors.pinkAccent)),
                  Expanded(child: buildDrumPad('oobah', Colors.brown)),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(child: buildDrumPad('ridebel', Colors.blue)),
                  Expanded(child: buildDrumPad('woo', Colors.red)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  FlatButton buildDrumPad(String ses, Color renk) {
    return FlatButton(
      padding: EdgeInsets.all(8),
      onPressed: () {
        sesiCal(ses);
      },
      child: Container(
        color: renk,
      ),
    );
  }
}
