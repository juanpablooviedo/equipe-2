import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:todo_lovepeople/Presenter/cadastro_controller.dart';
import 'package:todo_lovepeople/Utils/dot_widget.dart';
import 'package:todo_lovepeople/View/Cadastro%20de%20Usuario/components/olho_lovepeople_icons.dart';
import 'package:todo_lovepeople/View/Listagem%20de%20Tarefas/tela_listagem_tarefas.dart';
import 'package:todo_lovepeople/View/Sucesso%20de%20Cadastro/tela_sucesso_cadastro.dart';

class RegisterUser extends StatefulWidget {
  @override
  State<RegisterUser> createState() => _RegisterUserState();
}

class _RegisterUserState extends State<RegisterUser> {
  final _username = TextEditingController();
  final _email = TextEditingController();
  final _password = TextEditingController();
  final _cPassword = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _isHiddenPassword = true;

  Widget _buildUserlField(BuildContext context) {
    return Consumer<RegisterController>(builder: (context, controller, _) {
      return Container(
        margin: EdgeInsets.fromLTRB(30, 0, 30, 12),
        height: 42,
        child: TextFormField(
            decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              filled: true,
              fillColor: Colors.white.withOpacity(1),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(10),
              ),
              hintText: 'Nome',
              hintStyle: TextStyle(
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.normal,
                fontSize: 15,
                fontFamily: "Tahoma",
                color: Color(0xFF3101B9),
              ),
            ),
            autofocus: true,
            maxLines: 1,
            cursorColor: Color(0xFF3101B9),
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.normal,
              fontSize: 20,
              fontFamily: "Tahoma",
              color: Color(0xFF3101B9),
            ),
            controller: _username,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Esse campo é obrigatório!';
              }
              return null;
            },
            onSaved: (value) {
              _username.text = value!;
            }),
      );
    });
  }

  Widget _buildEmailField(BuildContext context) {
    return Consumer<RegisterController>(builder: (context, controller, _) {
      return Container(
        margin: EdgeInsets.fromLTRB(30, 0, 30, 12),
        height: 42,
        child: TextFormField(
            decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              filled: true,
              fillColor: Colors.white.withOpacity(1),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(10),
              ),
              hintText: 'Número de telefone, email ou CPF',
              hintStyle: TextStyle(
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.normal,
                fontSize: 15,
                fontFamily: "Tahoma",
                color: Color(0xFF3101B9),
              ),
            ),
            autofocus: true,
            maxLines: 1,
            cursorColor: Color(0xFF3101B9),
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.normal,
              fontSize: 20,
              fontFamily: "Tahoma",
              color: Color(0xFF3101B9),
            ),
            controller: _email,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Esse campo é obrigatório!';
              }
              return null;
            },
            onSaved: (value) {
              _email.text = value!;
            }),
      );
    });
  }

  Widget _buildPasswordField(BuildContext context) {
    return Consumer<RegisterController>(builder: (context, controller, _) {
      return Container(
        margin: EdgeInsets.fromLTRB(30, 0, 30, 12),
        height: 47,
        child: TextFormField(
            decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              filled: true,
              fillColor: Colors.white.withOpacity(1),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(10),
              ),
              hintText: 'Senha',
              suffixIcon: Container(
                child: IconButton(
                    icon: _isHiddenPassword == true
                        ? Icon(
                            OlhoLovepeople.olhinho_senha,
                            color: Color(0xFF3101B9),
                            size: 35,
                          )
                        : Icon(
                            OlhoLovepeople.olhinho_senha,
                            color: Colors.grey,
                            size: 35,
                          ),
                    onPressed: () {
                      setState(() {
                        _isHiddenPassword = !_isHiddenPassword;
                      });
                    }),
                padding: EdgeInsets.fromLTRB(1, 1, 1, 1),
                margin: EdgeInsets.all(1),
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Color(0xFF3101B9)),
                    borderRadius:
                        const BorderRadius.all(const Radius.circular(200))),
              ),
              hintStyle: TextStyle(
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.normal,
                fontSize: 15,
                fontFamily: "Tahoma",
                color: Color(0xFF3101B9),
              ),
            ),
            autofocus: true,
            maxLines: 1,
            obscureText: _isHiddenPassword,
            cursorColor: Color(0xFF3101B9),
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.normal,
              fontSize: 20,
              fontFamily: "Tahoma",
              color: Color(0xFF3101B9),
            ),
            controller: _password,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Esse campo é obrigatório!';
              }
              return null;
            },
            onSaved: (value) {
              _password.text = value!;
            }),
      );
    });
  }

  Widget _buildCpasswordField(BuildContext context) {
    return Consumer<RegisterController>(builder: (context, controller, _) {
      return Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(30, 0, 30, 12),
            height: 47,
            child: TextFormField(
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  filled: true,
                  fillColor: Colors.white.withOpacity(1),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: 'Confirmar senha',
                  suffixIcon: Container(
                    child: IconButton(
                        icon: _isHiddenPassword == true
                            ? Icon(
                                OlhoLovepeople.olhinho_senha,
                                color: Color(0xFF3101B9),
                                size: 35,
                              )
                            : Icon(
                                OlhoLovepeople.olhinho_senha,
                                color: Colors.grey,
                                size: 35,
                              ),
                        onPressed: () {
                          setState(() {
                            _isHiddenPassword = !_isHiddenPassword;
                          });
                        }),
                    padding: EdgeInsets.fromLTRB(1, 1, 1, 1),
                    margin: EdgeInsets.all(1),
                    decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Color(0xFF3101B9)),
                        borderRadius:
                            const BorderRadius.all(const Radius.circular(200))),
                  ),
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.normal,
                    fontSize: 15,
                    fontFamily: "Tahoma",
                    color: Color(0xFF3101B9),
                  ),
                ),
                autofocus: true,
                maxLines: 1,
                obscureText: _isHiddenPassword,
                //obscuringCharacter: '*',
                cursorColor: Color(0xFF3101B9),
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal,
                  fontSize: 20,
                  fontFamily: "Tahoma",
                  color: Color(0xFF3101B9),
                ),
                controller: _cPassword,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Esse campo é obrigatório!';
                  }
                  if (value != _password.text &&
                      _password.text != '' &&
                      _cPassword.text != '') {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        backgroundColor: Color(0xFF3101B9),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)),
                        behavior: SnackBarBehavior.floating,
                        content: Text(
                          'As senhas não coincidem :(',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: "Tahoma",
                            fontSize: 14,
                          ),
                        )));
                  }
                  return null;
                },
                onSaved: (value) {
                  _cPassword.text = value!;
                }),
          ),
          ElevatedButton(
            onPressed: () {
              String name = _username.text;
              String email = _email.text;
              String password = _cPassword.text;
              if (name.isNotEmpty && email.isNotEmpty && password.isNotEmpty) {
                controller.register(name, email, password,
                    onSuccess: _goHome, onFailure: _showError);
              }
              bool formOk = _formKey.currentState!.validate();
              if (!formOk) {
                return;
              }
            },
            child: Text(
              'Cadastrar',
              style: GoogleFonts.montserrat(
                textStyle: TextStyle(
                  fontWeight: FontWeight.w500,
                ),
                color: Colors.white.withOpacity(1),
                fontSize: 20,
              ),
            ),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Color(0xFF3101B9)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: BorderSide(color: Colors.white, width: 2)))),
          ),
        ],
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFA901F7),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(children: [
            SizedBox(
              height: 70,
            ),
            Text(
              'Vamos começar!',
              style: GoogleFonts.montserrat(
                textStyle: TextStyle(
                  fontWeight: FontWeight.w500,
                ),
                color: Colors.white.withOpacity(1),
                fontSize: 25,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Form(
              key: _formKey,
              child: Container(
                child: Column(
                  children: <Widget>[
                    _buildUserlField(context),
                    _buildEmailField(context),
                    _buildPasswordField(context),
                    _buildCpasswordField(context),
                    SizedBox(
                      height: 300,
                    ),
                    Container(
                      height: 10,
                      width: double.infinity,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          DotWidget(
                            dashColor: Colors.white,
                            dashHeight: 1.9,
                            dashWidth: 1.5,
                          ),
                          DotWidget(
                            dashColor: Colors.white,
                            dashHeight: 1.9,
                            dashWidth: 1.5,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Já possui cadastro?",
                    style: TextStyle(
                      fontFamily: "Tahoma",
                      fontSize: 16,
                      color: Colors.white,
                    )),
                TextButton(
                  child: Text("Entrar",
                      style: TextStyle(
                        fontFamily: "Tahoma",
                        fontSize: 16,
                        color: Color(0xFFFFD600),
                      )),
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed("login");
                  },
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }

  void _goHome() {
    Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(
        builder: (context) => RegisterSuccess(),
      ),
      (route) => false,
    );
  }

  void _showError() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Não possivel realizar cadastro',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.red,
      ),
    );
  }
}
