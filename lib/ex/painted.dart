import 'package:flutter/material.dart';

class Painted extends StatefulWidget {
  const Painted({super.key});

  @override
  State<Painted> createState() => _PaintedState();
}

class _PaintedState extends State<Painted> {
  var _bgColor = Colors.amber;
  void _changeColor(var color) {
    setState(() {
      _bgColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Guesture Demo')),
      body: GestureDetector(
        child: Container(color: _bgColor),
        onTap: () => _changeColor(Colors.lightBlue),
        onDoubleTap: () => _changeColor(Colors.red),
        onLongPress: () => _changeColor(Colors.lightGreen),
        onHorizontalDragEnd: (_) => _changeColor(Colors.purple),
        onVerticalDragEnd: (_) => _changeColor(Colors.tealAccent),
      ),
    );
  }
}
