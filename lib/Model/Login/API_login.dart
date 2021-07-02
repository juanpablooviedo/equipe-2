import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:todo_lovepeople/Model/Login/login.dart';

class Authentication {
  var url = Uri.parse('https://todo-lovepeople.herokuapp.com/auth/local');
  var header = {HttpHeaders.authorizationHeader: "Bearer {token}"};

  Future<LoginAuthentication> login(String user, String password) async {
    var response =
        await http.post(url, body: {"identifier": user, "password": password});
    var json = jsonDecode(response.body);
    return LoginAuthentication.fromJson(json);
  }
}
