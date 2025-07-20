class QuizQuestions {
  const QuizQuestions(this.text, this.answer);
  final String text;
  final List<String> answer;

  List<String> getSuffleAnswers() {
    // List.of(answer).shuffle(); // Shuffle methode dont have any return type

    final shuffledList = List.of(answer);
    shuffledList.shuffle();
    return shuffledList;
  }
}
