import 'package:flutter/material.dart';
import 'package:to_do_list_app/widgets/priority_section.dart';
import 'package:to_do_list_app/widgets/tags_section.dart';
import 'package:to_do_list_app/widgets/task.dart';
import 'package:to_do_list_app/widgets/task_date_form_field.dart';
import 'package:to_do_list_app/widgets/task_form_field.dart';

class AddTaskBottomSheet extends StatelessWidget {
  final GlobalKey<FormState> formKey = GlobalKey();
  final TextEditingController taskController = TextEditingController();
  final GlobalKey<FormState> dateFormKey = GlobalKey();
  DateTime? taskCreatedDate;
  List<bool> isActive = [false, false, false];
  List<String> tags = [];
  AddTaskBottomSheet({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 550,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                height: 4,
                width: 70,
                decoration: BoxDecoration(
                  color: Color(0xffD9D9D9),
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
            ),
            SizedBox(height: 36),
            Text(
              'Add Task',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 8),
            Expanded(
              child: ListView(
                children: [
                  SizedBox(height: 10),

                  Text(
                    'What do you want to do ?',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 8),
                  TaskFormField(
                    formKey: formKey,
                    taskController: taskController,
                  ),
                  SizedBox(height: 18),
                  Text('Date', style: TextStyle(fontSize: 16)),
                  SizedBox(height: 8),
                  TaskDateFormField(
                    dateFormKey: dateFormKey,
                    taskCreatedDate: taskCreatedDate,
                  ),
                  SizedBox(height: 18),
                  Text('Priority', style: TextStyle(fontSize: 16)),
                  SizedBox(height: 8),
                  PrioritySection(isActive: isActive),
                  SizedBox(height: 18),
                  Text('Tags', style: TextStyle(fontSize: 16)),
                  SizedBox(height: 8),
                  TagsSection(tags: tags),
                ],
              ),
            ),
            SizedBox(height: 12),
            MaterialButton(
              height: 54,
              minWidth: double.infinity,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100),
              ),
              color: Color(0xff007AFF),
              child: Text(
                'Add Task',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
              onPressed: () {
                if (formKey.currentState!.validate() &&
                    dateFormKey.currentState!.validate() &&
                    isActive.contains(true)) {
                  String priority = isActive[0]
                      ? 'Low'
                      : isActive[1]
                      ? 'Medium'
                      : 'High';
                  tasks.add(
                    Task(
                      taskTitle: taskController.text,
                      taskDate: taskCreatedDate,
                      priority: priority,
                      tags: tags,
                    ),
                  );
                  print('Task Added!');
                  print(tasks[4]);
                  Navigator.pop(context);
                } else {
                  print('Task Failed');
                }
              },
            ),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
