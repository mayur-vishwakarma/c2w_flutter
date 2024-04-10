class ToDoModel {
  int? id;
  String title;
  String description;
  String date;
  bool? done;

  ToDoModel(
      {this.id,
      required this.title,
      required this.description,
      required this.date,
      this.done = false});

  Map<String, dynamic> toJson() => {
        'title': title,
        'description': description,
        'date': date,
      };

  @override
  String toString() {
    return "{id:$id, title:$title, desc: $description, date:$date, done:$done}";
  }
}
