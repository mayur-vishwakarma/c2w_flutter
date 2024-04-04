class Player {
  String name;
  int jerNo;
  int runs;
  double avg;

  Player(
      {required this.name,
      required this.jerNo,
      required this.runs,
      required this.avg});

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'jerNo': jerNo,
      'runs': runs,
      'avg': avg,
    };
  }
}
