import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color randomColor = const Color(0xFFFFFFFF);
  void changeColor() {
    setState(() {
      randomColor = Color.fromARGB(
        Random().nextInt(256),
        Random().nextInt(256),
        Random().nextInt(256),
        Random().nextInt(256),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          changeColor();
        },
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: randomColor,
          child: const Center(
            child: Text("Hello there"),
          ),
        ),
      ),
    );
  }
}
