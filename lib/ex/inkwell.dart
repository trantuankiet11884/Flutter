import 'package:flutter/material.dart';

class InkWellScreen extends StatefulWidget {
  const InkWellScreen({super.key});

  @override
  State<InkWellScreen> createState() => _InkWellScreenState();
}

class _InkWellScreenState extends State<InkWellScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter')),
      body: Center(
        child: InkWell(
          onTap: () {},
          child: Image.asset('assets/images/thedog.jpg'),
        ),
      ),
    );
  }
}
