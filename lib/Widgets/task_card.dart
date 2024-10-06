import 'package:flutter/material.dart';

class TaskCard extends StatelessWidget {
  final double height;
  final int countTask;
  final String taskText;
  const TaskCard({
    super.key,
    required this.height,
    required this.countTask,
    required this.taskText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: 150,
      decoration: BoxDecoration(
        color: Colors.deepPurple.shade400,
        borderRadius: BorderRadius.circular(22),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '$countTask',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Text(
            taskText,
            style: TextStyle(
              fontSize: 15,
              color: Colors.white54,
            ),
          ),
        ],
      ),
    );
  }
}
