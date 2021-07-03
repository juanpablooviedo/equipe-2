import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:todo_lovepeople/Model/Remover%20Item/DeletedItem.dart';

class DeleteItemRepository {
  Future<DeleteItem> deleteItem() async {
    var uri = Uri.parse('https://todo-lovepeople.herokuapp.com/todos/{idTodo}');
    var response = await http.delete(uri, headers: {
      HttpHeaders.authorizationHeader: "Bearer {token}",
    });
    var json = jsonDecode(response.body);
    return DeleteItem.fromJson(json);
  }
}
