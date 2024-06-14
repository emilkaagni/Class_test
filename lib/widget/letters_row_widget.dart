import 'package:flutter/material.dart';

class LettersRow extends StatefulWidget {
  final String name;

  const LettersRow({super.key, required this.name});

  @override
  _LettersRowState createState() => _LettersRowState();

  static _LettersRowState of(BuildContext context) =>
      context.findAncestorStateOfType<_LettersRowState>()!;
}

class _LettersRowState extends State<LettersRow> {
  List<String> displayedLetters = [];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: displayedLetters
          .map((char) => Text(
                char,
                style: const TextStyle(fontSize: 50),
              ))
          .toList(),
    );
  }

  void addLetter(String letter) {
    setState(() {
      displayedLetters.insert(
          0, letter); // Add letter to the beginning of the list
    });
  }
}
