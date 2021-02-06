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
            buildDrumPadRow(
                'bongo', Colors.blueAccent, 'bip', Colors.redAccent),
            buildDrumPadRow(
                'clap1', Colors.purpleAccent, 'clap2', Colors.blueGrey),
            buildDrumPadRow(
                'clap3', Colors.orangeAccent, 'crash', Colors.cyanAccent),
            buildDrumPadRow('how', Colors.pinkAccent, 'oobah', Colors.brown),
            buildDrumPadRow('ridebel', Colors.blue, 'woo', Colors.red),
          ],
        ),
      ),
    );
  }

  Expanded buildDrumPadRow(ses1, renk1, ses2, renk2) {
    return Expanded(
      child: Row(
        children: [
          Expanded(child: buildDrumPad(ses1, renk1)),
          Expanded(child: buildDrumPad(ses2, renk2)),
        ],
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
