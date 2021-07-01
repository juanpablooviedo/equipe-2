import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:todo_lovepeople/View/Listagem%20de%20Tarefas/popup%20Excluir/dialog_excluir_tarefa.dart';

class TelaTarefas extends StatefulWidget {
  const TelaTarefas({Key? key}) : super(key: key);

  @override
  _TelaTarefasState createState() => _TelaTarefasState();
}

class _TelaTarefasState extends State<TelaTarefas> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFA901F7),
        body: Stack(
          children: [
            Container(
              height: 80,
              width: 80,
              alignment: Alignment(-1.0, -1.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(100),
                ),
                color: Color(0xFFFFFFFF),
              ),
              padding: EdgeInsets.only(top: 10, left: 10),
              child: Image.asset(
                'assets/image/logo_lovepeople.png',
                height: 45,
                width: 45,
                fit: BoxFit.fill,
              ),
            ),
            Container(
              alignment: Alignment(0.0, -0.9),
              child: Text(
                "Suas Listagens",
                style: TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  fontFamily: 'Montserrat-SemiBold',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 130,
                left: 35,
                right: 35,
              ),
              child: TextField(
                decoration: InputDecoration(
                  suffixIcon: Icon(
                    Icons.search,
                    size: 40,
                    color: Color(0xFF3101B9),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  filled: true,
                  hintStyle: TextStyle(
                      color: Color(0xFF3101B9),
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      fontFamily: 'Tahoma'),
                  hintText: "Busque palavras-chave",
                  fillColor: Color(0xFFFFFFFF),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 200,
                left: 35,
                right: 35,
              ),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ListTile(
                  contentPadding: EdgeInsets.all(10),
                  title: Text(
                    "Limpar a casa",
                    style: TextStyle(
                      color: Color(0xFF3101B9),
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      fontFamily: 'Montserrat-SemiBold',
                    ),
                  ),
                  subtitle: Text(
                    "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore ‘erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. ",
                    style: TextStyle(
                      color: Color(0xFF3101B9),
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      fontFamily: 'Tahoma',
                    ),
                  ),
                  trailing: Icon(Icons.delete_outline_outlined),
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => excluir(context),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
