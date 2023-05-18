import 'dart:html';

import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Demo')),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
                decoration: BoxDecoration(color: Colors.lightBlue),
                child: Text(
                  'Drawer Header',
                  textScaleFactor: 1.5,
                  style: TextStyle(color: Colors.white),
                )),
            ListTile(
              leading: const Icon(Icons.message),
              title: const Text('Message'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.account_circle),
              title: const Text('Profile'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {},
            )
          ],
        ),
      ),
      body: const Center(
        child: Text(
          'Content here',
          textScaleFactor: 4,
        ),
      ),
    );
  }
}
