import 'package:flutter/material.dart';
import 'package:second_choice/screens/login.dart';
import 'package:second_choice/screens/profilepage.dart';
import 'package:second_choice/screens/regtest.dart';
import 'package:second_choice/screens/settings.dart';
import 'package:second_choice/trash/jjj.dart';
import 'package:second_choice/trash/splashscreen.dart';
import 'package:second_choice/trash/calender';

main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Login12()
      ,);
  }
}
