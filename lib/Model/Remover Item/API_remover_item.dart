import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:todo_lovepeople/Model/Listagem%20de%20Tarefas/ListagemTarefa.dart';
import 'package:todo_lovepeople/Utils/globals.dart' as globals;

class DeleteItemRepository {
  Future<ListaTarefa?> deleteItem(int? id) async {
    var url = Uri.parse('https://todo-lovepeople.herokuapp.com/todos/{idTodo}');
    Map<String, String> header = {
      HttpHeaders.authorizationHeader: "Bearer ${globals.token}",
    };
    return http.delete(url, headers: header).then((response) async {
      if (response.statusCode == 200) {
        var json = jsonDecode(response.body);
        return ListaTarefa.fromJson(json);
      } else {
        return null;
      }
    });
  }
}

//  Future<Todo?> delete(int? todoId) async {
//     final login = await _localPreferences.getLogin();
//     Map<String, String> header = {
//       'Authorization': 'Bearer ${login?.jwt}',
//     };
//     return http
//         .delete(
//       Uri.parse('$baseUrl/todos/$todoId'),
//       headers: header,
//     )
//         .then((value) async {
//       if (value.statusCode == 200) {
//         final json = jsonDecode(value.body);
//         return Todo.fromJson(json);
//       } else {
//         return null;
//       }
//     });
//   }