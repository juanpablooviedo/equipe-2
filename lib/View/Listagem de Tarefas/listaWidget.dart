import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_lovepeople/Model/Listagem%20de%20Tarefas/listagemTarefa.dart';
import 'package:todo_lovepeople/Presenter/lista_controler.dart';

class TarefaWidget extends StatelessWidget {
  final ListaTarefa listatarefa;
  final VoidCallback ontap;

  const TarefaWidget({Key? key, required this.listatarefa, required this.ontap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ListaTarefaController>(builder: (context, controller, _) {
      return Card(
        color: Color(int.parse(listatarefa.color!)),
        margin: EdgeInsets.all(20),
        child: ListTile(
          contentPadding: EdgeInsets.all(10),
          title: Text(
            listatarefa.title!,
            style: TextStyle(
              color: Color(0xFF3101B9),
              fontWeight: FontWeight.bold,
              fontSize: 20,
              fontFamily: 'Montserrat-SemiBold',
            ),
          ),
          subtitle: Text(
            listatarefa.description!,
            style: TextStyle(
              color: Color(0xFF3101B9),
              fontWeight: FontWeight.bold,
              fontSize: 15,
              fontFamily: 'Tahoma',
            ),
          ),
          trailing: Icon(Icons.delete_outline_outlined),
          onTap: () {
            excluir(controller, listatarefa, context);
          },
        ),
      );
    });
  }
}

void excluir(ListaTarefaController controller, ListaTarefa listatarefa,
    BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
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
            " ${listatarefa.title!} será movido para lixeira.",
            style: TextStyle(
              color: Color(0xFF3101B9),
              fontSize: 18,
              fontFamily: 'Tahoma',
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                controller.deleteItem(listatarefa);
                Navigator.of(context).pop();
              },
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
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                "Cancelar",
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
      });
}
