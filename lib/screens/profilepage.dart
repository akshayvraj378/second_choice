import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ProfilePage1 extends StatefulWidget {
  const ProfilePage1({super.key});

  @override
  State<ProfilePage1> createState() => _ProfilePage1State();
}

class _ProfilePage1State extends State<ProfilePage1> {
  final ProfilePagekey = GlobalKey<FormState>();
  var emailController = TextEditingController();
  var phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
          key: ProfilePagekey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Text("PROFILE",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 150),
                child: Column( children: [
                  Stack(
                    children: [
                      CircleAvatar(
                        radius: 70,
                        backgroundImage: AssetImage('assets/images/car.jpg'),
                      ),
                      Positioned(
                          left: 100,
                          top: 95,
                          child: IconButton(
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStatePropertyAll(Colors.white)),
                              onPressed: () {},
                              icon: Icon(
                                Icons.camera_alt,
                                color: Colors.black45,
                              )))
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp('^[a-zA-Z][a-zA-Z ]*'))
                      ],
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Enter your name';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          hintText: "Name",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(19))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: emailController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Enter your email';
                        }
                        if (!RegExp(
                                r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$')
                            .hasMatch(value)) {
                          return "Enter a valid email address";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          hintText: "email",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(19))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp(r'\d'))
                      ],
                      controller: phoneController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Enter your phone number';
                        }
                        if (!RegExp(r'^(\+91[\-\s]?)?[0]?(91)?[789]\d{9}$')
                            .hasMatch(value)) {
                          return "Enter a valid phone number";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          hintText: "phone number",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(19))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        onPressed: () {
                          if (ProfilePagekey.currentState!.validate()) {
                            ScaffoldMessenger.of(context)
                                .showSnackBar(SnackBar(content: Text('success')));
                          }
                        },
                        child: Text(
                          'Update',
                          style: TextStyle(fontSize: 19, color: Colors.blue),
                        )),
                  )
                ]),
              ),
            ],
          )),
    );
  }
}
