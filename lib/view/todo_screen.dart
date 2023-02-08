import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_todo_app/controller/task_controller.dart';
import 'package:getx_todo_app/view/add_task_screen.dart';
import 'package:getx_todo_app/view/task_tile.dart';

class TodoPage extends StatelessWidget {
  TodoPage({super.key});

  final TaskController controller = Get.put(TaskController());

  @override
  Widget build(BuildContext context) {
    TextTheme text = Theme.of(context).textTheme;
    var bodyWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Obx(
        () => (controller.taskList.isEmpty)
            ? const Center(
                child: Text('No Tasks'),
              )
            : Center(
                child: ListView.builder(
                itemCount: controller.taskList.length,
                itemBuilder: (context, index) => TaskTile(
                  bodyWidth: bodyWidth,
                  text: text,
                  time: controller.taskList[index].taskCreated,
                  description: controller.taskList[index].task,
                  press: () {
                    controller.deleteTask(controller.taskList[index]);
                  },
                ),
              )),
      ),
      floatingActionButton: InkWell(
        onTap: () {
          Get.to(AddTaskPage());
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
