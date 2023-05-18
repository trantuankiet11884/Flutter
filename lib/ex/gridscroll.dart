import 'package:flutter/material.dart';

class GridScroll extends StatelessWidget {
  const GridScroll({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Demo')),
        body: Scrollbar(
          thickness: 5,
          radius: const Radius.circular(5),
          child: GridView.count(
            crossAxisCount: 2,
            scrollDirection: Axis.vertical,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            children: [
              Container(
                alignment: Alignment.center,
                color: Colors.teal,
                child: const Text('Entry A'),
              ),
              Container(
                alignment: Alignment.center,
                color: Colors.teal,
                child: const Text('Entry A'),
              ),
              Container(
                alignment: Alignment.center,
                color: Colors.teal,
                child: const Text('Entry A'),
              ),
              Container(
                alignment: Alignment.center,
                color: Colors.teal,
                child: const Text('Entry A'),
              ),
              Container(
                alignment: Alignment.center,
                color: Colors.teal,
                child: const Text('Entry A'),
              ),
              Container(
                alignment: Alignment.center,
                color: Colors.teal,
                child: const Text('Entry A'),
              ),
              Container(
                alignment: Alignment.center,
                color: Colors.teal,
                child: const Text('Entry A'),
              ),
            ],
          ),
        ));
  }
}
