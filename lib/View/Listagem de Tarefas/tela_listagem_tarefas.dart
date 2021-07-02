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
      body: ListView(children: [
        Column(
          children: [
            Stack(
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
                SizedBox(
                  width: 60,
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Container(
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
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 30,
                    left: 20,
                    right: 20,
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
                    top: 10,
                    left: 20,
                    right: 20,
                    bottom: 10,
                  ),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: ListTile(
                      contentPadding: EdgeInsets.all(10),
                      title: Text(
                        "text",
                        style: TextStyle(
                          color: Color(0xFF3101B9),
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          fontFamily: 'Montserrat-SemiBold',
                        ),
                      ),
                      subtitle: Text(
                        "text",
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
          ],
        ),
      ]),
      bottomNavigationBar: Container(
        child: IconButton(
          icon: Icon(Icons.add_rounded),
          onPressed: () {
            Navigator.of(context).pushNamed("telaCadastroTarefa");
          },
          color: Color(0xFFFFFFFF),
          iconSize: 100,
        ),
      ),
    ));
  }
}
