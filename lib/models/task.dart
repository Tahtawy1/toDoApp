class Task {
  String taskTitle;
  DateTime? taskDate;
  String priority;
  List<String> tags;
  bool isComplete;
  Task({
    required this.taskTitle,
    required this.taskDate,
    required this.priority,
    required this.tags,
    this.isComplete = false,
  });
}

List<Task> completedTasks = [];
