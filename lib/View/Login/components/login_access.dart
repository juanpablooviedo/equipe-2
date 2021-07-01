import 'package:flutter/material.dart';
import 'package:todo_lovepeople/Utils/dot_widget.dart';
import 'my_flutter_app_icons.dart';

class LoginAccess extends StatefulWidget {
  const LoginAccess({Key? key}) : super(key: key);

  @override
  _LoginAccessState createState() => _LoginAccessState();
}

class _LoginAccessState extends State<LoginAccess> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10),
      child: Form(
        key: _formKey,
        child: Container(
          padding: EdgeInsets.only(top: 5),
          margin: EdgeInsets.all(20.0),
          child: Column(children: [
            TextFormField(
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
                suffixIcon: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        MyFlutterApp.olhinho_senha_inicio,
                        color: Color(0xFF3101B9),
                        size: 50,
                      ),
                    ),
                  ],
                ),
              ),
              obscureText: true,
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
                        onPressed: () {},
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {}
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
                                fontSize: 20.0,
                                color: Colors.white,
                              )),
                          TextButton(
                            child: Text("Clique aqui",
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: Color(0xFFFFD600),
                                )),
                            onPressed: () {},
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
    );
  }
}
