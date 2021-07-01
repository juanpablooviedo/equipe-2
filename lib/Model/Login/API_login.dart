import 'dart:convert';
import 'dart:html';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:todo_lovepeople/Model/Login/login.dart';

class Authentication {
  var url = Uri.parse('https://todo-lovepeople.herokuapp.com//auth/local');

  Future<LoginAuthentication> login(String user, String password) async {
    var response =
        await http.post(url, body: {"identifier": user, "password": password});
    if (response.statusCode == 200) {
      //return LoginAuthentication.fromJson(response.body);
    }
    return LoginAuthentication();
  }
}
