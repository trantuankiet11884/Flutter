import 'package:flutter/material.dart';

class Slivers extends StatelessWidget {
  const Slivers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scrollbar(
          child: CustomScrollView(
        slivers: [
          const SliverAppBar(
            pinned: true,
            floating: true,
            expandedHeight: 160,
            backgroundColor: Colors.blue,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Sliver Bar'),
              background: FlutterLogo(),
            ),
          ),
          const SliverToBoxAdapter()
        ],
      )),
    );
  }
}
