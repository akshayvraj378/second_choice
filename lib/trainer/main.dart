// import 'package:flutter/material.dart';
// import 'home.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: LoginDemo(),
//     );
//   }
// }
//
// class LoginDemo extends StatefulWidget {
//   @override
//   _LoginDemoState createState() => _LoginDemoState();
// }
//
// class _LoginDemoState extends State<LoginDemo> {
//   var emailController = TextEditingController();
//   var passController = TextEditingController();
//   var phoneController = TextEditingController();
//
//
//   final loginKey = GlobalKey<FormState>();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         title: Text("Login Page"),
//       ),
//       body: SingleChildScrollView(
//         child: Form(
//           key: loginKey,
//           child: Column(
//             children: [
//               Padding(
//                 //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
//                 padding: EdgeInsets.symmetric(horizontal: 15),
//                 child: TextFormField(
//                   controller: emailController,
//                   validator: (value) {
//                     if (value!.isEmpty||value==null) {
//                       return 'Email required';
//                     }
//                     if (!RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$').hasMatch(value)) {
//                       return "Enter a valid email address";
//                     }
//
//                     // the email is valid
//                     return null;
//                   },
//                   decoration: InputDecoration(
//                       border: OutlineInputBorder(),
//                       labelText: 'Email',
//                       hintText: 'Enter valid email id'),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(
//                     left: 15.0, right: 15.0, top: 15, bottom: 0),
//                 //padding: EdgeInsets.symmetric(horizontal: 15),
//                 child: TextFormField(
//                   controller: passController,
//                   validator: (value) {
//                     if (value!.isEmpty) {
//                       return 'Password required';
//                     }
//                     if (!RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,12}$').hasMatch(value)) {
//                       return "Enter password";
//                     }
//
//                     return null;
//                   },
//                   obscureText: true,
//                   decoration: InputDecoration(
//                       border: OutlineInputBorder(),
//                       labelText: 'Password',
//                       hintText: 'Enter secure password'),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(
//                     left: 15.0, right: 15.0, top: 15, bottom: 0),
//                 //padding: EdgeInsets.symmetric(horizontal: 15),
//                 child: TextFormField(
//                   controller: phoneController,
//                   validator: (value) {
//                     if (value!.isEmpty) {
//                       return 'Phone number required';
//                     }
//                     if (!RegExp(r'^(\+91[\-\s]?)?[0]?(91)?[789]\d{9}$').hasMatch(value)) {
//                       return "Enter phone number";
//                     }
//
//                     return null;
//                   },
//                   decoration: InputDecoration(
//                       border: OutlineInputBorder(),
//                       labelText: 'Phone',
//                       hintText: 'Enter Phone'),
//                 ),
//               ),
//               TextButton(
//                 onPressed: () {
//                   //TODO FORGOT PASSWORD SCREEN GOES HERE
//                 },
//                 child: Text(
//                   'Forgot Password',
//                   style: TextStyle(color: Colors.blue, fontSize: 15),
//                 ),
//               ),
//               Container(
//                 height: 50,
//                 width: 250,
//                 decoration: BoxDecoration(
//                     color: Colors.blue,
//                     borderRadius: BorderRadius.circular(20)),
//                 child: TextButton(
//                   onPressed: () {
//                     if (loginKey.currentState!.validate()) {
//                       ScaffoldMessenger.of(context)
//                           .showSnackBar(SnackBar(content: Text("Success")));
//                     }
//
//                     // Navigator.push(
//                     //     context, MaterialPageRoute(builder: (_) => HomePage()));
//                   },
//                   child: Text(
//                     'Login',
//                     style: TextStyle(color: Colors.white, fontSize: 25),
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 130,
//               ),
//               Text('New User? Create Account')
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
