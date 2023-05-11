class Question{
  final String question;
  final List<String> answers;

  const Question(this.question, this.answers);

  List<String> getShuffledAnswers(){
    final shuffledAnswers = List.of(answers);
    shuffledAnswers.shuffle();
    return shuffledAnswers;
  }
}