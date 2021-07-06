import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:todo_lovepeople/Model/Listagem%20de%20Tarefas/listagemTarefa.dart';
import 'package:todo_lovepeople/Utils/globals.dart' as globals;

class ListagemTarefaRepository {
  var url = Uri.parse('https://todo-lovepeople.herokuapp.com/todos');
  var header = {HttpHeaders.authorizationHeader: "Bearer ${globals.token}"};

  Future<List<ListaTarefa>> getTasks(String title) async {
    final response = await http.get(url, headers: header);

    print(response.body);
    if (response.statusCode == 200) {
      var json = JsonDecoder().convert(response.body);
      return json.map<ListaTarefa>((item) {
        return ListaTarefa.fromJson(item);
      }).toList();
    } else {
      throw Exception('Failed to create task.');
    }
  }
}
