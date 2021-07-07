import 'dart:convert';
import 'dart:async';
import 'package:http/http.dart' as http;

import 'package:todo_lovepeople/Model/Cadastro%20de%20Usuario/usuario_altenticacao.dart';

// resumen de app to-do lovepeople equipe-2:
// seguir estudiando nuevos widgets (UI)
// estudiar mejor arquitetura de software MVP (M[MODEL: repositor, integração com api] V[VIEW: tela, UI] P[PRESENTER: controller] )
// estudiar mejor gerenciamento de estado (Providers)
// estudiar mejor rutas nominales (Routes)
// reforzar conociemientos sobre api (Rest, Post, Json, Future, async, etc)
// reforzar conociemientos sobre git/github (versionamiento de codigo)

class NewAuthentication {
  var url =
      Uri.parse('https://todo-lovepeople.herokuapp.com/auth/local/register');

  Future<UserAuthentication> registeruser(
      String username, String email, String password) async {
    var response = await http.post(url,
        body: {"username": username, "email": email, "password": password});
    var json = jsonDecode(response.body);

    if (response.statusCode == 200) {
      print('API OK! statusCode: ${response.statusCode}');
      return UserAuthentication.fromJson(json);
    } else {
      print('API ERROR! statusCode: ${response.statusCode}');
      throw Exception(
          'Falha no cadastro de usuário, por favor, tente mais tarde');
    }
  }
}
