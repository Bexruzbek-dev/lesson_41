import 'package:lesson_41/homework/models/todo.dart';

class TodoController {
  final List<Todo> _list = [
    Todo("Kitob o'qish", "Kechqurun 1 soat", false),
    Todo("Suzish", "Juft kunlari shu hafta", true),
    Todo("Dars qilish ", "2 soat uyga vazifa", false),
    Todo("Uhlash ", "Mazza qilib", true),
  ];
  List<Todo> get list {
    return [..._list];
  }
}
