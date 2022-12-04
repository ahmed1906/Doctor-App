import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class AuthService {
  // sign in user
  Future<bool> signInUser({
    required BuildContext context,
    required String username,
    required String password,
  }) async {
    try {
      http.Response res = await http.post(
        Uri.parse('localhost:3000/api/signin'),
        body: jsonEncode({
          'username': username,
          'password': password,
        }),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );
      return true;
    } catch (e) {
      log(e.toString());
    }
    return false;
  }
}
