import 'package:flutter/material.dart';
import 'package:todo_lovepeople/View/Cadastro%20de%20Tarefa/tela_cadastro_tarefa.dart';
import 'package:todo_lovepeople/View/Cadastro%20de%20Usuario/tela_cadastro_usuario.dart';
import 'package:todo_lovepeople/View/Listagem%20de%20Tarefas/tela_listagem_tarefas.dart';
import 'package:todo_lovepeople/View/Login/tela_login.dart';
import 'package:todo_lovepeople/View/Sucesso%20de%20Cadastro/tela_sucesso_cadastro.dart';

class NavigatePage {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "login",
      routes: {
        "login": (context) => LoginPage(),
        "telaCadastro": (context) => RegisterUser(),
        "sucesso": (context) => RegisterSuccess(),
        "telaCadastroTarefa": (context) => CadastroTarefa(),
        "listaTarefa": (context) => TelaTarefas(),
      },
    );
  }
}
