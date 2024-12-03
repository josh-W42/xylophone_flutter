import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      body: SafeArea(child: XylophoneApp()),
    ),
  ));
}

class XylophoneApp extends StatefulWidget {
  const XylophoneApp({super.key});

  @override
  State<XylophoneApp> createState() => _XylophoneAppState();
}

class _XylophoneAppState extends State<XylophoneApp> {
  AudioPlayer? _player;

  @override
  void dispose() {
    _player?.dispose();
    super.dispose();
  }

  void _play(String path) {
    _player?.dispose();
    final player = _player = AudioPlayer();
    player.play(AssetSource(path));
  }

  Widget getButton(String asset, MaterialColor color) {
    return (Expanded(
      child: TextButton(
          style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(color),
              shape: const WidgetStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.zero,
              ))),
          onPressed: () async {
            _play(asset);
          },
          child: const Text("")),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        getButton('note1.wav', Colors.red),
        getButton('note2.wav', Colors.orange),
        getButton('note3.wav', Colors.yellow),
        getButton('note4.wav', Colors.lightGreen),
        getButton('note5.wav', Colors.teal),
        getButton('note6.wav', Colors.blue),
        getButton('note7.wav', Colors.purple),
      ],
    );
  }
}
