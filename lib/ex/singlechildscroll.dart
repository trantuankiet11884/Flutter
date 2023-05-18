import 'package:flutter/material.dart';

class SingleScroll extends StatelessWidget {
  const SingleScroll({super.key});

  static const String _title = 'Flutter Code';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_title)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(100),
              color: Colors.lightBlue,
              child: const Text('Entry A'),
            ),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(100),
              color: Colors.lightGreen,
              child: const Text('Entry A'),
            ),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(100),
              color: Colors.amber,
              child: const Text('Entry A'),
            )
          ],
        ),
      ),
    );
  }
}
