import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hackathon001/login.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(
        Duration(seconds: 5),
        () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Login()),
            ));
    return Scaffold(
      backgroundColor: Colors.pink,
      body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/Vector.png")))),
    );
  }
}
