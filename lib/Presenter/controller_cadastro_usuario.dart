import 'package:flutter/material.dart';
import 'package:todo_lovepeople/Model/Cadastro%20de%20Usuario/api_cadastro_usuario.dart';
import 'package:todo_lovepeople/Utils/globals.dart' as globals;

class UserController extends ChangeNotifier {

  final Authentication _authentication;
  UserController(this._authentication);
  
  void registeruser(String username, String email, String password, BuildContext context) async {

    _authentication.registeruser(username, email, password).then((value) {      

      // guardo o token que a api envio para o novo usuario cadastrado para que possa usar nar areas internas do app que precisam de identificação (outras telas, exeto login)
      globals.token = value.jwt;       

      print('NAVIGATOR OK! pushReplacementNamed("sucesso")');
      Navigator.of(context).pushReplacementNamed("sucesso");        
    });
  }
}