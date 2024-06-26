import 'package:flutter/material.dart';
import 'package:wildtodo/modules/tasks/widgets/task.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverList.separated(
          itemCount: 4,
          itemBuilder: (context, index) => const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: Task(
              status: TaskStatus.failed,
              time: '12:00 AM',
              category: 'Importance',
              isPrivate: false,
              isStarred: true,
            ),
          ),
          separatorBuilder: (context, index) => const SizedBox(height: 5),
        ),
      ],
    );
  }
}
