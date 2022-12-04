import 'dart:developer';

import 'package:doctor_app/screen/home_screen.dart';
import 'package:flutter/material.dart';

import '../services/auth_service.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _State();
}

class _State extends State<LoginPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final AuthService authService = AuthService();

  void onLogin() async {
    var res = await authService.signInUser(
        context: context,
        username: nameController.text,
        password: passwordController.text);

    if (res) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(),
        body: Padding(
            padding: EdgeInsets.fromLTRB(0.0, 150.0, 0.0, 0.0),
            child: ListView(
              children: <Widget>[
                Container(
                    padding: EdgeInsets.all(10),
                    child: Image.asset(
                      'assets/mainTitle.jpg',
                      fit: BoxFit.contain,
                      width: 300,
                    ),
                    alignment: Alignment.center),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: nameController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'User Name',
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                ),
                Container(
                    height: 50,
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: TextButton(
                      child: const Text('Login'),
                      onPressed: () {
                        onLogin();
                      },
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.greenAccent,
                          foregroundColor: Colors.black),
                    )),
              ],
            )));
  }
}
