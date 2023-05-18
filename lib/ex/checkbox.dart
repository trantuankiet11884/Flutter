import 'package:flutter/material.dart';

class CheckBoxScreen extends StatefulWidget {
  const CheckBoxScreen({super.key});

  @override
  State<CheckBoxScreen> createState() => _CheckBoxScreenState();
}

class _CheckBoxScreenState extends State<CheckBoxScreen> {
  bool _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fullter'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Transform.scale(
                scale: 2,
                child: Checkbox(
                  value: _isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      _isChecked = value!;
                    });
                  },
                )),
            const Text(
              'Remember me',
              style: TextStyle(fontSize: 24),
            )
          ],
        ),
      ),
    );
  }
}
