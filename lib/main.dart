import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const Application());
}

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return getApplication();
  }
}

Widget getApplication() {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.blueGrey,
      body: SafeArea(
        child: DecoratedBox(
          position: DecorationPosition.background,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/drum.png'),
            ),
          ),
          child: getBady(),
        ),
      ),
    ),
  );
}

Widget getBady() {
  return Column(
    children: [
      Expanded(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: TextButton(
                  onPressed: () {
                    playSound('c1.wav');
                  },
                  child: Text('')),
            ),
            Expanded(
              child: TextButton(
                  onPressed: () {
                    playSound('c2.wav');
                  },
                  child: Text('')),
            ),
          ],
        ),
      ),
      Expanded(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: TextButton(
                  onPressed: () {
                    playSound('h1.wav');
                  },
                  child: Text('')),
            ),
            Expanded(
              child: TextButton(
                  onPressed: () {
                    playSound('h2.wav');
                  },
                  child: Text('')),
            ),
          ],
        ),
      ),
      Expanded(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: TextButton(
                  onPressed: () {
                    playSound('k1.wav');
                  },
                  child: Text('')),
            ),
            Expanded(
              child: TextButton(
                  onPressed: () {
                    playSound('k2.wav');
                  },
                  child: Text('')),
            ),
          ],
        ),
      ),
    ],
  );
}

playSound(String sound) {
  var player = AudioCache();
  player.play(sound);
}
