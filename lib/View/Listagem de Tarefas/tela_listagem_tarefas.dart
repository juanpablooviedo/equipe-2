import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:todo_lovepeople/View/Listagem%20de%20Tarefas/popup%20Excluir/dialog_excluir_tarefa.dart';

class TelaTarefas extends StatefulWidget {
  const TelaTarefas({Key? key}) : super(key: key);

  @override
  _TelaTarefasState createState() => _TelaTarefasState();
}

class _TelaTarefasState extends State<TelaTarefas> {
  Widget task(String descricao, String titulo, int color) {
    return Container(
      margin: EdgeInsets.only(
        top: 10,
        left: 10,
        right: 10,
      ),
      child: Card(
        color: Color(color),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: ListTile(
          title: Text(
            titulo,
            style: TextStyle(
              color: Color(0xFF3101B9),
              fontWeight: FontWeight.bold,
              fontSize: 20,
              fontFamily: 'Montserrat-SemiBold',
            ),
          ),
          subtitle: Text(
            descricao,
            style: TextStyle(
              color: Color(0xFF3101B9).withOpacity(.5),
              fontSize: 17,
              fontFamily: 'Tahoma',
            ),
          ),
          trailing: Icon(
            Icons.delete_outline_outlined,
            color: Color(0xFF3101B9),
            size: 40,
          ),
          onTap: () {
            showDialog(
              context: context,
              builder: (BuildContext context) => excluir(context),
            );
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFA901F7),
        body: Column(
          children: [
            Row(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(100),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          right: 20,
                          bottom: 20,
                        ),
                        child: Image.asset(
                          'assets/image/logo_lovepeople.png',
                          height: 55,
                          width: 55,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 45,
                ),
                Text(
                  'Suas Listagems',
                  style: TextStyle(
                    fontFamily: 'Montserrat-SemiBold',
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Container(
              margin: EdgeInsets.only(top: 10, left: 10, right: 10),
              child: TextFormField(
                decoration: InputDecoration(
                  suffixIcon: Icon(
                    Icons.search,
                    size: 40,
                    color: Color(0xFF3101B9),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  filled: true,
                  hintStyle: TextStyle(
                      color: Color(0xFF3101B9),
                      fontSize: 20,
                      fontFamily: 'Tahoma'),
                  hintText: "Busque palavras-chave",
                  fillColor: Color(0xFFFFFFFF),
                ),
                style: TextStyle(
                    color: Color(0xFF3101B9),
                    fontSize: 20,
                    fontFamily: 'Tahoma'),
              ),
            ),
            Expanded(
              child: Container(
                height: 600,
                width: double.infinity,
                child: ListView(
                  children: [
                    task('descricao', 'titulo', 0xFFFFF2CC),
                    task(
                        'descricaodescricaodescricaodescricaodescricaodescricaodescricaodescricaodescricaodescricaodescricaodescricaodescricaodescricao',
                        'titulo',
                        0xFFFFF2CC),
                  ],
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: Icon(
          Icons.add_rounded,
          size: 120,
          color: Colors.white,
        ),
      ),
    );
  }
}
