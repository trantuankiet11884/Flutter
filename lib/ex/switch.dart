import 'dart:html';

import 'package:flutter/material.dart';

class SwitchScreen extends StatefulWidget {
  const SwitchScreen({super.key});

  @override
  State<SwitchScreen> createState() => _SwitchScreenState();
}

class _SwitchScreenState extends State<SwitchScreen> {
  bool _isOn = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter'),
      ),
      body: Row(
        children: [
          const Text(
            'Wifi',
            style: TextStyle(fontSize: 24),
          ),
          const Spacer(),
          Switch(
              value: _isOn,
              onChanged: (bool? value) {
                setState(() => _isOn = value!);
              })
        ],
      ),
    );
  }
}
