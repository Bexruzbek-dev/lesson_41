import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:lesson_41/homework/controllers/todo_controller.dart';
import 'package:lesson_41/homework/views/widgets/todo_item.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen>
    with SingleTickerProviderStateMixin {
  final todoController = TodoController();
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade800,
        title: const Text(
          "To Do App",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        bottom: TabBar(
          controller: tabController,
          tabs: const <Widget>[
            Tab(
              text: "All",
            ),
            Tab(
              text: "Done",
            ),
            Tab(
              text: "In process",
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: const [
          TodoListView(status: "All"),
          TodoListView(status: "Done"),
          TodoListView(status: "In process"),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add task logic here
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class TodoListView extends StatelessWidget {
  final String status;

  const TodoListView({super.key, required this.status});

  @override
  Widget build(BuildContext context) {
    final todoController = TodoController();

    final tasks = todoController.list.where((task) {
      if (status == "All") return true;
      if (status == "Done") return task.isCompletd;
      if (status == "In process") return !task.isCompletd;
      return false;
    }).toList();

    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (ctx, index) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TodoItem(
              todo: tasks[index],
            ),
            const Gap(10),
          ],
        );
      },
    );
  }

//   onTap(check, index) {
//     final todoController = TodoController();

//     final tasks = todoController.list.where((task) {
//       if (status == "All") return true;
//       if (status == "Done") return task.isCompletd;
//       if (status == "In process") return !task.isCompletd;
//       return false;
//     }).toList();
//     check = !check;
//     tasks[index].isCompletd = !tasks[index].isCompletd;
//     return check;
//   }
}
