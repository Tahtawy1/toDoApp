import 'package:flutter/material.dart';
import 'package:to_do_list_app/widgets/add_tags.dart';
import 'package:to_do_list_app/widgets/priority_section.dart';
import 'package:to_do_list_app/widgets/tags_section.dart';
import 'package:to_do_list_app/widgets/task_date_form_field.dart';
import 'package:to_do_list_app/widgets/task_form_field.dart';
import '../utils/outline_input_border.dart';

class AddTaskBottomSheet extends StatelessWidget {
  const AddTaskBottomSheet({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 532,
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
            SizedBox(height: 12),
            Expanded(
              child: ListView(
                children: [
                  Text(
                    'What do you want to do ?',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 8),
                  TaskFormField(),
                  SizedBox(height: 18),
                  Text('Date', style: TextStyle(fontSize: 16)),
                  SizedBox(height: 8),
                  TaskDateFormField(),
                  SizedBox(height: 18),
                  Text('Priority', style: TextStyle(fontSize: 16)),
                  SizedBox(height: 8),
                  PrioritySection(),
                  SizedBox(height: 18),
                  Text('Tags', style: TextStyle(fontSize: 16)),
                  SizedBox(height: 8),
                  TagsSection(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
