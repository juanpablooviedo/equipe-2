import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget excluir(BuildContext context) {
  return AlertDialog(
    title: Text(
      "Deseja deletar este item?",
      style: TextStyle(
        color: Color(0xFF3101B9),
        fontWeight: FontWeight.bold,
        fontSize: 20,
        fontFamily: 'Montserrat-SemiBold',
      ),
    ),
    content: Text(
      "''Limpar a casa'' será movido para lixeira.",
      style: TextStyle(
        color: Color(0xFF3101B9),
        fontSize: 18,
        fontFamily: 'Tahoma',
      ),
    ),
    actions: [
      TextButton(
        onPressed: () {},
        child: Text(
          "Confirmar",
          style: TextStyle(
            color: Color(0xFF3101B9),
            fontWeight: FontWeight.normal,
            fontSize: 20,
            fontFamily: 'Montserrat-SemiBold',
          ),
        ),
      ),
      TextButton(
        onPressed: () {},
        child: Text(
          "Excluir",
          style: TextStyle(
            color: Color(0xFFA901F7),
            fontWeight: FontWeight.normal,
            fontSize: 20,
            fontFamily: 'Montserrat-SemiBold',
          ),
        ),
      ),
    ],
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(20),
      ),
    ),
  );
}
