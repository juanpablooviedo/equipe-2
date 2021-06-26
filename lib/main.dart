import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_lovepeople/View/Listagem%20de%20Tarefas/tela_listagem_tarefas.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'lovepeople',
      home: TelaTarefas(),
    );
  }
}
