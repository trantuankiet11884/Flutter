import 'package:flutter/material.dart';

class Grid extends StatelessWidget {
  const Grid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Demo')),
      body: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        children: [
          Container(
            alignment: Alignment.center,
            color: Colors.teal,
            child: const Text('Entry A'),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.teal,
            child: const Text('Entry A'),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.teal,
            child: const Text('Entry A'),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.teal,
            child: const Text('Entry A'),
          ),
        ],
      ),
    );
  }
}
