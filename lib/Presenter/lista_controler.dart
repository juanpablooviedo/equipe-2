import 'package:flutter/material.dart';
import 'package:todo_lovepeople/Model/Listagem%20de%20Tarefas/API_listagem_tarefas.dart';
import 'package:todo_lovepeople/Model/Listagem%20de%20Tarefas/listagemTarefa.dart';
import 'package:todo_lovepeople/Model/Remover%20Item/API_remover_item.dart';

class ListaTarefaController extends ChangeNotifier {
  final ListagemTarefaRepository _api;
  final DeleteItemRepository _delete;

  ListaTarefaController(this._api, this._delete);

  List<ListaTarefa> tarefasList = [];
  List<ListaTarefa> originalList = [];

  void getTasks(String title, {BuildContext? context}) async {
    print('CONTROLLER');
    var response = await _api.getTasks(title);
    tarefasList.addAll(response);
    originalList.addAll(response);
    notifyListeners();
  }

  void filter(String keyWord) {
    tarefasList = originalList
        .where((element) =>
            element.title!.contains(keyWord) ||
            element.description!.contains(keyWord))
        .toList();
    notifyListeners();
  }

  void deleteItem(ListaTarefa list) {
    _delete.deleteItem(list.id).then((value) {
      if (value == null) {
        tarefasList.remove(list);
        originalList.remove(list);
        notifyListeners();
      }
    });
  }
}
