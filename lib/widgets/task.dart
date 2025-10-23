class Task {
  String taskTitle;
  DateTime? taskDate;
  String priority;
  List<String> tags;
  Task({
    required this.taskTitle,
    required this.taskDate,
    required this.priority,
    required this.tags,
  });
}

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
