import 'dart:convert';
<<<<<<< HEAD
=======

>>>>>>> feature/anita/api/cadastroDeTarefa
import 'package:http/http.dart' as http;
import 'package:todo_lovepeople/Model/Login/login.dart';

class Authentication {
  var url = Uri.parse('https://todo-lovepeople.herokuapp.com/auth/local');

  Future<LoginAuthentication> login(String user, String password) async {
    var response =
        await http.post(url, body: {"identifier": user, "password": password});
    var json = jsonDecode(response.body);

    if (response.statusCode == 200) {
      print(response.body);
      return LoginAuthentication.fromJson(json);
    } else {
      throw Exception('Failed to login');
    }
  }
}
