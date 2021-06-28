import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:todo_lovepeople/View/Listagem%20de%20Tarefas/tela_listagem_tarefas.dart';
=======
import 'package:todo_lovepeople/View/Cadastro%20de%20Tarefa/tela_cadastro_tarefa.dart';
>>>>>>> master

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'lovepeople',
<<<<<<< HEAD
      home: TelaTarefas(),
=======
      home: CadastroTarefa(),
      debugShowCheckedModeBanner: false,
>>>>>>> master
    );
  }
}
