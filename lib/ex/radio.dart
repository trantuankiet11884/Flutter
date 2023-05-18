import 'package:flutter/material.dart';

class RadioScreen extends StatefulWidget {
  const RadioScreen({super.key});

  @override
  State<RadioScreen> createState() => _RadioScreenState();
}

class _RadioScreenState extends State<RadioScreen> {
  int _groupValue = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Your favourite?',
            style: TextStyle(fontSize: 32),
          ),
          ListTile(
            title: const Text('Playing sports'),
            leading: Radio(
              value: 0,
              groupValue: _groupValue,
              onChanged: (int? value) {
                setState(() {
                  _groupValue = value!;
                });
              },
            ),
          ),
          ListTile(
            title: const Text('Watching TV'),
            leading: Radio(
              value: 0,
              groupValue: _groupValue,
              onChanged: (int? value) {
                setState(() {
                  _groupValue = value!;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
