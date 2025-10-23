import 'package:flutter/material.dart';

class TaskItem extends StatefulWidget {
  TaskItem({super.key, required this.text, required this.isComplete});
  String  text  ;
  bool isComplete;
  @override
  State<TaskItem> createState() => _TaskItemState();
}

class _TaskItemState extends State<TaskItem> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          activeColor: Color(0xff007AFF),
          value: widget.isComplete,
          onChanged: (val) {
            setState(() {
              widget.isComplete = !widget.isComplete;
            });
            print(widget.isComplete);
          },
        ),
        SizedBox(width: 5,),
        Expanded(
          child: Text(widget.text,
            style:
            TextStyle(
              decoration:widget.isComplete? TextDecoration.lineThrough:TextDecoration.none,
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.black87,

            ),
          ),
        )

      ],
    );
  }
}
