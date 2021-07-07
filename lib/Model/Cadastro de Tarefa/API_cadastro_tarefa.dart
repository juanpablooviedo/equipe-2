import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'newTarefa.dart';
import 'package:todo_lovepeople/Utils/globals.dart' as globals;

class TarefaApi {
  var url = Uri.parse('https://todo-lovepeople.herokuapp.com/todos');
  var header = {HttpHeaders.authorizationHeader: "Bearer ${globals.token}"};

  Future<NewTodoResponse> createTask(
      String title, String description, String color) async {
    print('APII');
    print(globals.token);
    final response = await http.post(url, headers: header, body: {
      'title': title,
      'description': description,
      'color': color,
    });
    print('DEPOIS API POST SLA');
    print(response.statusCode);
    if (response.statusCode == 200) {
      print('VAI RODAR');
      return NewTodoResponse.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to create task.');
    }
  }
}
