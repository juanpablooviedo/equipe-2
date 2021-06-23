import 'package:flutter/material.dart';

class CadastroTarefa extends StatefulWidget {
  @override
  _CadastroTarefaState createState() => _CadastroTarefaState();
}

class _CadastroTarefaState extends State<CadastroTarefa> {
  Widget colorButton(Color color) {
    return Container(
      width: 50,
      margin: EdgeInsets.only(right: 25,),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(169, 1, 247, 1),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(100),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 55,),
                Text(
                    'Nova Tarefa',
                    style: TextStyle(
                        fontFamily: 'Montserrat-SemiBold',
                        fontSize: 25,
                        color: Colors.white,
                        ),
                  ),
              ],
            ),
            SizedBox(height: 30,),
            Center(
              child: Container(
                height: 55,
                width: 622,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(left: 25, right: 25,),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Text(
                  'Titulo da Tarefa',
                  style: TextStyle(
                    fontFamily: 'Tahoma',
                    fontSize: 25,
                    color: Color.fromRGBO(49, 1, 185, 1),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15,),
            Center(
              child: Container(
                height: 300,
                width: 622,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(left: 25, right: 25,),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Text(
                  'Escreva uma descirção para sua tarefa.',
                  style: TextStyle(
                    fontFamily: 'Tahoma',
                    fontSize: 18,
                    color: Color.fromRGBO(49, 1, 185, 1).withOpacity(.5),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30,),
            Container(
              height: 50,
              margin: EdgeInsets.only(left: 25, right: 25,),
              child: ListView(                
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  colorButton(
                    Color.fromRGBO(255, 242, 204, 1),
                  ),
                  colorButton(
                    Color.fromRGBO(255, 217, 240, 1),
                  ),
                  colorButton(
                    Color.fromRGBO(232, 197, 255, 1),
                  ),
                  colorButton(
                    Color.fromRGBO(202, 251, 255, 1),
                  ),
                  colorButton(
                    Color.fromRGBO(227, 255, 230, 1),
                  ),
                  colorButton(
                    Color.fromRGBO(255, 242, 204, 1),
                  ),
                  colorButton(
                    Color.fromRGBO(255, 217, 240, 1),
                  ),
                  colorButton(
                    Color.fromRGBO(232, 197, 255, 1),
                  ),
                  colorButton(
                    Color.fromRGBO(202, 251, 255, 1),
                  ),
                  colorButton(
                    Color.fromRGBO(227, 255, 230, 1),
                  ),
                ],
              ),
            ),
            SizedBox(height: 60,),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Transform.rotate(
                    angle: 40,
                    child: Icon(
                      Icons.add,
                      size: 100,
                      color: Colors.white,
                    ),
                  ),
                  Icon(
                    Icons.check,
                    size: 100,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
