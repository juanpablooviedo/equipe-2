import 'package:flutter/material.dart';
import 'package:todo_lovepeople/Model/Cadastro%20de%20Usuario/API_cadastro_usuario.dart';

class RegisterController extends ChangeNotifier {
  final UserRepository _repository;

  bool loading = false;
  RegisterController(this._repository);

  void register(String name, String email, String password,
      {VoidCallback? onSuccess, VoidCallback? onFailure}) {
    _repository.register(name, email, password).then((value) {
      if (value != null) {
        onSuccess?.call();
      } else {
        onFailure?.call();
      }
    }).catchError((e) {
      onFailure?.call();
    }).whenComplete(() {});
  }
}
