class Task {
  int? taskId;
  String title;
  String description;
  String date;
  bool ischecked;

  Task(
      {this.taskId,
      required this.title,
      required this.description,
      required this.date,
      this.ischecked = false});

  Map<String, dynamic> tomap() {
    return {
      'id': taskId,
      'title': title,
      'decscription': description,
      'date': date,
      'ischecked': false,
    };
  }

  factory Task.fromMap(Map<String, dynamic> map) {
    return Task(
      taskId: map['id'],
      title: map['title'],
      description: map['decscription'],
      date: map['date'],
      ischecked: map['ischecked'],
    );
  }
}
