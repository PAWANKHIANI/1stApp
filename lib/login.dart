// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:hackathon001/register.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/Vector (1).png"))),
          ),
          TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Enter Your Email",
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
                border: OutlineInputBorder(), hintText: "Password"),
            obscureText: true,
          ),
          TextButton(
            onPressed: () {},
            child: Text('LOGIN'),
            style: TextButton.styleFrom(
                primary: Colors.white,
                textStyle: TextStyle(fontSize: 20.0),
                backgroundColor: Colors.black),
          ),
          ElevatedButton(
            child: const Text('Register'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Register()),
              );
            },
          )
        ],
      ),
    ));
  }
}
