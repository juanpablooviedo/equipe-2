import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'View/Login/tela_login.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
