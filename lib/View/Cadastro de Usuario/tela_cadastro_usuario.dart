import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'components/olho_lovepeople_icons.dart';
import 'package:todo_lovepeople/Utils/dot_widget.dart';
import 'package:todo_lovepeople/Presenter/controller_cadastro_usuario.dart';
import 'package:provider/provider.dart';

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

  Widget _buildusernameField() {
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
          controller: _username,
          validator: (value) {
            if (value!.isEmpty) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  backgroundColor: Color(0xFF3101B9),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
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
            _username.text = value!;
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
          controller: _email,
          validator: (value) {
            if (value!.isEmpty) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  backgroundColor: Color(0xFF3101B9),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
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
            _email.text = value!;
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
          obscureText: _isHiddenPassword,
          cursorColor: Color(0xFF3101B9),
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: Color(0xFF3101B9),
          ),
          controller: _password,
          validator: (value) {
            if (value!.isEmpty) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  backgroundColor: Color(0xFF3101B9),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
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
            _password.text = value!;
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
          obscureText: _isHiddenPassword,
          //obscuringCharacter: '*',
          cursorColor: Color(0xFF3101B9),
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: Color(0xFF3101B9),
          ),
          controller: _cPassword,
          validator: (value) {
            if (value!.isEmpty) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  backgroundColor: Color(0xFF3101B9),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
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
            if (value != _password.text &&_password.text != '' && _cPassword.text != '') {
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
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
                  _buildusernameField(),
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
                    margin: EdgeInsets.fromLTRB(0, 70, 0, 15),
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

// SafeArea() mantiene el menu superior con el color padrón (en mi caso, negro)
// cambiar valor de T=100, caso elimine SafeArea()

  void _registerNow(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
    }
    if (_username.text != '' &&
        _email.text != '' &&
        _password.text != '' &&
        _cPassword.text != '' &&
        _password.text == _cPassword.text) {      
      String username = _username.text;
      String email = _email.text;
      String password = _cPassword.text;
      print("FORM OK! username: $username, email: $email, password: $password");
      context.read<UserController>().registeruser(username, email, password, context);          
    }    
  }

  void _registerOld(context) {
    Navigator.of(context).popAndPushNamed('login');
  }
}