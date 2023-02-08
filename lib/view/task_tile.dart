// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:getx_todo_app/controller/task_controller.dart';
import 'package:get/get.dart';

class TaskTile extends StatelessWidget {
  TaskTile({
    super.key,
    required this.bodyWidth,
    required this.text,
    required this.time,
    required this.description,
    required this.press,
  });

  final double bodyWidth;
  final TextTheme text;

  final String time, description;
  final void Function()? press;

  final TaskController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
      child: Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(16),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(16)),
          height: 50,
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  height: double.maxFinite,
                  width: bodyWidth * 0.15,
                  color: Colors.red,
                  child: Text(
                    time,
                    textAlign: TextAlign.center,
                    style: text.headlineMedium!.copyWith(color: Colors.white),
                  )),
              Container(
                  child: Text(
                description,
                style: text.headlineSmall!.copyWith(color: Colors.black),
              )),
              GestureDetector(
                onTap: press,
                child: Container(
                    height: double.maxFinite,
                    width: bodyWidth * 0.1,
                    color: Colors.red,
                    child: const Icon(Icons.delete)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
