import 'package:flutter_test/flutter_test.dart';
import 'package:todo_lovepeople/Model/Listagem%20de%20Tarefas/API_listagem_tarefas.dart';

main() {
  final repository = ListagemTarefaRepository();

  test('deve trazer uma lista de tarefas', () async {
    final list = await repository.fetchTarefas();
    print(list);
  });
}
