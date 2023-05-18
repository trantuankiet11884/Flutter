import 'package:flutter/material.dart';

class YourName extends StatefulWidget {
  const YourName({super.key});

  @override
  State<YourName> createState() => _YourNameState();
}

class _YourNameState extends State<YourName> {
  String _message = '';
  final _inputController = TextEditingController();
  void _sayHi() {
    setState(() {
      _message = 'Hello ${_inputController.text} !!!';
      _inputController.clear();
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
            TextField(
              controller: _inputController,
              keyboardType: TextInputType.name,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Your name',
                hintText: 'Enter your name',
              ),
            ),
            SizedBox(
              height: 24,
            ),
            ElevatedButton(
              onPressed: _sayHi,
              child: const Text('Click me!'),
            ),
            SizedBox(
              height: 24,
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
