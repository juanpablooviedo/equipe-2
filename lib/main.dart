import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_lovepeople/Model/Cadastro%20de%20Tarefa/API_cadastro_tarefa.dart';
import 'package:todo_lovepeople/Model/Login/API_login.dart';
import 'package:todo_lovepeople/Presenter/login_controller.dart';
import 'package:todo_lovepeople/Presenter/tarefa_controller.dart';
import 'View/Cadastro de Tarefa/tela_cadastro_tarefa.dart';
import 'View/Cadastro de Usuario/tela_cadastro_usuario.dart';
import 'View/Listagem de Tarefas/tela_listagem_tarefas.dart';
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
<<<<<<< HEAD
        Provider<LoginController>(
            create: (_) => LoginController(Authentication())),
=======
        ChangeNotifierProvider<LoginController>(
          create: (_) => LoginController(Authentication()),
        ),
        ChangeNotifierProvider<TarefaController>(
            create: (_) => TarefaController(TarefaApi())),
        //Provider<SomethingElse>(create: (_) => SomethingElse()),
        //Provider<AnotherThing>(create: (_) => AnotherThing()),
>>>>>>> feature/anita/api/cadastroDeTarefa
      ],
      child: MaterialApp(
        initialRoute: "login",
        routes: {
          "login": (context) => LoginPage(),
          "telaCadastro": (context) => RegisterUser(),
          "sucesso": (context) => RegisterSuccess(),
          "telaCadastroTarefa": (context) => CadastroTarefa(),
          "listaTarefa": (context) => TelaTarefas(),
          "recupera": (context) => RecuperaSenha(),
        },
        title: 'lovepeople',
        home: LoginPage(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
