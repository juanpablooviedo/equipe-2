//* Navigator e Validator
  //* git checkout -b feature/juan/tela-cadastro-usuario-navigator
    //* git commit -m "Navegação e validação entre telas"

//! API - estudar (aula - documentação - videos)
//! API - iniciar
  //! git checkout -b feature/juan/tela-cadastro-usuario-api
    //! git commit -m "Iniciando integração com API"
    //! git commit -m "Integração com API finalizado"

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'components/olho_lovepeople_icons.dart';
import 'package:todo_lovepeople/Utils/dot_widget.dart';

class RegisterUser extends StatefulWidget {
  @override
  State<RegisterUser> createState() => _RegisterUserState();
}

class _RegisterUserState extends State<RegisterUser> {
  final name = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();
  final cPassword = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool isHiddenPassword = true;

  Widget _buildNameField() {
    return Container(
      margin: EdgeInsets.fromLTRB(30, 20, 30, 12),
      height: 42,
      child: TextFormField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white.withOpacity(1),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10),
            ),
            hintText: 'Nome',
            hintStyle: TextStyle(
              fontFamily: "Tahoma",
              fontWeight: FontWeight.w500,
              color: Color(0xFF3101B9),
              fontSize: 16,
              height: 3,
            ),
          ),
          autofocus: true,
          keyboardType: TextInputType.text,
          maxLines: 1,
          cursorColor: Color(0xFF3101B9),
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: Color(0xFF3101B9),
          ),
          controller: name,
          validator: (value) {
          if (value!.isEmpty) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            backgroundColor: Color(0xFF3101B9),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12)
            ),
            behavior: SnackBarBehavior.floating,
            content: Text(
              'Nome é obrigatório!',
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
            name.text = value!;
          }),
    );
  }

  Widget _buildEmailField() {
    return Container(
      margin: EdgeInsets.fromLTRB(30, 0, 30, 12),
      height: 42,
      child: TextFormField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white.withOpacity(1),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10),
            ),
            hintText: 'Número de telefone, email ou CPF',
            hintStyle: TextStyle(
              fontFamily: "Tahoma",
              fontWeight: FontWeight.w500,
              color: Color(0xFF3101B9),
              fontSize: 16,
              height: 3,
            ),
          ),
          autofocus: true,
          maxLines: 1,
          cursorColor: Color(0xFF3101B9),
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: Color(0xFF3101B9),
          ),
          controller: email,
          validator: (value) {
          if (value!.isEmpty) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            backgroundColor: Color(0xFF3101B9),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12)
            ),
            behavior: SnackBarBehavior.floating,
            content: Text(
              'Telefone, email ou CPF é obrigatório!',
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
            email.text = value!;
          }),
    );
  }

  Widget _buildPasswordField() {
    return Container(
      margin: EdgeInsets.fromLTRB(30, 0, 30, 12),
      height: 42,
      child: TextFormField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white.withOpacity(1),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10),
            ),
            hintText: 'Senha',
            suffixIcon: IconButton(
              icon: isHiddenPassword == true ?
              Icon(
                OlhoLovepeople.olhinho_senha,
                color: Color(0xFF3101B9),
                size: 35,
              ):
              Icon(
                OlhoLovepeople.olhinho_senha,
                color: Colors.grey,
                size: 35,
              ),
              onPressed: (){
                setState((){
                  isHiddenPassword = !isHiddenPassword;
                });
              }
            ),
            hintStyle: TextStyle(
              fontFamily: "Tahoma",
              fontWeight: FontWeight.w500,
              color: Color(0xFF3101B9),
              fontSize: 16,
              height: 3,
            ),
          ),
          autofocus: true,
          maxLines: 1,
          obscureText: isHiddenPassword,
          cursorColor: Color(0xFF3101B9),
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: Color(0xFF3101B9),
          ),
          controller: password,
          validator: (value) {
          if (value!.isEmpty) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            backgroundColor: Color(0xFF3101B9),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12)
            ),
            behavior: SnackBarBehavior.floating,
            content: Text(
              'Senha é obrigatório!',
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
            password.text = value!;
          }),
    );
  }

  Widget _buildCpasswordField() {
    return Container(
      margin: EdgeInsets.fromLTRB(30, 0, 30, 12),
      height: 42,
      child: TextFormField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white.withOpacity(1),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10),
            ),
            hintText: 'Confirmar senha',
            suffixIcon: IconButton(
              icon: isHiddenPassword == true ?
              Icon(
                OlhoLovepeople.olhinho_senha,
                color: Color(0xFF3101B9),
                size: 35,
              ):
              Icon(
                OlhoLovepeople.olhinho_senha,
                color: Colors.grey,
                size: 35,
              ),
              onPressed: (){
                setState((){
                  isHiddenPassword = !isHiddenPassword;
                });
              }
            ),            
            hintStyle: TextStyle(
              fontFamily: "Tahoma",
              fontWeight: FontWeight.w500,
              color: Color(0xFF3101B9),
              fontSize: 16,
              height: 3,
            ),
          ),
          autofocus: true,
          maxLines: 1,
          obscureText: isHiddenPassword,
          //obscuringCharacter: '*',
          cursorColor: Color(0xFF3101B9),
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: Color(0xFF3101B9),
          ),
          controller: cPassword,
          validator: (value) {
            if (value!.isEmpty) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              backgroundColor: Color(0xFF3101B9),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12)
              ),
              behavior: SnackBarBehavior.floating,
              content: Text(
                'Confirmar senha é obrigatório!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: "Tahoma",
                  fontSize: 14,
                ),
              )));
            }
            if (value != password.text &&
                password.text != '' &&
                cPassword.text != '') {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              backgroundColor: Color(0xFF3101B9),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12)
              ),
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
            cPassword.text = value!;
          }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(//* SafeArea() mantiene el menu superior con el color padrón (en mi caso, negro)
      child: Scaffold(
        backgroundColor: Color(0xFFA901F7),
        body: SingleChildScrollView(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 180),
                    child: Text(
                      'Vamos começar!',
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w500,
                        ),
                        color: Colors.white.withOpacity(1),
                        fontSize: 25,
                      ),
                    ),
                  ),
                  _buildNameField(),
                  _buildEmailField(),
                  _buildPasswordField(),
                  _buildCpasswordField(),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
                    child: ElevatedButton(
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
                        backgroundColor:
                            MaterialStateProperty.all(Color(0xFF3101B9)),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                            side: BorderSide(color: Colors.white, width: 1),
                          ),
                        ),
                      ),
                      onPressed: () {
                        _registerNow(context);
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 70, 0,15), //* cambiar valor de T=100, caso elimine SafeArea()
                    child: DotWidget(
                      dashColor: Colors.white,
                      totalWidth: 296,
                      dashHeight: 1,
                      dashWidth: 3,
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
                          _registerOld(context);
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
  
  void _registerNow(context) {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      if (name.text != '' &&
          email.text != '' &&
          password.text != '' &&
          cPassword.text != '' &&
          password.text == cPassword.text) {
        Navigator.of(context)
            .pushReplacementNamed('RegisterSuccess')
            .then((value) {});
        _formKey.currentState!.reset();
      }
    }
  }
}

void _registerOld(context) {
  Navigator.of(context)
      .popAndPushNamed('LoginPage');
}
