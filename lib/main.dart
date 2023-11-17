import 'package:flutter/material.dart';
import 'package:second_choice/screens/login.dart';
import 'package:second_choice/screens/register.dart';

main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Login1()
      ,);
  }
}
