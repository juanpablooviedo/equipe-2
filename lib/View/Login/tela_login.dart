import 'package:flutter/material.dart';
import 'package:todo_lovepeople/utils/dot_widget.dart';

import 'components/my_flutter_app_icons.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFA901F7),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 50),
            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(200),
                  bottomRight: Radius.circular(200)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 150,
                  height: 150,
                  child: Image.asset('assets/images/logo_lovepeople.png'),
                ),
                Text(
                  "Lovepeople",
                  style: TextStyle(
                      fontSize: 15,
                      fontFamily: "Montserrat-Bold",
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF3101B9)),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 80,
          ),
          Text(
            "Que bom que voltou!",
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontFamily: "Montserrat-SemiBold"),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.only(top: 5),
            margin: EdgeInsets.all(20.0),
            child: Column(
              children: [
                TextFormField(
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
                  decoration: InputDecoration(
                    hintText: "Senha",
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
                    filled: true,
                    suffixIcon: Icon(
                      MyFlutterApp.olhinho_senha_inicio,
                      color: Color(0xFF3101B9),
                      size: 50,
                    ),
                  ),
                  obscureText: true,
                ),
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
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {},
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
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(color: Colors.white, width: 2)))),
                ),
                SizedBox(
                  height: 100,
                ),
                DotWidget(
                  dashColor: Colors.white,
                  dashHeight: 1,
                  dashWidth: 1,
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
        ],
      ),
    );
  }
}
