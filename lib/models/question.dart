import 'package:flashcard/models/category.dart';

class Question {
  Question({
    required this.question,
    required this.answer,
    required this.category,
  });

  final String question;
  final String answer;
  final CATEGORIES category;
}
