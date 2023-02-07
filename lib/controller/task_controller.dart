import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_todo_app/model/task.dart';

class TaskController extends GetxController {
  final taskList = <Task>[].obs;

  late TextEditingController textEditingController;

  @override
  void onInit() {
    super.onInit();
    textEditingController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    textEditingController.clear();
  }

  void addTask(String text, DateTime time) {
    String text = textEditingController.text;
    DateTime time = DateTime.now();
    taskList.add(Task(text, time.day.toString()));
    textEditingController.clear();
  }

  void deleteTask(Task task) {
    taskList.remove(task);
  }
}
