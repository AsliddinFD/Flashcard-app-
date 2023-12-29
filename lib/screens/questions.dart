import 'package:carousel_slider/carousel_slider.dart';
import 'package:flashcard/data/category_data.dart';
import 'package:flashcard/models/question.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({
    super.key,
    required this.questions,
  });
  final List<Question> questions;

  @override
  State<QuestionsScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionsScreen> {
  int _currentIndex = 0;
  final _carouselController = CarouselController();

  void deleteCard(Question question) {
    setState(() {
      questions.removeAt(questions.indexOf(question));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FlashCards'),
      ),
      body: widget.questions.isEmpty
          ? const Center(
              child: Text('You have not add any questions yet'),
            )
          : ListView(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: CarouselSlider.builder(
                      carouselController: _carouselController,
                      itemCount: widget.questions.length,
                      itemBuilder: (context, index1, index2) => Dismissible(
                        key: ValueKey(questions[index1]),
                        onDismissed: (direction) {
                          
                          deleteCard(widget.questions[index1]);
                        },
                        child: FlipCard(
                          front: Container(
                            width: double.maxFinite,
                            height: double.maxFinite,
                            decoration: BoxDecoration(
                              color: const Color(0xFFF5F5DC),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Center(
                              child: Text(
                                widget.questions[index1].question,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  fontSize: 30,
                                ),
                              ),
                            ),
                          ),
                          back: Container(
                            width: double.maxFinite,
                            height: double.maxFinite,
                            decoration: BoxDecoration(
                              color: const Color(0xFFF5F5DC),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Center(
                              child: Text(
                                widget.questions[index1].answer,
                                textAlign: TextAlign.center,
                                style: const TextStyle(fontSize: 30),
                              ),
                            ),
                          ),
                        ),
                      ),
                      options: CarouselOptions(
                        initialPage: 0,
                        onPageChanged: (index, reason) {
                          setState(() {
                            _currentIndex = index;
                          });
                        },
                        height: 200.0,
                        enlargeCenterPage: true,
                        autoPlay: false,
                        aspectRatio: 16 / 9,
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enableInfiniteScroll: false,
                        autoPlayAnimationDuration:
                            const Duration(milliseconds: 800),
                        viewportFraction: 0.8,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        _carouselController.previousPage();
                      },
                      icon: const Icon(
                        CupertinoIcons.arrow_left_square,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        _carouselController.nextPage();
                      },
                      icon: const Icon(
                        CupertinoIcons.arrow_right_square,
                      ),
                    ),
                  ],
                ),
              ],
            ),
    );
  }
}
