import 'dart:async';

import 'package:flutter/material.dart';

import '../screens/login.dart';

class SplashSc extends StatefulWidget {
  const SplashSc({super.key});

  @override
  State<SplashSc> createState() => _SplashScState();
}

class _SplashScState extends State<SplashSc> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(
        seconds: 4,
      ),
          () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const Login12(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(image: AssetImage('assets/images/carcar.png')),
          Padding(
            padding: EdgeInsets.only(top: 90),
            child: CircularProgressIndicator(
              color: Colors.black,
            ),
          )
        ],
      ),
    );
  }
}