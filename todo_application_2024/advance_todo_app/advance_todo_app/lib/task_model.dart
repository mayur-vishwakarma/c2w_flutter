class Task {
  int? taskId;
  String title;
  String description;
  String date;
  int ischecked;
  Task(
      {this.taskId,
      required this.title,
      required this.description,
      required this.date,
      this.ischecked = 0});

  Map<String, dynamic> tomap() {
    return {
      'taskId': taskId,
      'title': title,
      'description': description,
      'date': date,
      'ischecked': 0,
    };
  }

  factory Task.fromMap(Map<String, dynamic> map) {
    return Task(
      taskId: map['taskId'],
      title: map['title'],
      description: map['description'],
      date: map['date'],
      ischecked: map['ischecked'],
    );
  }
}
