// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_todo_app/controller/task_controller.dart';

class AddTaskPage extends StatelessWidget {
  AddTaskPage({super.key});

  TaskController controller = Get.put(TaskController());

  @override
  Widget build(BuildContext context) {
    TextTheme text = Theme.of(context).textTheme;
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            children: [
              const Spacer(
                flex: 3,
              ),
              Text(
                'Add New Task',
                style: text.headlineMedium,
              ),
              const Spacer(
                flex: 1,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  filled: true,
                  fillColor: Colors.black12,
                  hintText: 'Enter Task Description',
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      'Add a New Task',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 22),
                    ),
                  ),
                ),
              ),
              const Spacer(
                flex: 3,
              ),
            ],
          ),
        )));
  }
}
