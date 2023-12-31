import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:second_choice/screens/regtest.dart';

class Login12 extends StatefulWidget {
  const Login12({super.key});

  @override
  State<Login12> createState() => _Login12State();
}

class _Login12State extends State<Login12> {
  final loginkey = GlobalKey<FormState>();
bool pass= false;
var passwordController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Form(
        key: loginkey,
        child: ListView(
          children: [Container(
              height: size.height,
              width: size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/car.jpg'))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Column(
                    children: [
                      Text('SHIFT TO',
                          style: TextStyle(color: Colors.white54, fontSize: 30)),
                      Text('RACE',
                          style: TextStyle(color: Colors.red, fontSize: 18)),
                      Text(
                        'MODE',
                        style: TextStyle(fontSize: 29, color: Colors.white54),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(17.0),
                        child: TextFormField(style: TextStyle(color: Colors.white),
                          autofocus: true,
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.transparent,
                              label: Text('Email',
                                  style: TextStyle(color: Colors.white54)),
                              hintText: 'Enter your email',
                              hintStyle: TextStyle(color: Colors.white70),
                              border: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(width: 14, color: Colors.white),
                                  borderRadius: BorderRadius.circular(100))),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'please enter your email';
                            }
                            return null;
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(17.0),
                        child: TextFormField(
                          controller: passwordController,
                          obscureText:!pass ,style: TextStyle(color: Colors.white),
                          cursorColor: Colors.redAccent,
                          decoration: InputDecoration(
                            suffixIcon: IconButton(onPressed: () {
                              setState(() {
                                pass=!pass;
                              });
                            }, icon: Icon(pass
                                ? Icons.visibility
                                : Icons.visibility_off),),
                              filled: true,
                              fillColor: Colors.transparent,
                              hintText: 'Enter the password',
                              hintStyle: TextStyle(color: Colors.white70),
                              label: const Text('Password',style: TextStyle(color: Colors.white54)),
                              border: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(width: 14, color: Colors.green),
                                  borderRadius: BorderRadius.circular(50))),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'please confirm your password';
                            }
                            return null;
                          },
                        ),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Forgot Password',
                                style: TextStyle(color: Colors.lightBlue),
                              ),
                            ],
                          )),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                            onPressed: () {
                              if (loginkey.currentState!.validate()) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(content: Text('success')));
                              }
                            },
                            child: const Text(
                              'Login',
                              style: TextStyle(fontSize: 19, color: Colors.blue),
                            )),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Do not have an account ? ',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20)),
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Regis(),
                                    ));
                              },
                              child: Text('Register'))
                        ],
                      )
                    ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          IconButton(
                            icon: Image.asset(
                                'assets/images/google_logo_icon.png',
                                cacheHeight: 40,
                                cacheWidth: 40),
                            onPressed: () {
                              print("clicked");
                            },
                          ),
                          IconButton(
                            icon: Image.asset('assets/images/insta.jpeg',
                                cacheHeight: 40, cacheWidth: 40),
                            onPressed: () {
                              print("clicked");
                            },
                          )
                        ]),
                  ),
                ],
              )),]
        ),
      ),
    );
  }
}
