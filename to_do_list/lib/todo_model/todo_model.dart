class ToDoModel {
  int? id;
  String title;
  String description;
  String date;
  bool done;

  ToDoModel({
    this.id,
    required this.title,
    required this.description,
    required this.date,
    this.done = false
  });

  factory ToDoModel.fromJson(Map<String, dynamic> json) => ToDoModel(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      date: json['date']);

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'description': description,
        'date': date,
      };
}
