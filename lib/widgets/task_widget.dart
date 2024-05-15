import 'package:flutter/material.dart';

class TaskWidget extends StatefulWidget {
  String title;
  bool status;

  TaskWidget({required this.title, required this.status});

  @override
  State<TaskWidget> createState() => _TaskWidgetState();
}

class _TaskWidgetState extends State<TaskWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              widget.status = !widget.status;
            });
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            width: double.infinity,
            height: 60,
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: Colors.grey,
              ),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Row(
              children: [
                Icon(
                  widget.status
                      ? Icons.check_circle
                      : Icons.check_circle_outline,
                      color: widget.status ? Colors.green : null,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  widget.title,
                  style:  TextStyle(
                    fontSize: 18,
                    decoration: widget.status ? TextDecoration.lineThrough : null,
                  ),
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
