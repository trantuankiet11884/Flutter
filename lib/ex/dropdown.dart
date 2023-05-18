import 'package:flutter/material.dart';

class DropDownScreen extends StatefulWidget {
  const DropDownScreen({super.key});

  @override
  State<DropDownScreen> createState() => _DropDownScreenState();
}

class _DropDownScreenState extends State<DropDownScreen> {
  String _dropdownValue = 'One';
  var _dropdownItems = ['One', 'Two', 'Three', 'Four']
      .map<DropdownMenuItem<String>>((String value) =>
          DropdownMenuItem<String>(value: value, child: Text(value)))
      .toList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter')),
      body: Center(
        child: DropdownButton(
          dropdownColor: Colors.black,
          style: const TextStyle(color: Colors.white, fontSize: 24),
          value: _dropdownValue,
          items: _dropdownItems,
          onChanged: (String? value) {
            setState(() {
              _dropdownValue = value!;
            });
          },
        ),
      ),
    );
  }
}
