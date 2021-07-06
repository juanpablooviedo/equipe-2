import 'package:flutter/material.dart';
import 'package:todo_lovepeople/Presenter/tarefa_controller.dart';
import 'package:provider/provider.dart';

class CadastroTarefa extends StatefulWidget {
  @override
  _CadastroTarefaState createState() => _CadastroTarefaState();
}

class _CadastroTarefaState extends State<CadastroTarefa> {
  final _formKey = GlobalKey<FormState>();
  final _ctrlTitle = TextEditingController();
  final _ctrlDescription = TextEditingController();
  String _ctrlColor = '0xFFFFF2CC';

  Widget colorButton(int color) {
    return GestureDetector(
      onTap: () => _ctrlColor = color.toString(),
      child: Container(
        width: 50,
        margin: EdgeInsets.only(
          right: 25,
        ),
        child: ElevatedButton(
          onPressed: () {},
          child: Text(''),
          style: ElevatedButton.styleFrom(
            primary: Color(color),
            shape: CircleBorder(),
          ),
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
        child: Form(
          key: _formKey,
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
                    controller: _ctrlTitle,
                    validator: (value) {
                      if (value!.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Container(
                          height: 25,
                          alignment: Alignment.center,
                          child: Text(
                            'O campo do título é obrigatório!',
                            style: TextStyle(
                              fontFamily: "Tahoma",
                              fontSize: 14,
                            ),
                          ),
                        )));
                      }
                    },
                    style: TextStyle(
                      fontFamily: 'Tahoma',
                      fontSize: 25,
                      color: Color(0xFF3101B9),
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.zero,
                      hintText: 'Título da Tarefa',
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
                    controller: _ctrlDescription,
                    validator: (value) {
                      if (value!.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Container(
                          height: 25,
                          alignment: Alignment.center,
                          child: Text(
                            'O campo da descrição é obrigatório!',
                            style: TextStyle(
                              fontFamily: "Tahoma",
                              fontSize: 14,
                            ),
                          ),
                        )));
                      }
                    },
                    style: TextStyle(
                      fontFamily: 'Tahoma',
                      fontSize: 18,
                      color: Color.fromRGBO(49, 1, 185, 1).withOpacity(.5),
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.zero,
                      hintText: 'Escreva uma descrição para sua tarefa.',
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
                    colorButton(0xFFFFF2CC),
                    colorButton(0xFFffD0BD),
                    colorButton(0xFFE8C5FF),
                    colorButton(0xFFCAFBFF),
                    colorButton(0xFFE3FFE6),
                    colorButton(0xFFffeaa7),
                    colorButton(0xFFfab1a0),
                    colorButton(0xFFa29bfe),
                    colorButton(0xFF74b9ff),
                    colorButton(0xFF55efc4),
                  ],
                ),
              ),
              SizedBox(
                height: 60,
              ),
              Row(
                children: [
                  IconButton(
                    alignment: Alignment.centerLeft,
                    icon: Icon(
                      Icons.close_rounded,
                      size: 100,
                    ),
                    color: Colors.white,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  Expanded(
                    child: Container(),
                  ),
                  IconButton(
                    alignment: Alignment.center,
                    icon: Icon(
                      Icons.check_rounded,
                      size: 100,
                    ),
                    color: Colors.white,
                    onPressed: () {
                      print('ONPRESSED');
                      _clickButton(context);
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _clickButton(BuildContext context) {
    bool formOk = _formKey.currentState!.validate();
    if (!formOk) {
      return;
    }
    String title = _ctrlTitle.text;
    String description = _ctrlDescription.text;
    String color = _ctrlColor;
    print('(CREATE TASK) CLICKBUTTON');
    context.read<TarefaController>().createTask(
          title,
          description,
          color,
          context,
        );
  }
}
