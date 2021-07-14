import 'package:flutter/material.dart';
import 'package:kanban/core/entities/task/task.dart';
import 'package:kanban/screens/main/widgets/task.dart';

class TaskList extends StatelessWidget {
  final List<TaskEntity> tasks;
  const TaskList({Key? key, required this.tasks}) : super(key: key);

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: List.generate(
            tasks.length,
            (i) => Column(
              children: [
                SizedBox(
                  height: i == 0 ? 0 : 16,
                ),
                TaskCard(task: tasks[i])
              ],
            ),
          ),
        ),
      );
}
