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
    final response = await http.post(
      Uri.parse('https://todo-lovepeople.herokuapp.com/todos'),
      body: jsonEncode(<String, String>{
        'title': title,
        'description': description,
        'color': color,
      }),
    );
    print('DEPOIS API POST SLA');
    print(response.body);
    if (response.statusCode == 200) {
      print('VAI RODAR');
      return NewTodoResponse.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to create task.');
    }
  }
}

/*import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

import 'newTarefa.dart';

class TarefaApi {
  var url = Uri.parse('https://todo-lovepeople.herokuapp.com/todos');
  var header = {HttpHeaders.authorizationHeader: "Bearer {token}"};

  Future<NewTodoResponse> createTask(
      String title, String description, String color) async {
     var response = await http.post(url, body: {});
    var json = jsonDecode(response.body);
    return NewTODORequest.fromJson(json);


    if (response.statusCode == 200) {
      return NewTodoResponse.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to create task.');
    }
  }
}*/
