import 'package:flutter/material.dart';

class NameButtonWidget extends StatefulWidget {
  final String char;

  const NameButtonWidget({super.key, required this.char});

  @override
  _NameButtonState createState() => _NameButtonState();
}

class _NameButtonState extends State<NameButtonWidget> {
  bool isVisible = true;
  bool isFirstClick = true;
  @override
  Widget build(BuildContext context) {
    return Visibility(
        visible: isVisible,
        child: ElevatedButton(
          onPressed: () {
            setState(() {
              if (isFirstClick) {
                // Change color on first click
                isFirstClick = false;
              } else {
                // Disappear on second click
                isVisible = false;
              }
            });
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: isFirstClick
                ? const Color.fromARGB(255, 233, 220, 82)
                : const Color.fromARGB(255, 231, 18, 228),
          ),
          child: Text(
            widget.char,
            style: const TextStyle(fontSize: 50),
          ),
        ));
  }
}
