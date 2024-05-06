import 'package:class_test/widget/name_button_widget.dart';
import 'package:flutter/material.dart';

class GridViewScreen extends StatelessWidget {
  final String name = "Emil";

  const GridViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('class test gridview'),
      ),
      body: Center(
        child: GridView.count(
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: name
              .split('')
              .map((char) => NameButtonWidget(
                    char: char,
                  ))
              .toList(),
        ),
      ),
    );
  }
}
