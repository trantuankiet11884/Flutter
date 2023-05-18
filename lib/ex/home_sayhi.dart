import 'package:flutter/material.dart';

class HomeSayHi extends StatefulWidget {
  const HomeSayHi({super.key});

  @override
  State<HomeSayHi> createState() => _HomeSayHiState();
}

class _HomeSayHiState extends State<HomeSayHi> {
  String _message = '';
  void _sayHi() {
    setState(() {
      _message = 'Hi !!!';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Say Hi App'),
      ),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: _sayHi,
              child: const Text('Click me!'),
            ),
            Text(
              _message,
              style: TextStyle(fontSize: 24),
            )
          ],
        ),
      ),
    );
  }
}
