import 'package:flutter/material.dart';
import '../models/taskModel.dart';
import '../widgets/add_task_bottom_sheet.dart';
import '../widgets/task_item.dart';

import '../models/taskModel.dart';

class TasksListView extends StatefulWidget {
  const TasksListView({super.key});

  @override
  State<TasksListView> createState() => _TasksListViewState();
}

class _TasksListViewState extends State<TasksListView> {
  List<TaskModel> tasks = [
    TaskModel(text: "Design New UI For Dashboard", isComplete: true),
    TaskModel(text: "Design New UI For Dashboard", isComplete: false),
    TaskModel(text: "Design New UI For Dashboard", isComplete: true),
    TaskModel(text: "Design New UI For Dashboard", isComplete: false),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: GestureDetector(
        onTap: () => showModalBottomSheet(
          isScrollControlled: true,
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
                    'Good Morning,\nEng. Nada',
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              Text(
                'Sunday, October 24',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff999999),
                ),
              ),
              SizedBox(height: 24),
              Text(
                'My Day Progress',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 8),
              LinearProgressIndicator(
                value: 0.7,
                borderRadius: BorderRadius.circular(6),
                backgroundColor: Color(0xffE2E8F0),
                color: Color(0xff2B7FFF),
                minHeight: 8,
              ),
              SizedBox(height: 8),
              Text(
                '6/10 Tasks Completed',
                style: TextStyle(color: Color(0xff90A1B9)),
              ),
              SizedBox(height: 24),
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(top: 16, right: 16, left: 16),
                  decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: const Color.fromARGB(25, 189, 189, 189),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(22, 0, 0, 0),
                        blurRadius: 15,
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Tasks',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 12),
                      Expanded(
                        child: ListView.builder(
                          itemCount: tasks.length,

                          itemBuilder: (context, i) {
                            return TaskItem(
                              text: tasks[i].text,
                              isComplete: tasks[i].isComplete,
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w500),
        selectedLabelStyle: TextStyle(
          fontWeight: FontWeight.w500,
          color: Color(0xff2B7FFF),
        ),
        selectedItemColor: Color(0xff2B7FFF),
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Image.asset('assets/images/homeIcon.png'),
          ),
          BottomNavigationBarItem(
            label: 'Completed',
            icon: Image.asset('assets/images/completeIcon.png'),
          ),
        ],
      ),
    );
  }
}
