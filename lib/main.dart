import 'package:flutter/material.dart';
import 'package:flutter_application_1/PaymentPage.dart';
import 'package:flutter_application_1/homepage.dart';
import 'package:flutter_application_1/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}
