import 'package:flutter/material.dart';
import 'package:todo_lovepeople/Model/Cadastro%20de%20Tarefa/API_cadastro_tarefa.dart';

class TarefaController extends ChangeNotifier {
  final TarefaApi _api;

  TarefaController(this._api);

  void createTask(
      String title, String description, String color, BuildContext context) {
    print('CONTROLLER');
    _api.createTask(title, description, color).then((value) {
      print(value);
    });
  }
}
