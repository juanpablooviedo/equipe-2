import 'package:flutter/material.dart';
import 'package:todo_lovepeople/Presenter/login_controller.dart';
import 'package:todo_lovepeople/Utils/dot_widget.dart';
import 'my_flutter_app_icons.dart';
import 'package:provider/provider.dart';

class LoginAccess extends StatefulWidget {
  const LoginAccess({Key? key}) : super(key: key);

  @override
  _LoginAccessState createState() => _LoginAccessState();
}

class _LoginAccessState extends State<LoginAccess> {
  final _formKey = GlobalKey<FormState>();
  bool _secureText = true;
  final _ctrlLogin = TextEditingController();
  final _ctrlSenha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(top: 10),
        child: Form(
          key: _formKey,
          child: Container(
            padding: EdgeInsets.only(top: 5),
            margin: EdgeInsets.all(20.0),
            child: Column(children: [
              TextFormField(
                  controller: _ctrlLogin,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Esse campo é obrigatório!';
                    }
                  },
                  decoration: InputDecoration(
                      hintText: "Número de telefone, email ou CPF",
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        fontFamily: "Tahoma",
                        color: Color(0xFF3101B9),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      fillColor: Colors.white,
                      filled: true)),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: _ctrlSenha,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Esse campo é obrigatório!';
                  }
                },
                decoration: InputDecoration(
                  hintText: "Senha",
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.normal,
                    fontSize: 20,
                    fontFamily: "Tahoma",
                    color: Color(0xFF3101B9),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  fillColor: Colors.white,
                  filled: true,
                  suffixIcon: Container(
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          _secureText = !_secureText;
                        });
                      },
                      icon: Icon(
                        MyFlutterApp.olhinho_senha_inicio,
                        color: Color(0xFF3101B9),
                        size: 40,
                      ),
                    ),
                    padding: EdgeInsets.fromLTRB(0.10, 0.10, 0.10, 0.10),
                    margin: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Color(0xFF3101B9)),
                        borderRadius:
                            const BorderRadius.all(const Radius.circular(200))),
                  ),
                ),
                obscureText: _secureText,
              ),
              Container(
                margin: EdgeInsets.all(5.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text("Esqueceu seu login ou senha?",
                            style: TextStyle(
                              fontSize: 15.0,
                              color: Colors.white,
                            )),
                        TextButton(
                          child: Text("Clique aqui",
                              style: TextStyle(
                                fontSize: 15.0,
                                color: Color(0xFFFFD600),
                              )),
                          onPressed: () {
                            Navigator.of(context)
                                .pushReplacementNamed("recupera");
                          },
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {
                            _clickButton(context);
                          },
                          child: Text(
                            "Entrar",
                            style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.w500,
                                fontFamily: "Montserrat-SemiBold"),
                          ),
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Color(0xFF3101B9)),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      side: BorderSide(
                                          color: Colors.white, width: 2)))),
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    DotWidget(
                      dashColor: Colors.white,
                      dashHeight: 1.9,
                      dashWidth: 1.5,
                    ),
                    Center(
                      child: Container(
                        margin: EdgeInsets.all(20.0),
                        child: Row(
                          children: [
                            Text("Não possui cadastro?",
                                style: TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.white,
                                )),
                            TextButton(
                              child: Text("Clique aqui",
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    color: Color(0xFFFFD600),
                                  )),
                              onPressed: () {
                                Navigator.of(context)
                                    .pushReplacementNamed("telaCadastro");
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }

  void _clickButton(BuildContext context) {
    bool formOk = _formKey.currentState!.validate();
    if (!formOk) {
      return;
    }
    String password = _ctrlSenha.text;
    String user = _ctrlLogin.text;
    print("login: $user senha: $password");
    context.read<LoginController>().login(user, password).then((value) {
      if (value) {
        Navigator.of(context).pushReplacementNamed("listaTarefa");
      }
    });
  }
}
