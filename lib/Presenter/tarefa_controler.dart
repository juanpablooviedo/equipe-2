import 'package:flutter/material.dart';
import 'package:todo_lovepeople/Model/Cadastro%20de%20Tarefa/API_cadastro_tarefa.dart';

class LoginController extends ChangeNotifier {
  final TarefaApi _authentication;

  LoginController(this._authentication);

  void createTask(String user, String password) {
    _authentication.createTask(title, description, color).then((value) {
      print(value);
    });
  }
}
