import 'package:flutter/material.dart';
import 'package:to_do_list_app/views/all_tasks_list.dart';
import 'package:to_do_list_app/views/completed_tasks_list.dart';
import 'package:to_do_list_app/models/task.dart';
import '../widgets/add_task_bottom_sheet.dart';

int completedTasksCounter = 0; //? The counter of Completed Tasks

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //* list of class Task
  List<Task> tasks = [
    Task(
      taskTitle: 'Finish To Do App before the deadline',
      taskDate: DateTime(2025, 10, 25),
      priority: 'high',
      tags: ['Flutter', 'Dev Arena'],
    ),
    Task(
      taskTitle: 'Finish DBMS 4 lectures',
      taskDate: DateTime(2025, 11, 6),
      priority: 'Low',
      tags: ['FCI'],
    ),
    Task(
      taskTitle: 'Study Flutter & Dart for the Competition',
      taskDate: DateTime(2025, 10, 25),
      priority: 'Medium',
      tags: ['Flutter', 'Dev Arena'],
    ),
  ];

  int _currentIndex = 0; //? this is the index in bottom navigation bar
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:
          _currentIndex ==
              0 //* only show in AllTasksView
          //* Floating Action Button
          ? FloatingActionButton(
              backgroundColor: Color(0xff2B7FFF),
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  builder: (context) => AddTaskBottomSheet(
                    //? This is Custom Bottom sheet
                    //* This is the function to setState in main page not in bottom sheet
                    onTaskAdded: (task) {
                      setState(() {
                        tasks.add(task);
                      });
                    },
                  ),
                );
              },
              child: const Icon(Icons.add, color: Colors.white),
            )
          : null,

      body: _currentIndex == 0
          ? AllTasksList(tasks: tasks, completeTaskCounter: count)
          : CompletedTasksList(tasks: tasks, completeTaskCounter: count),
      bottomNavigationBar: Theme(
        data: ThemeData(
          splashColor: Colors.transparent, //* Remove splash color
          highlightColor:
              Colors.transparent, //* Remove HighLight when we click on buttons
        ),
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
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
              icon: ImageIcon(AssetImage('assets/images/homeIcon.png')),
              //* ImageIcon allow us to change the image color
            ),
            BottomNavigationBarItem(
              label: 'Completed',
              icon: ImageIcon(AssetImage('assets/images/completeIcon.png')),
            ),
          ],
        ),
      ),
    );
  }
}
