import 'package:flutter/material.dart';
import 'package:to_do_list_app/views/all_tasks_list.dart';
import 'package:to_do_list_app/views/completed_tasks_list.dart';
import '../widgets/add_task_bottom_sheet.dart';

int taha = 0;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final List<Widget> pages = [
    AllTasksList(completeTaskCounter: 0),
    CompletedTasksList(completeTaskCounter: 0),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //* show bottom sheet
      floatingActionButton: _currentIndex == 0
          ? GestureDetector(
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
            )
          : null,
      body: pages[_currentIndex],
      bottomNavigationBar: Theme(
        data: ThemeData(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
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
