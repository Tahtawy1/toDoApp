import 'package:flutter/material.dart';
import 'package:to_do_list_app/views/home_page.dart';
import 'package:to_do_list_app/widgets/task.dart';

// ignore: must_be_immutable
class AllTasksList extends StatefulWidget {
  AllTasksList({super.key, required this.completeTaskCounter});
  int completeTaskCounter;
  @override
  State<AllTasksList> createState() => _AllTasksListState();
}

class _AllTasksListState extends State<AllTasksList> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Text(
                  'Good Morning, Taha',
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
              value: widget.completeTaskCounter / tasks.length,
              borderRadius: BorderRadius.circular(6),
              backgroundColor: Color(0xffE2E8F0),
              color: Color(0xff2B7FFF),
              minHeight: 8,
            ),
            SizedBox(height: 8),
            Text(
              '${widget.completeTaskCounter}/${tasks.length} Tasks Completed',
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
                          return Row(
                            children: [
                              Checkbox(
                                activeColor: Color(0xff007AFF),
                                value: tasks[i].isComplete,
                                onChanged: (val) {
                                  setState(() {
                                    tasks[i].isComplete = !tasks[i].isComplete;
                                    if (tasks[i].isComplete) {
                                      widget.completeTaskCounter++;
                                      taha = widget.completeTaskCounter;
                                    } else {
                                      widget.completeTaskCounter--;
                                      taha = widget.completeTaskCounter;
                                    }
                                  });
                                },
                              ),
                              SizedBox(width: 5),
                              Expanded(
                                child: Text(
                                  tasks[i].taskTitle,
                                  style: TextStyle(
                                    decoration: tasks[i].isComplete
                                        ? TextDecoration.lineThrough
                                        : TextDecoration.none,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black87,
                                  ),
                                ),
                              ),
                            ],
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
    );
  }
}
