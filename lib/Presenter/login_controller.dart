import 'package:flutter/material.dart';
import 'package:todo_lovepeople/Model/Login/API_login.dart';
import 'package:todo_lovepeople/Utils/globals.dart' as globals;

class LoginController extends ChangeNotifier {
  final Authentication _authentication;

  LoginController(this._authentication);

  void login(String user, String password) {
    _authentication.login(user, password).then((value) {
      print(value);
      globals.token = value.jwt;
      // criar caminho para pagina de tarefas
    });
  }
}
