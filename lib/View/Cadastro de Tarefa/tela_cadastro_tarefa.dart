import 'package:flutter/material.dart';

class CadastroTarefa extends StatefulWidget {
  @override
  _CadastroTarefaState createState() => _CadastroTarefaState();
}

class _CadastroTarefaState extends State<CadastroTarefa> {
  Widget colorButton(Color color) {
    return Container(
      width: 50,
      margin: EdgeInsets.only(
        right: 25,
      ),
      child: ElevatedButton(
        onPressed: () {},
        child: Text(''),
        style: ElevatedButton.styleFrom(
          primary: color,
          shape: CircleBorder(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromRGBO(169, 1, 247, 1),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                  width: 55,
                ),
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
            SizedBox(
              height: 30,
            ),
            Center(
              child: Container(
                height: 55,
                width: 622,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(
                  left: 25,
                  right: 25,
                ),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: TextFormField(
                  style: TextStyle(
                    fontFamily: 'Tahoma',
                    fontSize: 25,
                    color: Color(0xFF3101B9),
                  ),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.zero,
                    hintText: 'Titulo da Tarefa',
                    hintStyle: TextStyle(
                      color: Color(0xFF3101B9),
                    ),
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Center(
              child: Container(
                height: 300,
                width: 622,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(
                  left: 25,
                  right: 25,
                ),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: TextFormField(
                  style: TextStyle(
                    fontFamily: 'Tahoma',
                    fontSize: 18,
                    color: Color.fromRGBO(49, 1, 185, 1).withOpacity(.5),
                  ),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.zero,
                    hintText: 'Escreva uma descirção para sua tarefa.',
                    hintStyle: TextStyle(
                      color: Color.fromRGBO(49, 1, 185, 1).withOpacity(.5),
                    ),
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 50,
              margin: EdgeInsets.only(
                left: 25,
                right: 25,
              ),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  colorButton(Color(0xFFFFF2CC)),
                  colorButton(Color(0xFFffD0BD)),
                  colorButton(Color(0xFFE8C5FF)),
                  colorButton(Color(0xFFCAFBFF)),
                  colorButton(Color(0xFFE3FFE6)),
                  colorButton(Color(0xFFffeaa7)),
                  colorButton(Color(0xFFfab1a0)),
                  colorButton(Color(0xFFa29bfe)),
                  colorButton(Color(0xFF74b9ff)),
                  colorButton(Color(0xFF55efc4)),
                ],
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Center(
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.add,
                        size: 100,
                      ),
                      color: Colors.white,
                      onPressed: () {
                        print(' hello');
                      },
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.check,
                        size: 100,
                      ),
                      color: Colors.white,
                      onPressed: () {
                        print(' hello');
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
