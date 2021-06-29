import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_lovepeople/View/Cadastro%20de%20Tarefa/tela_cadastro_tarefa.dart';
import 'package:todo_lovepeople/View/Listagem%20de%20Tarefas/tela_listagem_tarefas.dart';
import 'package:todo_lovepeople/View/Sucesso%20de%20Cadastro/tela_sucesso_cadastro.dart';
import 'View/Login/tela_login.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RegisterSuccess(),
      debugShowCheckedModeBanner: false,
    );
  }
}
