import 'package:flutter/material.dart';
import 'package:todo_lovepeople/Model/Listagem%20de%20Tarefas/API_listagem_tarefas.dart';
import 'package:todo_lovepeople/Model/Listagem%20de%20Tarefas/listagemTarefa.dart';

class ListaTarefaController extends ChangeNotifier {
  final ListagemTarefaRepository _api;

  ListaTarefaController(this._api);
  List<ListaTarefa> tarefasList = [];

  void getTasks(String title, {BuildContext? context}) async {
    print('CONTROLLER');
    var response = await _api.getTasks(title);
    tarefasList.addAll(response);
    notifyListeners();
  }
}
