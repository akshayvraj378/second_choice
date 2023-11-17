import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
      body: Container(
          height: size.height,
          width: size.width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/car.jpg'))),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Column(
                  children: [
                    Text('SHIFT TO',
                        style: TextStyle(color: Colors.white54, fontSize: 30)),
                    Text('RACE',style: TextStyle(color: Colors.red,fontSize: 18)),
                    Text('MODE',style: TextStyle(fontSize: 29,color: Colors.white54),)
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(17.0),
                      child: TextField(
                        autofocus: true,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp("[0-9]+"))
                        ],
                        style: const TextStyle(color: Colors.white),
                        cursorColor: Colors.redAccent,
                        maxLength: 12,
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.transparent,
                            hintText: 'Enter your email',
                            hintStyle: TextStyle(color: Colors.white70),
                            label: const Text('Email',
                                style: TextStyle(fontStyle: FontStyle.italic)),
                            border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 14, color: Colors.white),
                                borderRadius: BorderRadius.circular(100))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(17.0),
                      child: TextField(
                        obscureText: true,
                        obscuringCharacter: '*',
                        style: const TextStyle(color: Colors.white),
                        cursorColor: Colors.redAccent,
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.transparent,
                            hintText: 'Enter the password',
                            hintStyle: TextStyle(color: Colors.white70),
                            label: const Text('Password'),
                            border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 14, color: Colors.green),
                                borderRadius: BorderRadius.circular(50))),
                      ),
                    ),
                    ElevatedButton(
                        style: const ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.black26)),
                        onPressed: () {},
                        child: const Text(
                          'Login',
                          style: TextStyle(fontSize: 12),
                        ))
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconButton(
                          icon: Image.asset('assets/images/facebook.png',
                              cacheHeight: 40, cacheWidth: 40),
                          onPressed: () {
                            print("clicked");
                          },
                        ),
                        IconButton(
                          icon: Image.asset('assets/images/linkedin.jpg',
                              cacheHeight: 40, cacheWidth: 40),
                          onPressed: () {
                            print("clicked");
                          },
                        ),
                        IconButton(
                          icon: Image.asset(
                              'assets/images/google_logo_icon.png',
                              cacheHeight: 40,
                              cacheWidth: 40),
                          onPressed: () {
                            print("clicked");
                          },
                        )
                      ]),
                ),
              ],
            ),
          )),
    );
  }
}
