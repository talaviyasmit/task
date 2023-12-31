import 'package:flutter/material.dart';
import 'package:flutter_test_application/Homepage/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter test',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}
