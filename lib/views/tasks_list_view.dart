import 'package:flutter/material.dart';
import 'package:to_do_list_app/widgets/add_task_bottom_sheet.dart';

class TasksListView extends StatelessWidget {
  const TasksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: GestureDetector(
        onTap: () => showModalBottomSheet(
          context: context,
          builder: (context) {
            return AddTaskBottomSheet();
          },
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color(0xff007AFF),
          ),
          height: 70,
          width: 70,
          child: Icon(Icons.add, color: Colors.white),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Text(
                    'Good Morning,',
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              Text(
                'Monday, July 14',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff999999),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
