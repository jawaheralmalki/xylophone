import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const Xylophon());
}

class Xylophon extends StatelessWidget {
  const Xylophon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              TextButton(
                onPressed: () {
                  final player = AudioCache();

                  player.play('113.mp3');
                },
                child: const Text("click hear"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
