import 'package:flutter/material.dart';

class ListViewN extends StatefulWidget {
  const ListViewN({super.key});

  @override
  State<ListViewN> createState() => _ListViewNState();
}

class _ListViewNState extends State<ListViewN> {
  final entries = ['A', 'B', 'C', 'D', 'E', 'F', 'G'];
  final colorCodes = [100, 300, 500, 600, 700, 800, 900];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Demo')),
      body: ListView.separated(
        padding: const EdgeInsets.all(8),
        itemCount: entries.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 100,
            alignment: Alignment.center,
            color: Colors.amber[colorCodes[index]],
            child: Text('Entry ${entries[index]}'),
          );
        },
        separatorBuilder: (context, index) => const Divider(),
      ),
    );
  }
}
