import 'package:flutter/material.dart';

import '../models/taskModel.dart';
import '../widgets/add_task_bottom_sheet.dart';
import '../widgets/task_item.dart';

class TasksListView extends StatefulWidget {
  const TasksListView({super.key});

  @override
  State<TasksListView> createState() => _TasksListViewState();
}

class _TasksListViewState extends State<TasksListView> {
  List<TaskModel> tasks = [
    TaskModel(text: "Design New UI For Dashboard",isComplete: true),
    TaskModel(text: "Design New UI For Dashboard",isComplete: false),
    TaskModel(text: "Design New UI For Dashboard",isComplete: true),
    TaskModel(text: "Design New UI For Dashboard",isComplete: false),
  ];
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
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                    height: 300,
                    width: double.infinity,
                    padding:  EdgeInsets.all(16),

                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow:  [
                        BoxShadow(
                          offset: Offset(0, 4),
                          blurRadius: 15,
                          spreadRadius: 0,
                          color: Color.fromARGB(8, 0, 0, 0),
                        ),
                      ],
                    ),
                    child:Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Text("Tasks",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                              color: Colors.black
                          ),),

                        Expanded(
                          child: ListView.builder(
                              itemCount: tasks.length,

                              itemBuilder:(context,i){
                                return TaskItem(text: tasks[i].text,
                                    isComplete: tasks[i].isComplete);

                              }
                          ),
                        ),
                      ],
                    )


                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
