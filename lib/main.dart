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

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: TextButton(
              style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.red),
                  shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ))),
              onPressed: () async {
                _play('note1.wav');
              },
              child: const Text("")),
        ),
        Expanded(
          child: TextButton(
              style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.orange),
                  shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ))),
              onPressed: () async {
                _play('note2.wav');
              },
              child: const Text("")),
        ),
        Expanded(
          child: TextButton(
              style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.yellow),
                  shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ))),
              onPressed: () async {
                _play('note3.wav');
              },
              child: const Text("")),
        ),
        Expanded(
          child: TextButton(
              style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.lightGreen),
                  shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ))),
              onPressed: () async {
                _play('note4.wav');
              },
              child: const Text("")),
        ),
        Expanded(
          child: TextButton(
              style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.green),
                  shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ))),
              onPressed: () async {
                _play('note5.wav');
              },
              child: const Text("")),
        ),
        Expanded(
          child: TextButton(
              style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.blue),
                  shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ))),
              onPressed: () async {
                _play('note6.wav');
              },
              child: const Text("")),
        ),
        Expanded(
          child: TextButton(
              style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.purple),
                  shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ))),
              onPressed: () async {
                _play('note7.wav');
              },
              child: const Text("")),
        ),
      ],
    );
  }
}
