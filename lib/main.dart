import "package:flutter/material.dart";
import 'package:doctor_app/login/login_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: LoginPage());
  }
}
