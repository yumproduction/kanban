import 'package:flutter/material.dart';
import 'package:kanban/core/entities/task/task.dart';
import 'package:kanban/core/theme.dart';

class TaskCard extends StatelessWidget {
  final TaskEntity task;
  const TaskCard({Key? key, required this.task}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: AppTheme.lightGrey,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('ID: ${task.id}'),
            const SizedBox(
              height: 12,
            ),
            Text(
              task.text,
              style:
                  Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 18),
            ),
          ],
        ),
      );
}
