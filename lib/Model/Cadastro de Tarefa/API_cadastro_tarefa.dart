import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

import 'newTarefa.dart';

class TarefaApi {
  var url = Uri.parse('https://todo-lovepeople.herokuapp.com/todos');
  var header = {HttpHeaders.authorizationHeader: "Bearer {token}"};

  Future<NewTodoResponse> callTarefaApi(
      String title, String description, String color) async {
    final response = await http.post(
      Uri.parse('https://todo-lovepeople.herokuapp.com/todos'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'title': title,
        'description': description,
        'color': color,
      }),
    );

    if (response.statusCode == 200) {
      return NewTodoResponse.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to create task.');
    }
  }
}
