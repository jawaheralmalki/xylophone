import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const Xylophon());
}

class Xylophon extends StatelessWidget {
  const Xylophon({Key? key}) : super(key: key);
  void playSound(int soundNum) {
    final player = AudioCache();

    player.play('sora$soundNum.mp3');
  }

  Expanded buildButton(
      {required String name, required Color col, required int soundNum}) {
    return Expanded(
      child: MaterialButton(
        color: col,
        onPressed: () {
          playSound(soundNum);
        },
        child: Text(
          "$name ",
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildButton(name: "سورة الفلق", col: Colors.red, soundNum: 1),
                buildButton(
                    name: "سورة الناس", col: Colors.orange, soundNum: 2),
                buildButton(
                    name: "سورة الاخلاص", col: Colors.yellow, soundNum: 3),
                buildButton(name: "سورة النصر", col: Colors.green, soundNum: 4),
                buildButton(name: "سورة المسد", col: Colors.teal, soundNum: 5),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
