import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_todo_app/view/add_task_screen.dart';

class TodoPage extends StatelessWidget {
  const TodoPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme text = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
          child: Center(
        child: Text(
          'No Task Found',
          style: text.headlineMedium,
        ),
      )),
      floatingActionButton: InkWell(
        onTap: () {
          Get.to(const AddTaskPage());
        },
        child: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.red,
          ),
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
