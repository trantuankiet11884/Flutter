import 'package:flutter/material.dart';

class ImageFromAssets extends StatelessWidget {
  const ImageFromAssets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Demo App'),
        ),
        body: Container(
          padding: const EdgeInsets.all(16),
          alignment: Alignment.center,
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage(
              'assets/images/thedog.jpg',
            ),
            fit: BoxFit.fill,
            opacity: 0.5,
          )),
          child: const Text(
            'Image Background ',
            style: TextStyle(
                color: Colors.white, fontSize: 32, fontWeight: FontWeight.w600),
          ),
        ));
  }
}
