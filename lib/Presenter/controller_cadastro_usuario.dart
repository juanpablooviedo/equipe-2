import 'package:flutter/material.dart';
import 'package:todo_lovepeople/Model/Cadastro%20de%20Usuario/api_cadastro_usuario.dart';

class UserController extends ChangeNotifier {
  final Authentication _authentication;

  UserController(this._authentication);

  void registeruser(context, String username, String email, String password) {
    _authentication.registeruser(username, email, password).then((value) {
      // if (username != '' && email != '' && password != '') {
      //   Navigator.of(context).pushReplacementNamed('sucesso').then((value) {}); //TODO: ERRO!
      //   print('NAVIGATOR OK!');
      // }
    });
  }
}
