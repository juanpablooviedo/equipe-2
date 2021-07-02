import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:todo_lovepeople/Model/Listagem%20de%20Tarefas/listagemTarefa.dart';

class ListagemTarefaRepository {
  Future<Tarefa> listagemTarefa() async {
    var uri = Uri.parse('https://todo-lovepeople.herokuapp.com/todos');
    var response = await http.get(uri, headers: {
      HttpHeaders.authorizationHeader: "Bearer {token}",
    });
    var json = jsonDecode(response.body);
    return Tarefa.fromJson(json);
  }
}
