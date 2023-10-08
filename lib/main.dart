import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  Widget soundKey(int soundNumber, Color keyColour) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          final player = AudioPlayer();
          player.play(AssetSource("note$soundNumber.wav"));
        },
        style: TextButton.styleFrom(
          backgroundColor: keyColour,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.zero)),
        ),
        child: Text(""),
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
              soundKey(1, Colors.red),
              soundKey(2, Colors.orange),
              soundKey(3, Colors.yellow),
              soundKey(4, Colors.green),
              soundKey(5, Colors.blue),
              soundKey(6, Colors.indigo),
              soundKey(7, Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
