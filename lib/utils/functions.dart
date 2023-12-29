import 'dart:io';
import 'package:flashcard/data/category_data.dart';
import 'package:flashcard/models/category.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flashcard/screens/questions.dart';
import 'package:flashcard/models/question.dart';

void addQuestion(Question question) {
  questions.add(question);
}

List<Question> selectCategory(
    List<Question> questions, String category, BuildContext context) {
  final selectedCategory = questions
      .where((question) => question.category.name == category.toLowerCase())
      .toList();
  selectedCategory.shuffle();
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => QuestionsScreen(
        questions: selectedCategory,
      ),
    ),
  );
  return selectedCategory;
}

void showWarning(BuildContext context, String msg) {
  if (Platform.isIOS) {
    showCupertinoDialog(
      context: (context),
      builder: (context) => CupertinoAlertDialog(
        content: Text(msg),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Okay'),
          )
        ],
      ),
    );
  }
}

CATEGORIES selectedCategory = CATEGORIES.history;
