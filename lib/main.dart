import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_lovepeople/View/Cadastro%20de%20Tarefa/tela_cadastro_tarefa.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'lovepeople',
      home: CadastroTarefa(),
      debugShowCheckedModeBanner: false,
    );
  }
}
