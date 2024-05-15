
import 'package:daytodaytask/GoogleLoginPage/LoginPage.dart';
import 'package:daytodaytask/LoginPage/WelcomePage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const DayToTask());
}
class DayToTask extends StatelessWidget {
  const DayToTask({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:LoginPage(),
    );
  }
}


