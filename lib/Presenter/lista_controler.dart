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
    print('CONTROLLER');
    var response = await _api.getTasks(title);
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

  void deleteItem(ListaTarefa _originalList) {
    delete.deleteItem(_originalList.id).then((value) {
      if (value == null) {
        tarefasList.remove(_originalList);
        notifyListeners();
      }
    });
  }
}
