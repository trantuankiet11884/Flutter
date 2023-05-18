import 'package:flutter/material.dart';

class PageViewC extends StatefulWidget {
  const PageViewC({super.key});

  @override
  State<PageViewC> createState() => _PageViewCState();
}

class _PageViewCState extends State<PageViewC> {
  final pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Demo')),
      body: PageView(
        scrollDirection: Axis.horizontal,
        controller: pageController,
        children: const [
          Center(
            child: Text(
              'First Page',
              style: TextStyle(fontSize: 32),
            ),
          ),
          Center(
            child: Text(
              'Second Page',
              style: TextStyle(fontSize: 32),
            ),
          ),
          Center(
            child: Text(
              'Third Page',
              style: TextStyle(fontSize: 32),
            ),
          )
        ],
      ),
    );
  }
}
