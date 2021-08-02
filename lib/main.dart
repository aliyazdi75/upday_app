import 'package:flutter/material.dart';
import 'package:upday_app/screens/home/home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Upday Application',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
