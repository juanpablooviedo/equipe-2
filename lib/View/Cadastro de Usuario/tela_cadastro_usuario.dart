//* Alterar colores de los campos del formulario - OK
//* Alterar layout del botón 'Cadastrar' - OK
//* Arreglar error altura de la pantalla (SingleChildScrollView) - OK
//* Alterar layout y color texto 'Já possui cadastro? Entrar' - OK
//* Cambiar icon olho de senha padrón por estilo lovepeople - OK
//* Cambiar fuente padrón por estilo lovepeople - OK
//* Validaciones de los campos del formulario - OK
//* Prueba de navegación entre paginas Navigator - OK
//! Usar expanded? - cuando return de texto de validator, sucede una deformación de layout en los campos
//! Ver gerenciamiento de estado
//! Ver providers
//! Ver API

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'components/olho_lovepeople_icons.dart';

class CadastroUsuario extends StatefulWidget {
  @override
  State<CadastroUsuario> createState() => _CadastroUsuarioState();
}
class _CadastroUsuarioState extends State<CadastroUsuario> {

  final name = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();
  final cPassword = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _builNameField() {
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
            return 'O campo Nome é obrigatório!';
          }
          return null;            
        },
        onSaved: (value) {
          name.text = value ?? '';
        }),
    );
  }

  Widget _builEmailField() {
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
            return 'O campo Número de telefone... é obrigatório!';
          }
          return null;            
        },
        onSaved: (value) {
          email.text = value ?? '';
        }),
    );
  }

  Widget _builPasswordField() {
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
            OlhoLovepeople.olhinho_senha,
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
            return 'O campo Senha é obrigatório!';
          }
          return null;
        },
        onSaved: (value) {
          password.text = value ?? '';
        }),
    );
  }

  Widget _builCpasswordField() {
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
            OlhoLovepeople.olhinho_senha,
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
            return 'O campo Confirmar senha é obrigatório!';
          }
          if (value != password.text) {
            return 'As duas senhas não coincidem!';
          }
          return null;
        },
        onSaved: (value) {
          cPassword.text = value ?? '';
        }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                _builNameField(),
                _builEmailField(),
                _builPasswordField(),
                _builCpasswordField(),
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
                      cadastrar(context);
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(1, 100, 1, 6),
                  child: Text(
                    '................................................................................................',
                    style: TextStyle(
                      color: Colors.white.withOpacity(1),
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
                        jaPossuiCadastro(context);
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void cadastrar(context) {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      print(name.text);
      print(email.text);
      print(password.text);
      print(cPassword.text);
      Navigator.of(context)
        .push(
          MaterialPageRoute(
            builder: (context) => telaSucessoCadastro(),
          ),
        )
      .then((value) {});
      _formKey.currentState!.reset();
    }
  }

  void jaPossuiCadastro(context) {
    // Navigator.of(context).pop();
  }
}

//* Uso exclusivo para la prueba de navigator

class telaSucessoCadastro extends StatelessWidget {
  const telaSucessoCadastro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFA901F7),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 180),
              child: Center(
                child: Text(
                  'Cadastro Concluído!',
                  style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}