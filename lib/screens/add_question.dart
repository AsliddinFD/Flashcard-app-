import 'package:flashcard/models/question.dart';
import 'package:flutter/material.dart';
import 'package:flashcard/models/category.dart';
import 'package:flashcard/utils/functions.dart';
import 'package:flashcard/widgets/dropdown.dart';

class AddQuestion extends StatefulWidget {
  const AddQuestion({
    super.key,
    required this.addQuestion,
  });

  final void Function(Question question) addQuestion;

  @override
  State<AddQuestion> createState() {
    return _AddQuestionState();
  }
}

class _AddQuestionState extends State<AddQuestion> {
  final questionController = TextEditingController();
  final answerController = TextEditingController();
  
  void _addQuestion() {
    if (questionController.text.trim().isEmpty ||
        answerController.text.trim().isEmpty) {
      showWarning(context,
          'Please make sure that you have filled both of the textfields');
    } else {
      print(selectedCategory);
      final newQuestion = Question(
        question: questionController.text,
        answer: answerController.text,
        category: selectedCategory,
      );
      widget.addQuestion(
        newQuestion,
      );
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add questions'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                controller: questionController,
                decoration: InputDecoration(
                  hintText: 'Enter a question',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(
                      color: Colors.blue,
                      width: 2.0,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: answerController,
                decoration: InputDecoration(
                  hintText: 'Enter an answer',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(
                      color: Colors.blue,
                      width: 2.0,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const Row(
                children: [
                  Text(
                    'Select a subject: ',
                    style: TextStyle(fontSize: 15),
                  ),
                  Dropdown(),
                ],
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: _addQuestion,
                style: ElevatedButton.styleFrom(
                  backgroundColor: MediaQuery.of(context).platformBrightness ==
                          Brightness.light
                      ? Colors.white
                      : Colors.black,
                  side: const BorderSide(color: Colors.black),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text(
                  'Add',
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
