import 'package:flutter/material.dart';

class Register1 extends StatefulWidget {
  const Register1({super.key});

  @override
  State<Register1> createState() => _Register1State();
}

class _Register1State extends State<Register1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: AppBar(
            backgroundColor: Colors.black,
            centerTitle: true,
            title: const Center(
              child: Column(
                children: [
                  Text('Register',
                      style: TextStyle(
                          color: Colors.white,
                          fontStyle: FontStyle.italic,
                          fontSize: 33)),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Register to continue',
                      style: TextStyle(fontSize: 11, letterSpacing: 2,color: Colors.white),
                    ),
                  )
                ],
              ),
            )),
      ),
      body: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        IconButton(
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
        ),
      ]),
    );
  }
}
