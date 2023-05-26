import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/PaymentPage.dart';
import 'package:flutter_application_1/views/homepage.dart';
import 'package:flutter_application_1/views/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(appBarTheme: AppBarTheme()),
        debugShowCheckedModeBanner: false,
        home: LoginPage());
  }
}
