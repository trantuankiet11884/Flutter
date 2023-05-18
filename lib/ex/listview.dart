import 'package:flutter/material.dart';

class ListViewStatic extends StatelessWidget {
  const ListViewStatic({super.key});

  static const String _title = 'Flutter Demo';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(_title)),
        body: ListView(
          padding: const EdgeInsets.all(16),
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
              color: Colors.red,
              child: const Text('Entry A'),
            )
          ],
        ));
  }
}
