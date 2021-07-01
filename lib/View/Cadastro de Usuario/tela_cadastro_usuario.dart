import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_lovepeople/View/Login/components/my_flutter_app_icons.dart';
//! Ver gerenciamiento de estado
//! Ver providers
//! API
//! git checkout -b feature/juan/tela-cadastro-usuario-api
//! git commit -m "Iniciando integração com API"
//! git commit -m "Integração com API finalizado"

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

  Widget _buildNameField() {
    return Container(
      margin: EdgeInsets.fromLTRB(30, 20, 30, 12),
      height: 38,
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
              height: 2.8,
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
                  content: Container(
                height: 25,
                alignment: Alignment.center,
                child: Text(
                  'O campo Nome é obrigatório!',
                  style: TextStyle(
                    fontFamily: "Tahoma",
                    fontSize: 14,
                  ),
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
      height: 38,
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
              height: 2.8,
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
                  content: Container(
                height: 25,
                alignment: Alignment.center,
                child: Text(
                  'O campo de telefone, email ou CPF é obrigatório!',
                  style: TextStyle(
                    fontFamily: "Tahoma",
                    fontSize: 14,
                  ),
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
      height: 38,
      child: TextFormField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white.withOpacity(1),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10),
            ),
            hintText: 'Senha',
            hintStyle: TextStyle(
              fontFamily: "Tahoma",
              fontWeight: FontWeight.w500,
              color: Color(0xFF3101B9),
              fontSize: 16,
              height: 2.8,
            ),
            suffixIcon: Icon(
              MyFlutterApp.olhinho_senha_inicio,
              color: Color(0xFF3101B9),
              size: 35,
            ),
          ),
          autofocus: true,
          maxLines: 1,
          obscureText: true,
          obscuringCharacter: '*',
          cursorColor: Color(0xFF3101B9),
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: Color(0xFF3101B9),
          ),
          controller: password,
          validator: (value) {
            if (value!.isEmpty) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Container(
                height: 25,
                alignment: Alignment.center,
                child: Text(
                  'O campo Senha é obrigatório!',
                  style: TextStyle(
                    fontFamily: "Tahoma",
                    fontSize: 14,
                  ),
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
      height: 38,
      child: TextFormField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white.withOpacity(1),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10),
            ),
            hintText: 'Confirmar senha',
            suffixIcon: Icon(
              MyFlutterApp.olhinho_senha_inicio,
              color: Color(0xFF3101B9),
              size: 35,
            ),
            hintStyle: TextStyle(
              fontFamily: "Tahoma",
              fontWeight: FontWeight.w500,
              color: Color(0xFF3101B9),
              fontSize: 16,
              height: 2.8,
            ),
          ),
          autofocus: true,
          maxLines: 1,
          obscureText: true,
          obscuringCharacter: '*',
          cursorColor: Color(0xFF3101B9),
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: Color(0xFF3101B9),
          ),
          controller: cPassword,
          validator: (value) {
            if (value!.isEmpty) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Container(
                height: 25,
                alignment: Alignment.center,
                child: Text(
                  'O campo Confirmar senha é obrigatório!',
                  style: TextStyle(
                    fontFamily: "Tahoma",
                    fontSize: 14,
                  ),
                ),
              )));
            }
            if (value != password.text) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Container(
                height: 25,
                alignment: Alignment.center,
                child: Text(
                  'As duas senhas não coincidem :(',
                  style: TextStyle(
                    fontFamily: "Tahoma",
                    fontSize: 14,
                  ),
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
    return SafeArea(
      // mantiene el menu superior con el color padrón (en mi caso, negro) //
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
                    margin: EdgeInsets.fromLTRB(0, 20, 0, 30),
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
                        Navigator.of(context).pushReplacementNamed("sucesso");
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 70, 0,
                        15), // cambiar valor de T=100, caso elimine SafeArea()
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
                          Navigator.of(context).pushReplacementNamed("login");
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

  void registerNow(context) {
    // if (_formKey.currentState!.validate()) {
    //   _formKey.currentState!.save();
    //   print(name.text);
    //   print(email.text);
    //   print(password.text);
    //   print(cPassword.text);
    //   if (name.text != '' &&
    //       email.text != '' &&
    //       password.text != '' &&
    //       cPassword.text != '' && password.text == cPassword.text) {
    //     Navigator.of(context)
    //         .push(
    //           MaterialPageRoute(
    //             builder: (context) => Success(),
    //           ),
    //         )
    //         .then((value) {});
    //     _formKey.currentState!.reset();
    //   }
    // }
  }

  void registerOld(context) {
    // Navigator.of(context).pop();
  }
}

//! Uso exclusivo para la prueba de _formKey y Navigator

// class Success extends StatelessWidget {
//   const Success({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: Color(0xFFA901F7),
//         body: SafeArea(
//           child: Column(
//             children: [
//               Container(
//                 margin: EdgeInsets.only(top: 180),
//                 child: Center(
//                   child: Text(
//                     'Cadastro Concluído!',
//                     style: GoogleFonts.montserrat(
//                       textStyle: TextStyle(
//                         fontWeight: FontWeight.w500,
//                       ),
//                       color: Colors.white,
//                       fontSize: 25,
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
