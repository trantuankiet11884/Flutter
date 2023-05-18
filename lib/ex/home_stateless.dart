import 'package:flutter/material.dart';

class HomeStateLess extends StatelessWidget {
  const HomeStateLess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stateless Widget'),
      ),
      body: Container(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Username',
                  labelText: 'Email'),
            ),
            const SizedBox(height: 24),
            TextField(
              obscureText: true,
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  hintText: 'Enter password',
                  labelText: 'Password',
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.visibility),
                    onPressed: () {},
                  )),
            ),
            SizedBox(height: 24),
            Center(
                child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Login'),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  )),
            ))
          ],
        ),
      ),
    );
  }
}
