
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_lovepeople/View/Sucesso%20de%20Cadastro/tela_sucesso_cadastro.dart';

main () {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RegisterSuccess(home: '',),
      debugShowCheckedModeBanner: false,
    );
  }
}