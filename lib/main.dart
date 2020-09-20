import 'package:flutter/material.dart';
import 'package:ComCon/pages/LoginPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'covid symptom app',
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}