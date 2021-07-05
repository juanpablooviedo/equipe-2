import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Model/Cadastro de Usuario/api_cadastro_usuario.dart';
import 'Presenter/controller_cadastro_usuario.dart';
import 'View/Cadastro de Usuario/tela_cadastro_usuario.dart';
import 'View/Login/tela_login.dart';
import 'View/Recuperar Login e Senha/recupera.dart';
import 'View/Sucesso de Cadastro/tela_sucesso_cadastro.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        //Provider<SomethingElse>(create: (_) => SomethingElse()),
        ChangeNotifierProvider<UserController>(
          create: (_) => UserController(Authentication()),
        ),
      ],
      child: MaterialApp(
        initialRoute: "login",
        routes: {
          "login": (context) => LoginPage(),
          "telaCadastro": (context) => RegisterUser(),
          "sucesso": (context) => RegisterSuccess(),
          "recupera": (context) => RecuperaSenha(),
        },
        title: 'lovepeople',
        home: LoginPage(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}