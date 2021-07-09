import 'package:flutter/material.dart';
import 'package:todo_lovepeople/Model/Listagem%20de%20Tarefas/API_listagem_tarefas.dart';
import 'package:todo_lovepeople/Model/Listagem%20de%20Tarefas/listagemTarefa.dart';
import 'package:todo_lovepeople/Model/Remover%20Item/API_remover_item.dart';

class ListaTarefaController extends ChangeNotifier {
  final ListagemTarefaRepository _api;
  final DeleteItemRepository delete;

  ListaTarefaController(this._api, this.delete);

  List<ListaTarefa> tarefasList = [];
  List<ListaTarefa> _originalList = [];

  void getTasks(String title, {BuildContext? context}) async {
    print('CONTROLLER carergar tarefa');
    var response = await _api.getTasks(title);
    _originalList.clear();
    tarefasList.clear();
    tarefasList.addAll(response);
    _originalList.addAll(response);
    notifyListeners();
  }

  void filter(String keyWord) {
    tarefasList = _originalList
        .where((element) =>
            element.title!.contains(keyWord) ||
            element.description!.contains(keyWord))
        .toList();
    notifyListeners();
  }

  void deleteItem(ListaTarefa listaTarefa) {
    delete.deleteItem(listaTarefa.id).then((response) {
      if (response != null) {
        tarefasList.remove(listaTarefa);
        notifyListeners();
      }
    });
  }
}
