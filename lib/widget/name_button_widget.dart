import 'package:flutter/material.dart';

class NameButtonWidget extends StatefulWidget {
  final String char;

  const NameButtonWidget({super.key, required this.char});

  @override
  _NameButtonState createState() => _NameButtonState();
}

class _NameButtonState extends State<NameButtonWidget> {
  bool _isClicked = false;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          _isClicked = !_isClicked;
        });
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: _isClicked
            ? const Color.fromARGB(255, 233, 220, 82)
            : const Color.fromARGB(255, 231, 18, 228),
      ),
      child: Text(
        widget.char,
        style: const TextStyle(fontSize: 50),
      ),
    );
  }
}
