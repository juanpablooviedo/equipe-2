import 'package:dio/dio.dart';
import 'package:todo_lovepeople/Model/Listagem%20de%20Tarefas/listagemTarefa.dart';

class ListagemTarefaRepository {
  final dio = Dio();
  final url = 'https://jsonplaceholder.typicode.com/todos';

  Future fetchTarefas() async {
    final response = await dio.get(url);
    final list = response.data as List;

    List<Tarefa> tarefas = [];
    for (var json in list) {
      final tarefa = Tarefa.fromJson(json);
      tarefas.add(tarefa);
    }
    return tarefas;
  }
}


//'https://todo-lovepeople.herokuapp.com/todos'