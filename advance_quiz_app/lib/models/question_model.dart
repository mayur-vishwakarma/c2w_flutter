class QuestionModel {
  final String question;
  final List options;
  final int correctAnswerIndex;
  final String exp;

  QuestionModel(
      {required this.question,
      required this.options,
      required this.correctAnswerIndex,
      required this.exp});
}
