import 'package:flutter/material.dart';

class Login1 extends StatefulWidget {
  const Login1({super.key});

  @override
  State<Login1> createState() => _Login1State();
}

class _Login1State extends State<Login1> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(child: Row(mainAxisAlignment: MainAxisAlignment.end,children: [ IconButton(
        icon: Image.asset(
            'assets/images/facebook.png',cacheHeight: 40,cacheWidth: 40),
        onPressed: () {
          print("clicked");
        },
      ), IconButton(
        icon: Image.asset('assets/images/linkedin.jpg',cacheHeight: 40,cacheWidth: 40),
        onPressed: () {
          print("clicked");
        },
      ),
        IconButton(
          icon: Image.asset('assets/images/google_logo_icon.png',cacheHeight: 40,cacheWidth: 40),
          onPressed: () {
            print("clicked");
          },
        )]),
          height: size.height,
          width: size.width,
          decoration: BoxDecoration(
              image: DecorationImage(  fit: BoxFit.cover,
                  image: AssetImage('assets/images/car.jpg')))),
    );
  }
}
