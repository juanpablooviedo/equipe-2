import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'View/Cadastro de Usuario/tela_cadastro_usuario.dart'; 

main () {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'lovepeople',
      home: CadastroUsuario(),
      debugShowCheckedModeBanner: false,
    );    
  }
}
