import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:todo_lovepeople/Model/Cadastro%20de%20Usuario/novoUsuario.dart';

class UserRepository {
  Future<UserNew?> register(String name, String email, String password) {
    Map body = {
      'username': name,
      'email': email,
      'password': password,
    };
    return http
        .post(
            Uri.parse(
                'https://todo-lovepeople.herokuapp.com/auth/local/register'),
            body: body)
        .then((value) async {
      if (value.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(value.body);
        final login = UserNew.fromJson(json);

        return login;
      } else {
        return null;
      }
    });
  }
}
